.class final Lcom/google/googlenav/prefetch/android/m;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/prefetch/android/BasePrefetcherService;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 454
    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/m;->a:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    .line 455
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 456
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter

    .prologue
    .line 460
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_6a

    .line 513
    :goto_5
    return-void

    .line 463
    :pswitch_6
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/m;->a:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->e()V

    goto :goto_5

    .line 466
    :pswitch_c
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/m;->a:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    invoke-static {v0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->a(Lcom/google/googlenav/prefetch/android/BasePrefetcherService;)V

    goto :goto_5

    .line 473
    :pswitch_12
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/m;->a:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    invoke-static {v0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->b(Lcom/google/googlenav/prefetch/android/BasePrefetcherService;)V

    goto :goto_5

    .line 477
    :pswitch_18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/googlenav/prefetch/android/k;

    .line 478
    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/m;->a:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    invoke-static {v1, v0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->a(Lcom/google/googlenav/prefetch/android/BasePrefetcherService;Lcom/google/googlenav/prefetch/android/k;)V

    goto :goto_5

    .line 482
    :pswitch_22
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/m;->a:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    invoke-static {v0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->c(Lcom/google/googlenav/prefetch/android/BasePrefetcherService;)V

    goto :goto_5

    .line 487
    :pswitch_28
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 489
    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/m;->a:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/googlenav/prefetch/android/y;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, LaD/h;

    invoke-static {v2, v1, v0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->a(Lcom/google/googlenav/prefetch/android/BasePrefetcherService;Lcom/google/googlenav/prefetch/android/y;LaD/h;)V

    goto :goto_5

    .line 495
    :pswitch_3a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 497
    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/m;->a:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/googlenav/prefetch/android/y;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, LaD/h;

    invoke-static {v2, v1, v0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->b(Lcom/google/googlenav/prefetch/android/BasePrefetcherService;Lcom/google/googlenav/prefetch/android/y;LaD/h;)V

    goto :goto_5

    .line 502
    :pswitch_4c
    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/m;->a:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LaD/c;

    invoke-static {v1, v0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->a(Lcom/google/googlenav/prefetch/android/BasePrefetcherService;LaD/c;)V

    goto :goto_5

    .line 506
    :pswitch_56
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/m;->a:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    invoke-static {v0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->d(Lcom/google/googlenav/prefetch/android/BasePrefetcherService;)Lcom/google/googlenav/prefetch/android/m;

    move-result-object v0

    const/4 v1, 0x6

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/prefetch/android/m;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_5

    .line 510
    :pswitch_63
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/m;->a:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->stopSelf()V

    goto :goto_5

    .line 460
    nop

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_6
        :pswitch_c
        :pswitch_12
        :pswitch_18
        :pswitch_22
        :pswitch_28
        :pswitch_63
        :pswitch_56
        :pswitch_3a
        :pswitch_4c
    .end packed-switch
.end method
