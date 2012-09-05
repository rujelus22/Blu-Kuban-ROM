.class Ld/aD;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Ld/aC;


# direct methods
.method constructor <init>(Ld/aC;)V
    .registers 2

    iput-object p1, p0, Ld/aD;->a:Ld/aC;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    iget-object v1, p0, Ld/aD;->a:Ld/aC;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Ld/aD;->a:Ld/aC;

    invoke-virtual {v0}, Ld/aC;->g()Z

    move-result v0

    if-eqz v0, :cond_d

    monitor-exit v1

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Ld/aD;->a:Ld/aC;

    invoke-static {v0}, Ld/aC;->a(Ld/aC;)V

    iget-object v0, p0, Ld/aD;->a:Ld/aC;

    invoke-static {v0}, Ld/aC;->b(Ld/aC;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v2, p0, Ld/aD;->a:Ld/aC;

    invoke-static {v2}, Ld/aC;->c(Ld/aC;)Ld/aB;

    move-result-object v2

    invoke-interface {v2, v0}, Ld/aB;->a(Ljava/util/List;)V

    iget-object v2, p0, Ld/aD;->a:Ld/aC;

    invoke-virtual {v2}, Ld/aC;->f()Ld/y;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Ld/y;->a(Ljava/util/List;J)V

    :cond_34
    monitor-exit v1

    goto :goto_c

    :catchall_36
    move-exception v0

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v0
.end method
