.class LaJ/l;
.super Lat/a;


# instance fields
.field final synthetic a:LaJ/k;

.field private b:Z

.field private final c:Ljava/util/Vector;


# direct methods
.method public constructor <init>(LaJ/k;)V
    .registers 3

    iput-object p1, p0, LaJ/l;->a:LaJ/k;

    invoke-direct {p0}, Lat/a;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LaJ/l;->c:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, LaJ/l;->b:Z

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x24

    return v0
.end method

.method public declared-synchronized a(LaJ/n;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, LaJ/l;->b:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Adding tiles to closed request!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    :try_start_10
    iget-object v0, p0, LaJ/l;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_d

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    :goto_19
    monitor-exit p0

    return-void

    :cond_1b
    :try_start_1b
    iget-object v0, p0, LaJ/l;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_d

    goto :goto_19
.end method

.method public a(Lam/b;)V
    .registers 10

    const/16 v7, 0xd

    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Lam/b;->l(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_a
    if-ltz v1, :cond_32

    invoke-virtual {p1, v6, v1}, Lam/b;->e(II)Lam/b;

    move-result-object v2

    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7}, Lam/b;->l(I)I

    move-result v0

    new-array v4, v0, [Lam/b;

    add-int/lit8 v0, v0, -0x1

    :goto_1e
    if-ltz v0, :cond_29

    invoke-virtual {v2, v7, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v5

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    :cond_29
    iget-object v0, p0, LaJ/l;->a:LaJ/k;

    invoke-virtual {v0, v3, v4}, LaJ/k;->a(Ljava/lang/String;[Lam/b;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_a

    :cond_32
    return-void
.end method

.method public a(Lam/b;ZI)V
    .registers 12

    const/4 v1, 0x1

    const/4 v5, 0x3

    const/4 v7, 0x2

    invoke-virtual {p1, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lam/b;->d(I)I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v7}, Lam/b;->d(I)I

    move-result v2

    invoke-virtual {v0, v5}, Lam/b;->d(I)I

    move-result v3

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lam/b;->d(I)I

    move-result v0

    invoke-static {v0}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, LaJ/P;->a(BIILaJ/Y;)LaJ/P;

    move-result-object v1

    invoke-virtual {p1, v5}, Lam/b;->l(I)I

    move-result v0

    new-array v2, v0, [Lcom/google/googlenav/layer/j;

    add-int/lit8 v0, v0, -0x1

    :goto_29
    if-ltz v0, :cond_39

    new-instance v3, Lcom/google/googlenav/layer/j;

    invoke-virtual {p1, v5, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/googlenav/layer/j;-><init>(Lam/b;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_29

    :cond_39
    iget-object v0, p0, LaJ/l;->a:LaJ/k;

    invoke-static {v0}, LaJ/k;->b(LaJ/k;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/n;

    if-nez v0, :cond_8c

    new-instance v0, LaJ/n;

    invoke-direct {v0, v1}, LaJ/n;-><init>(LaJ/P;)V

    :cond_4c
    :goto_4c
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v3

    invoke-virtual {v3}, Laf/b;->v()Laf/a;

    move-result-object v3

    invoke-interface {v3}, Laf/a;->c()J

    move-result-wide v3

    int-to-long v5, p3

    add-long/2addr v3, v5

    invoke-virtual {v0}, LaJ/n;->e()Z

    move-result v5

    if-eqz v5, :cond_62

    if-eqz p2, :cond_9a

    :cond_62
    invoke-virtual {v0, v2, v3, v4}, LaJ/n;->a([Lcom/google/googlenav/layer/j;J)V

    :goto_65
    invoke-virtual {p1, v7}, Lam/b;->k(I)Z

    move-result v2

    if-eqz v2, :cond_72

    invoke-virtual {p1, v7}, Lam/b;->c(I)[B

    move-result-object v2

    invoke-virtual {v0, v2, v3, v4}, LaJ/n;->a([BJ)V

    :cond_72
    monitor-enter p0

    :try_start_73
    iget-object v2, p0, LaJ/l;->a:LaJ/k;

    invoke-static {v2}, LaJ/k;->c(LaJ/k;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LaJ/l;->a:LaJ/k;

    invoke-static {v0}, LaJ/k;->b(LaJ/k;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_86
    .catchall {:try_start_73 .. :try_end_86} :catchall_9e

    iget-object v0, p0, LaJ/l;->a:LaJ/k;

    invoke-virtual {v0}, LaJ/k;->c()V

    return-void

    :cond_8c
    invoke-virtual {v0}, LaJ/n;->e()Z

    move-result v3

    if-eqz v3, :cond_4c

    if-eqz p2, :cond_4c

    new-instance v0, LaJ/n;

    invoke-direct {v0, v1}, LaJ/n;-><init>(LaJ/P;)V

    goto :goto_4c

    :cond_9a
    invoke-virtual {v0, v2, v3, v4}, LaJ/n;->b([Lcom/google/googlenav/layer/j;J)V

    goto :goto_65

    :catchall_9e
    move-exception v0

    :try_start_9f
    monitor-exit p0
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_9e

    throw v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 12

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v3, 0x1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, p0, LaJ/l;->b:Z

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_58

    new-instance v4, Lam/b;

    sget-object v0, LbD/da;->i:Lam/e;

    invoke-direct {v4, v0}, Lam/b;-><init>(Lam/e;)V

    const/16 v0, 0x100

    invoke-virtual {v4, v3, v0}, Lam/b;->h(II)V

    const/4 v0, 0x0

    iget-object v1, p0, LaJ/l;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v5

    move v1, v0

    move v2, v3

    :goto_1d
    if-ge v1, v5, :cond_5b

    iget-object v0, p0, LaJ/l;->c:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/n;

    invoke-virtual {v0}, LaJ/n;->c()LaJ/P;

    move-result-object v0

    invoke-virtual {v0}, LaJ/P;->e()LaJ/Y;

    move-result-object v2

    invoke-virtual {v2}, LaJ/Y;->a()I

    move-result v2

    new-instance v6, Lam/b;

    sget-object v7, LbD/gy;->i:Lam/e;

    invoke-direct {v6, v7}, Lam/b;-><init>(Lam/e;)V

    const/16 v7, 0x8

    invoke-virtual {v6, v3, v7}, Lam/b;->h(II)V

    invoke-virtual {v0}, LaJ/P;->c()I

    move-result v7

    invoke-virtual {v6, v9, v7}, Lam/b;->h(II)V

    invoke-virtual {v0}, LaJ/P;->d()I

    move-result v0

    invoke-virtual {v6, v8, v0}, Lam/b;->h(II)V

    const/4 v0, 0x4

    invoke-virtual {v6, v0, v2}, Lam/b;->h(II)V

    invoke-virtual {v4, v8, v6}, Lam/b;->a(ILam/b;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1d

    :catchall_58
    move-exception v0

    :try_start_59
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v0

    :cond_5b
    iget-object v0, p0, LaJ/l;->a:LaJ/k;

    invoke-static {v0}, LaJ/k;->a(LaJ/k;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_68
    if-ltz v1, :cond_ab

    iget-object v0, p0, LaJ/l;->a:LaJ/k;

    invoke-static {v0}, LaJ/k;->a(LaJ/k;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/m;

    invoke-interface {v0}, LaJ/m;->b()Lcom/google/googlenav/layer/m;

    move-result-object v3

    new-instance v5, Lam/b;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lam/b;-><init>(Lam/e;)V

    const/16 v0, 0x15

    invoke-virtual {v3}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lam/b;->b(ILjava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/googlenav/layer/m;->e()[Lam/b;

    move-result-object v6

    if-eqz v6, :cond_9e

    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    :goto_92
    if-ltz v0, :cond_9e

    const/16 v7, 0x16

    aget-object v8, v6, v0

    invoke-virtual {v5, v7, v8}, Lam/b;->a(ILam/b;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_92

    :cond_9e
    invoke-virtual {v3, v2}, Lcom/google/googlenav/layer/m;->b(I)Z

    move-result v0

    if-eqz v0, :cond_a7

    invoke-virtual {v4, v9, v5}, Lam/b;->a(ILam/b;)V

    :cond_a7
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_68

    :cond_ab
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v4, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 9

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    invoke-static {p1}, Lam/g;->a(Ljava/io/DataInput;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v0, Lam/b;

    invoke-direct {v0, v6}, Lam/b;-><init>(Lam/e;)V

    sget-object v2, LbD/da;->k:Lam/e;

    invoke-static {v2, v1, v0}, Lam/g;->a(Lam/e;Ljava/io/InputStream;Lam/b;)I

    invoke-virtual {p0, v0}, LaJ/l;->a(Lam/b;)V

    const/4 v0, 0x0

    :cond_15
    new-instance v2, Lam/b;

    invoke-direct {v2, v6}, Lam/b;-><init>(Lam/e;)V

    sget-object v3, LbD/da;->k:Lam/e;

    invoke-static {v3, v1, v2}, Lam/g;->a(Lam/e;Ljava/io/InputStream;Lam/b;)I

    move-result v3

    if-eq v3, v4, :cond_27

    invoke-virtual {p0, v2, v5, v0}, LaJ/l;->a(Lam/b;ZI)V

    add-int/lit8 v0, v0, 0x1

    :cond_27
    if-ne v3, v4, :cond_15

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return v5
.end method
