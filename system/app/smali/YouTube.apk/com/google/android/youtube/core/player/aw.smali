.class final Lcom/google/android/youtube/core/player/aw;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/aq;

.field private b:Landroid/os/Handler;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/core/player/aq;)V
    .registers 3
    .parameter

    .prologue
    .line 559
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/player/aw;-><init>(Lcom/google/android/youtube/core/player/aq;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/core/player/aq;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 559
    iput-object p1, p0, Lcom/google/android/youtube/core/player/aw;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 583
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aw;->b:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 584
    return-void
.end method

.method public final a(I)V
    .registers 6
    .parameter

    .prologue
    .line 591
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aw;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/aw;->b:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 592
    return-void
.end method

.method public final a(Landroid/media/MediaPlayer;Landroid/net/Uri;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 578
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v3

    .line 579
    iget-object v1, p0, Lcom/google/android/youtube/core/player/aw;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/aw;->b:Landroid/os/Handler;

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 580
    return-void
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 587
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aw;->b:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 588
    return-void
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 595
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aw;->b:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 596
    return-void
.end method

.method public final declared-synchronized d()V
    .registers 3

    .prologue
    .line 599
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aw;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 600
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aw;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/aq;->d(Lcom/google/android/youtube/core/player/aq;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 601
    monitor-exit p0

    return-void

    .line 599
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()V
    .registers 3

    .prologue
    .line 604
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aw;->b:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 605
    return-void
.end method

.method public final declared-synchronized handleMessage(Landroid/os/Message;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 608
    monitor-enter p0

    :try_start_3
    iget v1, p1, Landroid/os/Message;->what:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_51

    packed-switch v1, :pswitch_data_54

    .line 631
    :goto_8
    monitor-exit p0

    return v0

    .line 610
    :pswitch_a
    :try_start_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 611
    iget-object v3, p0, Lcom/google/android/youtube/core/player/aw;->a:Lcom/google/android/youtube/core/player/aq;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Landroid/media/MediaPlayer;

    const/4 v4, 0x1

    aget-object v0, v0, v4

    check-cast v0, Landroid/net/Uri;

    invoke-static {v3, v1, v0}, Lcom/google/android/youtube/core/player/aq;->a(Lcom/google/android/youtube/core/player/aq;Landroid/media/MediaPlayer;Landroid/net/Uri;)V

    move v0, v2

    .line 612
    goto :goto_8

    .line 614
    :pswitch_1f
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aw;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/aq;->e(Lcom/google/android/youtube/core/player/aq;)V

    move v0, v2

    .line 615
    goto :goto_8

    .line 617
    :pswitch_26
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aw;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/aq;->f(Lcom/google/android/youtube/core/player/aq;)V

    move v0, v2

    .line 618
    goto :goto_8

    .line 620
    :pswitch_2d
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aw;->a:Lcom/google/android/youtube/core/player/aq;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/aq;->b(Lcom/google/android/youtube/core/player/aq;I)V

    move v0, v2

    .line 621
    goto :goto_8

    .line 623
    :pswitch_36
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aw;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/aq;->d(Lcom/google/android/youtube/core/player/aq;)V

    move v0, v2

    .line 624
    goto :goto_8

    .line 626
    :pswitch_3d
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aw;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/aq;->d(Lcom/google/android/youtube/core/player/aq;)V

    .line 627
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 628
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aw;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_4f
    .catchall {:try_start_a .. :try_end_4f} :catchall_51

    move v0, v2

    .line 629
    goto :goto_8

    .line 608
    :catchall_51
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_a
        :pswitch_1f
        :pswitch_26
        :pswitch_2d
        :pswitch_36
        :pswitch_3d
    .end packed-switch
.end method

.method public final run()V
    .registers 2

    .prologue
    .line 572
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 573
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/aw;->b:Landroid/os/Handler;

    .line 574
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 575
    return-void
.end method
