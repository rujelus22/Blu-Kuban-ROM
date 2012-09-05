.class Lcom/google/googlenav/bU;
.super Lat/a;


# instance fields
.field final synthetic a:Lcom/google/googlenav/bN;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/bN;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/bU;->a:Lcom/google/googlenav/bN;

    invoke-direct {p0}, Lat/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/bN;Lcom/google/googlenav/bO;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/bU;-><init>(Lcom/google/googlenav/bN;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x70

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 6

    const/4 v3, 0x1

    new-instance v0, Lam/b;

    sget-object v1, LbD/gH;->a:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlenav/bU;->a:Lcom/google/googlenav/bN;

    iget-object v2, v2, Lcom/google/googlenav/bN;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILjava/lang/String;)V

    invoke-virtual {v0, v3, v3}, Lam/b;->h(II)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 4

    sget-object v0, LbD/gH;->c:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/bU;->a:Lcom/google/googlenav/bN;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/bN;->a(Lam/b;)V

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized b()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/bU;->a:Lcom/google/googlenav/bN;

    invoke-static {v0}, Lcom/google/googlenav/bN;->b(Lcom/google/googlenav/bN;)Lcom/google/googlenav/bQ;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/googlenav/bU;->a:Lcom/google/googlenav/bN;

    invoke-static {v0}, Lcom/google/googlenav/bN;->b(Lcom/google/googlenav/bN;)Lcom/google/googlenav/bQ;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/bQ;->a()V

    :cond_12
    iget-object v0, p0, Lcom/google/googlenav/bU;->a:Lcom/google/googlenav/bN;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/bN;->a(Lcom/google/googlenav/bN;Z)Z
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
