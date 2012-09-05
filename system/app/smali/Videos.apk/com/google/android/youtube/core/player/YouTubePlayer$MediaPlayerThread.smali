.class Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;
.super Ljava/lang/Thread;
.source "YouTubePlayer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/player/YouTubePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaPlayerThread"
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/player/YouTubePlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 539
    iput-object p1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/player/YouTubePlayer;Lcom/google/android/youtube/core/player/YouTubePlayer$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 539
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;-><init>(Lcom/google/android/youtube/core/player/YouTubePlayer;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)Z
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 583
    monitor-enter p0

    :try_start_3
    iget v3, p1, Landroid/os/Message;->what:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_55

    packed-switch v3, :pswitch_data_58

    .line 606
    :goto_8
    monitor-exit p0

    return v2

    .line 585
    :pswitch_a
    :try_start_a
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 586
    .local v1, args:[Ljava/lang/Object;
    iget-object v5, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    check-cast v3, Landroid/net/Uri;

    #calls: Lcom/google/android/youtube/core/player/YouTubePlayer;->blockingPrepare(Landroid/media/MediaPlayer;Landroid/net/Uri;)V
    invoke-static {v5, v2, v3}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$600(Lcom/google/android/youtube/core/player/YouTubePlayer;Landroid/media/MediaPlayer;Landroid/net/Uri;)V

    move v2, v4

    .line 587
    goto :goto_8

    .line 589
    .end local v1           #args:[Ljava/lang/Object;
    :pswitch_23
    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #calls: Lcom/google/android/youtube/core/player/YouTubePlayer;->blockingPlayVideo()V
    invoke-static {v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$700(Lcom/google/android/youtube/core/player/YouTubePlayer;)V

    move v2, v4

    .line 590
    goto :goto_8

    .line 592
    :pswitch_2a
    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #calls: Lcom/google/android/youtube/core/player/YouTubePlayer;->blockingPauseVideo()V
    invoke-static {v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$800(Lcom/google/android/youtube/core/player/YouTubePlayer;)V

    move v2, v4

    .line 593
    goto :goto_8

    .line 595
    :pswitch_31
    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    iget v3, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/google/android/youtube/core/player/YouTubePlayer;->blockingSeekTo(I)V
    invoke-static {v2, v3}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$900(Lcom/google/android/youtube/core/player/YouTubePlayer;I)V

    move v2, v4

    .line 596
    goto :goto_8

    .line 598
    :pswitch_3a
    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #calls: Lcom/google/android/youtube/core/player/YouTubePlayer;->blockingStopVideoInternal()V
    invoke-static {v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1000(Lcom/google/android/youtube/core/player/YouTubePlayer;)V

    move v2, v4

    .line 599
    goto :goto_8

    .line 601
    :pswitch_41
    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #calls: Lcom/google/android/youtube/core/player/YouTubePlayer;->blockingStopVideoInternal()V
    invoke-static {v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1000(Lcom/google/android/youtube/core/player/YouTubePlayer;)V

    .line 602
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 603
    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->handler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_53
    .catchall {:try_start_a .. :try_end_53} :catchall_55

    move v2, v4

    .line 604
    goto :goto_8

    .line 583
    :catchall_55
    move-exception v2

    monitor-exit p0

    throw v2

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_a
        :pswitch_23
        :pswitch_2a
        :pswitch_31
        :pswitch_3a
        :pswitch_41
    .end packed-switch
.end method

.method public pauseVideo()V
    .registers 3

    .prologue
    .line 567
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 568
    return-void
.end method

.method public playVideo()V
    .registers 3

    .prologue
    .line 563
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 564
    return-void
.end method

.method public prepare(Landroid/media/MediaPlayer;Landroid/net/Uri;)V
    .registers 7
    .parameter "mediaPlayer"
    .parameter "uri"

    .prologue
    const/4 v3, 0x1

    .line 558
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v3

    .line 559
    .local v0, args:[Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->handler:Landroid/os/Handler;

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 560
    return-void
.end method

.method public quit()V
    .registers 3

    .prologue
    .line 579
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->handler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 580
    return-void
.end method

.method public run()V
    .registers 2

    .prologue
    .line 552
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 553
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->handler:Landroid/os/Handler;

    .line 554
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 555
    return-void
.end method

.method public seekTo(I)V
    .registers 6
    .parameter "millis"

    .prologue
    .line 571
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->handler:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 572
    return-void
.end method

.method public stopVideo()V
    .registers 3

    .prologue
    .line 575
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->handler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 576
    return-void
.end method
