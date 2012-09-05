.class Lcom/google/googlenav/bO;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/bN;


# direct methods
.method constructor <init>(Lcom/google/googlenav/bN;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/bO;->a:Lcom/google/googlenav/bN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v1, p0, Lcom/google/googlenav/bO;->a:Lcom/google/googlenav/bN;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/bO;->a:Lcom/google/googlenav/bN;

    invoke-static {v2}, Lcom/google/googlenav/bN;->a(Lcom/google/googlenav/bN;)Lcom/google/googlenav/bU;

    move-result-object v2

    if-nez v2, :cond_1c

    iget-object v2, p0, Lcom/google/googlenav/bO;->a:Lcom/google/googlenav/bN;

    new-instance v3, Lcom/google/googlenav/bU;

    iget-object v4, p0, Lcom/google/googlenav/bO;->a:Lcom/google/googlenav/bN;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/googlenav/bU;-><init>(Lcom/google/googlenav/bN;Lcom/google/googlenav/bO;)V

    invoke-static {v2, v3}, Lcom/google/googlenav/bN;->a(Lcom/google/googlenav/bN;Lcom/google/googlenav/bU;)Lcom/google/googlenav/bU;

    :cond_1c
    const/16 v2, 0x54

    const-string v3, "ts"

    const-string v4, "r"

    invoke-static {v2, v3, v4}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/google/googlenav/bO;->a:Lcom/google/googlenav/bN;

    invoke-static {v2}, Lcom/google/googlenav/bN;->a(Lcom/google/googlenav/bN;)Lcom/google/googlenav/bU;

    move-result-object v2

    invoke-virtual {v0, v2}, Lat/h;->c(Lat/g;)V

    monitor-exit v1

    return-void

    :catchall_30
    move-exception v0

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v0
.end method
