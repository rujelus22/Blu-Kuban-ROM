.class Lcom/google/googlenav/Z;
.super Lat/a;


# instance fields
.field final synthetic a:Lcom/google/googlenav/Y;

.field private b:Lcom/google/googlenav/bQ;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/Y;Lcom/google/googlenav/bQ;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/Z;->a:Lcom/google/googlenav/Y;

    invoke-direct {p0}, Lat/a;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/Z;->b:Lcom/google/googlenav/bQ;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x70

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 5

    new-instance v0, Lam/b;

    sget-object v1, LbD/gH;->a:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlenav/Z;->a:Lcom/google/googlenav/Y;

    iget-object v2, v2, Lcom/google/googlenav/Y;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILjava/lang/String;)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 4

    sget-object v0, LbD/gH;->c:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/Z;->a:Lcom/google/googlenav/Y;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/Y;->a(Lam/b;)V

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized b()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/Z;->b:Lcom/google/googlenav/bQ;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/googlenav/Z;->b:Lcom/google/googlenav/bQ;

    invoke-interface {v0}, Lcom/google/googlenav/bQ;->a()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
