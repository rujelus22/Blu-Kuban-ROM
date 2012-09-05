.class Lcom/google/googlenav/ui/I;
.super Lcom/google/googlenav/x;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/D;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/D;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/I;->a:Lcom/google/googlenav/ui/D;

    invoke-direct {p0}, Lcom/google/googlenav/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v1, p0, Lcom/google/googlenav/ui/I;->a:Lcom/google/googlenav/ui/D;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/ui/I;->a:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->B()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/googlenav/ui/I;->a:Lcom/google/googlenav/ui/D;

    invoke-static {v0}, Lcom/google/googlenav/ui/D;->i(Lcom/google/googlenav/ui/D;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/google/googlenav/ui/I;->a:Lcom/google/googlenav/ui/D;

    invoke-static {v0}, Lcom/google/googlenav/ui/D;->g(Lcom/google/googlenav/ui/D;)LaE/h;

    move-result-object v0

    invoke-virtual {v0}, LaE/h;->n()V

    :cond_1c
    monitor-exit v1

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v0
.end method
