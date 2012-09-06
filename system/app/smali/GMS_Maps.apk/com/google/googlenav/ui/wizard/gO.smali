.class Lcom/google/googlenav/ui/wizard/go;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/gj;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/gj;)V
    .registers 2
    .parameter

    .prologue
    .line 1806
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/go;->a:Lcom/google/googlenav/ui/wizard/gj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1810
    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/go;->a:Lcom/google/googlenav/ui/wizard/gj;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gj;->f(Lcom/google/googlenav/ui/wizard/gj;)Lan/h;

    move-result-object v0

    invoke-interface {v0}, Lan/h;->g()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1811
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/go;->a:Lcom/google/googlenav/ui/wizard/gj;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gj;->i(Lcom/google/googlenav/ui/wizard/gj;)Lcom/google/googlenav/bc;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 1813
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/go;->a:Lcom/google/googlenav/ui/wizard/gj;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/go;->a:Lcom/google/googlenav/ui/wizard/gj;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/gj;->f(Lcom/google/googlenav/ui/wizard/gj;)Lan/h;

    move-result-object v1

    invoke-interface {v1}, Lan/h;->m()Lan/s;

    move-result-object v1

    invoke-virtual {v1}, Lan/s;->a()Lat/B;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/gj;->a(Lcom/google/googlenav/ui/wizard/gj;Lat/B;)V
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_3c

    .line 1819
    :cond_27
    :goto_27
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/go;->a:Lcom/google/googlenav/ui/wizard/gj;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gj;->j(Lcom/google/googlenav/ui/wizard/gj;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1820
    :try_start_2e
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/go;->a:Lcom/google/googlenav/ui/wizard/gj;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/wizard/gj;->a(Lcom/google/googlenav/ui/wizard/gj;Z)Z

    .line 1821
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_4c

    .line 1823
    return-void

    .line 1815
    :cond_36
    :try_start_36
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/go;->a:Lcom/google/googlenav/ui/wizard/gj;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gj;->g(Lcom/google/googlenav/ui/wizard/gj;)V
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_3c

    goto :goto_27

    .line 1819
    :catchall_3c
    move-exception v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/go;->a:Lcom/google/googlenav/ui/wizard/gj;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/gj;->j(Lcom/google/googlenav/ui/wizard/gj;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1820
    :try_start_44
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/go;->a:Lcom/google/googlenav/ui/wizard/gj;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/wizard/gj;->a(Lcom/google/googlenav/ui/wizard/gj;Z)Z

    .line 1821
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_4f

    throw v0

    :catchall_4c
    move-exception v0

    :try_start_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v0

    :catchall_4f
    move-exception v0

    :try_start_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v0
.end method
