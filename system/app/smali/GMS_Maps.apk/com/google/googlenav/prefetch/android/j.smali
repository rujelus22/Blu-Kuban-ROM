.class final Lcom/google/googlenav/prefetch/android/j;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/google/googlenav/prefetch/android/PrefetcherService;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/prefetch/android/PrefetcherService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/j;->a:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_42

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/j;->a:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->b()V

    goto :goto_5

    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/googlenav/prefetch/android/h;

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/j;->a:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-static {v1, v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/PrefetcherService;Lcom/google/googlenav/prefetch/android/h;)V

    goto :goto_5

    :pswitch_16
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/j;->a:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->c()V

    goto :goto_5

    :pswitch_1c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/j;->a:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/googlenav/prefetch/android/w;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, LaR/f;

    invoke-static {v2, v1, v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/PrefetcherService;Lcom/google/googlenav/prefetch/android/w;LaR/f;)V

    goto :goto_5

    :pswitch_2e
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/j;->a:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-static {v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/PrefetcherService;)Lcom/google/googlenav/prefetch/android/j;

    move-result-object v0

    const/4 v1, 0x5

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/prefetch/android/j;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_5

    :pswitch_3b
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/j;->a:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->stopSelf()V

    goto :goto_5

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
        :pswitch_16
        :pswitch_1c
        :pswitch_3b
        :pswitch_2e
    .end packed-switch
.end method
