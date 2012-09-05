.class public Lax/k;
.super Lat/a;

# interfaces
.implements Lcom/google/googlenav/login/i;


# instance fields
.field private volatile a:Lax/j;

.field private final b:Ljava/util/List;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lat/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lax/k;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public B_()V
    .registers 1

    return-void
.end method

.method public C_()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lax/k;->a(Lax/l;)V

    return-void
.end method

.method public E_()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lax/k;->b(Lax/l;)V

    return-void
.end method

.method public F_()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lax/k;->a:Lax/j;

    return-void
.end method

.method public a()I
    .registers 2

    const/16 v0, 0x5f

    return v0
.end method

.method public declared-synchronized a(Lax/l;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lax/k;->a:Lax/j;

    if-nez v0, :cond_a

    invoke-virtual {p0, p1}, Lax/k;->b(Lax/l;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_28

    :cond_8
    :goto_8
    monitor-exit p0

    return-void

    :cond_a
    :try_start_a
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v0

    iget-object v2, p0, Lax/k;->a:Lax/j;

    invoke-virtual {v2}, Lax/j;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_2b

    invoke-virtual {p0, p1}, Lax/k;->b(Lax/l;)V
    :try_end_27
    .catchall {:try_start_a .. :try_end_27} :catchall_28

    goto :goto_8

    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2b
    if-eqz p1, :cond_8

    :try_start_2d
    invoke-interface {p1}, Lax/l;->a()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_28

    goto :goto_8
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 4

    new-instance v0, Lam/b;

    sget-object v1, LbD/bx;->aa:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 6

    const/4 v3, 0x1

    sget-object v0, LbD/bx;->ab:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    if-eqz v1, :cond_15

    new-instance v2, Lax/j;

    invoke-direct {v2, v1}, Lax/j;-><init>(Lam/b;)V

    iput-object v2, p0, Lax/k;->a:Lax/j;

    :cond_15
    invoke-virtual {v0, v3}, Lam/b;->d(I)I

    move-result v1

    if-eqz v1, :cond_2c

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v3, v1}, Lam/g;->c(Lam/b;II)I

    move-result v0

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/login/g;->a(I)V

    :cond_2c
    return v3
.end method

.method public declared-synchronized b()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lax/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/l;

    invoke-interface {v0}, Lax/l;->a()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_7

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lax/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lax/k;->c:Z
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_17

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b(Lax/l;)V
    .registers 3

    monitor-enter p0

    if-eqz p1, :cond_8

    :try_start_3
    iget-object v0, p0, Lax/k;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-boolean v0, p0, Lax/k;->c:Z

    if-nez v0, :cond_16

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lat/h;->c(Lat/g;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lax/k;->c:Z
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    :cond_16
    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public i()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lax/k;->a:Lax/j;

    return-void
.end method

.method public k()Lax/j;
    .registers 2

    iget-object v0, p0, Lax/k;->a:Lax/j;

    return-object v0
.end method
