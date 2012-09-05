.class Ld/au;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Ld/as;


# direct methods
.method constructor <init>(Ld/as;)V
    .registers 2

    iput-object p1, p0, Ld/au;->a:Ld/as;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_a0

    :goto_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_9
    iget-object v0, p0, Ld/au;->a:Ld/as;

    invoke-static {v0}, Ld/as;->b(Ld/as;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_10
    iget-object v0, p0, Ld/au;->a:Ld/as;

    invoke-static {v0}, Ld/as;->d(Ld/as;)Ld/K;

    move-result-object v0

    iget-object v1, p0, Ld/au;->a:Ld/as;

    invoke-static {v1}, Ld/as;->c(Ld/as;)LW/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ld/K;->b(LW/a;)Z

    move-result v1

    iget-object v0, p0, Ld/au;->a:Ld/as;

    invoke-static {v0}, Ld/as;->f(Ld/as;)Ld/C;

    move-result-object v0

    iget-object v2, p0, Ld/au;->a:Ld/as;

    invoke-static {v2}, Ld/as;->e(Ld/as;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Ld/C;->a(ZZ)V

    const/4 v0, 0x0

    if-eqz v1, :cond_87

    iget-object v1, p0, Ld/au;->a:Ld/as;

    invoke-static {v1}, Ld/as;->e(Ld/as;)Z

    move-result v1

    if-nez v1, :cond_87

    iget-object v0, p0, Ld/au;->a:Ld/as;

    new-instance v1, Ld/X;

    iget-object v2, p0, Ld/au;->a:Ld/as;

    invoke-static {v2}, Ld/as;->g(Ld/as;)Lm/c;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ld/X;-><init>(Landroid/os/Handler;Lm/c;)V

    invoke-static {v0, v1}, Ld/as;->a(Ld/as;Ld/X;)Ld/X;

    iget-object v0, p0, Ld/au;->a:Ld/as;

    invoke-static {v0}, Ld/as;->l(Ld/as;)Ld/X;

    move-result-object v0

    iget-object v1, p0, Ld/au;->a:Ld/as;

    invoke-static {v1}, Ld/as;->h(Ld/as;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Ld/au;->a:Ld/as;

    invoke-static {v2}, Ld/as;->i(Ld/as;)Ld/w;

    move-result-object v2

    iget-object v3, p0, Ld/au;->a:Ld/as;

    invoke-static {v3}, Ld/as;->j(Ld/as;)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Ld/au;->a:Ld/as;

    invoke-static {v4}, Ld/as;->k(Ld/as;)LW/a;

    move-result-object v4

    iget-object v5, p0, Ld/au;->a:Ld/as;

    invoke-static {v5}, Ld/as;->f(Ld/as;)Ld/C;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Ld/X;->a(Landroid/content/Context;Ld/w;Ljava/lang/Integer;LW/a;Ld/C;)Z

    move-result v0

    if-nez v0, :cond_87

    const-string v1, "RealScanner: Nothing to scan."

    iget-object v2, p0, Ld/au;->a:Ld/as;

    invoke-static {v2}, Ld/as;->f(Ld/as;)Ld/C;

    move-result-object v2

    if-eqz v2, :cond_87

    iget-object v2, p0, Ld/au;->a:Ld/as;

    invoke-static {v2}, Ld/as;->f(Ld/as;)Ld/C;

    move-result-object v2

    invoke-interface {v2, v1}, Ld/C;->a(Ljava/lang/String;)V

    :cond_87
    if-nez v0, :cond_90

    invoke-virtual {p0}, Ld/au;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_90
    monitor-exit v6

    goto/16 :goto_5

    :catchall_93
    move-exception v0

    monitor-exit v6
    :try_end_95
    .catchall {:try_start_10 .. :try_end_95} :catchall_93

    throw v0

    :pswitch_96
    invoke-virtual {p0}, Ld/au;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto/16 :goto_5

    nop

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_96
    .end packed-switch
.end method
