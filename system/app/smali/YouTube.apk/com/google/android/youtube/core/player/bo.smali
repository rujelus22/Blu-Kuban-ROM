.class final Lcom/google/android/youtube/core/player/bo;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/bi;

.field private b:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/player/bi;)V
    .registers 2
    .parameter

    .prologue
    .line 608
    iput-object p1, p0, Lcom/google/android/youtube/core/player/bo;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/player/bi;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 608
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/bo;-><init>(Lcom/google/android/youtube/core/player/bi;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 632
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bo;->b:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 633
    return-void
.end method

.method public final a(I)V
    .registers 6
    .parameter

    .prologue
    .line 640
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bo;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/bo;->b:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 641
    return-void
.end method

.method public final a(Landroid/media/MediaPlayer;Landroid/net/Uri;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 627
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v3

    .line 628
    iget-object v1, p0, Lcom/google/android/youtube/core/player/bo;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/bo;->b:Landroid/os/Handler;

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 629
    return-void
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 636
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bo;->b:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 637
    return-void
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 644
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bo;->b:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 645
    return-void
.end method

.method public final declared-synchronized d()V
    .registers 3

    .prologue
    .line 648
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bo;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 649
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bo;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/bi;->d(Lcom/google/android/youtube/core/player/bi;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 650
    monitor-exit p0

    return-void

    .line 648
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()V
    .registers 3

    .prologue
    .line 653
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bo;->b:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 654
    return-void
.end method

.method public final declared-synchronized handleMessage(Landroid/os/Message;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 657
    monitor-enter p0

    :try_start_3
    iget v1, p1, Landroid/os/Message;->what:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_51

    packed-switch v1, :pswitch_data_54

    .line 680
    :goto_8
    monitor-exit p0

    return v0

    .line 659
    :pswitch_a
    :try_start_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 660
    iget-object v3, p0, Lcom/google/android/youtube/core/player/bo;->a:Lcom/google/android/youtube/core/player/bi;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Landroid/media/MediaPlayer;

    const/4 v4, 0x1

    aget-object v0, v0, v4

    check-cast v0, Landroid/net/Uri;

    invoke-static {v3, v1, v0}, Lcom/google/android/youtube/core/player/bi;->a(Lcom/google/android/youtube/core/player/bi;Landroid/media/MediaPlayer;Landroid/net/Uri;)V

    move v0, v2

    .line 661
    goto :goto_8

    .line 663
    :pswitch_1f
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bo;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/bi;->e(Lcom/google/android/youtube/core/player/bi;)V

    move v0, v2

    .line 664
    goto :goto_8

    .line 666
    :pswitch_26
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bo;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/bi;->f(Lcom/google/android/youtube/core/player/bi;)V

    move v0, v2

    .line 667
    goto :goto_8

    .line 669
    :pswitch_2d
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bo;->a:Lcom/google/android/youtube/core/player/bi;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/bi;->b(Lcom/google/android/youtube/core/player/bi;I)V

    move v0, v2

    .line 670
    goto :goto_8

    .line 672
    :pswitch_36
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bo;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/bi;->d(Lcom/google/android/youtube/core/player/bi;)V

    move v0, v2

    .line 673
    goto :goto_8

    .line 675
    :pswitch_3d
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bo;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/bi;->d(Lcom/google/android/youtube/core/player/bi;)V

    .line 676
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 677
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bo;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_4f
    .catchall {:try_start_a .. :try_end_4f} :catchall_51

    move v0, v2

    .line 678
    goto :goto_8

    .line 657
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
    .line 621
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 622
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/bo;->b:Landroid/os/Handler;

    .line 623
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 624
    return-void
.end method
