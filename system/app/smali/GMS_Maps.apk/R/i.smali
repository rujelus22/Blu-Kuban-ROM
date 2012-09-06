.class Lr/i;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lr/f;


# direct methods
.method constructor <init>(Lr/f;)V
    .registers 2
    .parameter

    .prologue
    .line 648
    iput-object p1, p0, Lr/i;->a:Lr/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter

    .prologue
    .line 651
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_56

    .line 680
    :goto_5
    return-void

    .line 653
    :pswitch_6
    iget-object v1, p0, Lr/i;->a:Lr/f;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lr/m;

    invoke-static {v1, v0}, Lr/f;->a(Lr/f;Lr/m;)V

    goto :goto_5

    .line 656
    :pswitch_10
    iget-object v0, p0, Lr/i;->a:Lr/f;

    invoke-static {v0}, Lr/f;->a(Lr/f;)V

    goto :goto_5

    .line 659
    :pswitch_16
    iget-object v1, p0, Lr/i;->a:Lr/f;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lr/j;

    invoke-static {v1, v0}, Lr/f;->a(Lr/f;Lr/j;)V

    goto :goto_5

    .line 662
    :pswitch_20
    iget-object v0, p0, Lr/i;->a:Lr/f;

    invoke-static {v0}, Lr/f;->b(Lr/f;)V

    goto :goto_5

    .line 665
    :pswitch_26
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    monitor-enter v1

    .line 666
    :try_start_29
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 667
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_35

    .line 668
    iget-object v0, p0, Lr/i;->a:Lr/f;

    invoke-static {v0}, Lr/f;->c(Lr/f;)V

    goto :goto_5

    .line 667
    :catchall_35
    move-exception v0

    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v0

    .line 672
    :pswitch_38
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 675
    iget-object v3, p0, Lr/i;->a:Lr/f;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ln/an;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lr/e;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lr/aF;

    invoke-static {v3, v1, v2, v0}, Lr/f;->a(Lr/f;Ln/an;Lr/e;Lr/aF;)V

    goto :goto_5

    .line 651
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_6
        :pswitch_10
        :pswitch_16
        :pswitch_20
        :pswitch_26
        :pswitch_38
    .end packed-switch
.end method
