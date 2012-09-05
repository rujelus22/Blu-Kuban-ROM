.class final Lbv/i;
.super LY/d;


# instance fields
.field final synthetic a:Lbv/g;


# direct methods
.method constructor <init>(Lbv/g;LY/c;)V
    .registers 3

    iput-object p1, p0, Lbv/i;->a:Lbv/g;

    invoke-direct {p0, p2}, LY/d;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    invoke-static {}, Lbv/g;->j()Lcom/google/gmm/debug/c;

    move-result-object v0

    const-string v1, "Running delayed flush"

    invoke-virtual {v0, v1}, Lcom/google/gmm/debug/c;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lbv/i;->a:Lbv/g;

    invoke-static {v0}, Lbv/g;->a(Lbv/g;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_10
    iget-object v0, p0, Lbv/i;->a:Lbv/g;

    invoke-virtual {v0}, Lbv/g;->i()V

    monitor-exit v1

    return-void

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw v0
.end method
