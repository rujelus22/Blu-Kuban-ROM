.class Lx/m;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lx/k;


# direct methods
.method constructor <init>(Lx/k;)V
    .registers 2

    iput-object p1, p0, Lx/m;->a:Lx/k;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_38

    :goto_5
    return-void

    :pswitch_6
    iget-object v1, p0, Lx/m;->a:Lx/k;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lx/r;

    invoke-static {v1, v0}, Lx/k;->a(Lx/k;Lx/r;)V

    goto :goto_5

    :pswitch_10
    iget-object v0, p0, Lx/m;->a:Lx/k;

    invoke-static {v0}, Lx/k;->a(Lx/k;)V

    goto :goto_5

    :pswitch_16
    iget-object v1, p0, Lx/m;->a:Lx/k;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lx/o;

    invoke-static {v1, v0}, Lx/k;->a(Lx/k;Lx/o;)V

    goto :goto_5

    :pswitch_20
    iget-object v0, p0, Lx/m;->a:Lx/k;

    invoke-static {v0}, Lx/k;->b(Lx/k;)V

    goto :goto_5

    :pswitch_26
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_29
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_35

    iget-object v0, p0, Lx/m;->a:Lx/k;

    invoke-static {v0}, Lx/k;->c(Lx/k;)V

    goto :goto_5

    :catchall_35
    move-exception v0

    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v0

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_6
        :pswitch_10
        :pswitch_16
        :pswitch_20
        :pswitch_26
    .end packed-switch
.end method
