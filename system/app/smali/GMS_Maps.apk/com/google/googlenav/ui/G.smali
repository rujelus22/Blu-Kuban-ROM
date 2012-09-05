.class Lcom/google/googlenav/ui/G;
.super Lcom/google/googlenav/x;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/D;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/D;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/G;->a:Lcom/google/googlenav/ui/D;

    invoke-direct {p0}, Lcom/google/googlenav/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v1, p0, Lcom/google/googlenav/ui/G;->a:Lcom/google/googlenav/ui/D;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/ui/G;->a:Lcom/google/googlenav/ui/D;

    invoke-static {v0}, Lcom/google/googlenav/ui/D;->i(Lcom/google/googlenav/ui/D;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/googlenav/ui/G;->a:Lcom/google/googlenav/ui/D;

    invoke-static {v0}, Lcom/google/googlenav/ui/D;->j(Lcom/google/googlenav/ui/D;)Lap/d;

    move-result-object v0

    invoke-virtual {v0}, Lap/d;->g()V

    :cond_14
    monitor-exit v1

    return-void

    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method
