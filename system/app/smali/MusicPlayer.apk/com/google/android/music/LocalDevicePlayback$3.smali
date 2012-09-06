.class Lcom/google/android/music/LocalDevicePlayback$3;
.super Landroid/os/Handler;
.source "LocalDevicePlayback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/LocalDevicePlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCurrentVolume:F

.field final synthetic this$0:Lcom/google/android/music/LocalDevicePlayback;


# direct methods
.method constructor <init>(Lcom/google/android/music/LocalDevicePlayback;)V
    .registers 3
    .parameter

    .prologue
    .line 461
    iput-object p1, p0, Lcom/google/android/music/LocalDevicePlayback$3;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 463
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/music/LocalDevicePlayback$3;->mCurrentVolume:F

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/high16 v6, 0x3f80

    const v5, 0x3e4ccccd

    const/4 v4, 0x1

    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMediaplayerHandler.handleMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 467
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14a

    .line 571
    :goto_25
    return-void

    .line 469
    :pswitch_26
    iget v0, p0, Lcom/google/android/music/LocalDevicePlayback$3;->mCurrentVolume:F

    const v1, 0x3d4ccccd

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/music/LocalDevicePlayback$3;->mCurrentVolume:F

    .line 470
    iget v0, p0, Lcom/google/android/music/LocalDevicePlayback$3;->mCurrentVolume:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_4c

    .line 471
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$3;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$700(Lcom/google/android/music/LocalDevicePlayback;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 475
    :goto_40
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$3;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$900(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/player/AsyncMediaPlayer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/LocalDevicePlayback$3;->mCurrentVolume:F

    invoke-virtual {v0, v1}, Lcom/google/android/music/player/AsyncMediaPlayer;->setVolume(F)V

    goto :goto_25

    .line 473
    :cond_4c
    iput v5, p0, Lcom/google/android/music/LocalDevicePlayback$3;->mCurrentVolume:F

    goto :goto_40

    .line 478
    :pswitch_4f
    iget v0, p0, Lcom/google/android/music/LocalDevicePlayback$3;->mCurrentVolume:F

    const v1, 0x3c23d70a

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/music/LocalDevicePlayback$3;->mCurrentVolume:F

    .line 479
    iget v0, p0, Lcom/google/android/music/LocalDevicePlayback$3;->mCurrentVolume:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_74

    .line 480
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$3;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$700(Lcom/google/android/music/LocalDevicePlayback;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 484
    :goto_68
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$3;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$900(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/player/AsyncMediaPlayer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/LocalDevicePlayback$3;->mCurrentVolume:F

    invoke-virtual {v0, v1}, Lcom/google/android/music/player/AsyncMediaPlayer;->setVolume(F)V

    goto :goto_25

    .line 482
    :cond_74
    iput v6, p0, Lcom/google/android/music/LocalDevicePlayback$3;->mCurrentVolume:F

    goto :goto_68

    .line 487
    :pswitch_77
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$3;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mIsSupposedToBePlaying:Z
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$1300(Lcom/google/android/music/LocalDevicePlayback;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 488
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$3;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #calls: Lcom/google/android/music/LocalDevicePlayback;->next(Z)V
    invoke-static {v0, v4}, Lcom/google/android/music/LocalDevicePlayback;->access$1400(Lcom/google/android/music/LocalDevicePlayback;Z)V

    goto :goto_25

    .line 494
    :cond_85
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$3;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #calls: Lcom/google/android/music/LocalDevicePlayback;->openCurrentAndNext(ZZZ)V
    invoke-static {v0, v2, v2, v2}, Lcom/google/android/music/LocalDevicePlayback;->access$1500(Lcom/google/android/music/LocalDevicePlayback;ZZZ)V

    goto :goto_25

    .line 498
    :pswitch_8b
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$3;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$3;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mNextPlayPos:I
    invoke-static {v1}, Lcom/google/android/music/LocalDevicePlayback;->access$1700(Lcom/google/android/music/LocalDevicePlayback;)I

    move-result v1

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I
    invoke-static {v0, v1}, Lcom/google/android/music/LocalDevicePlayback;->access$1602(Lcom/google/android/music/LocalDevicePlayback;I)I

    .line 499
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/LocalDevicePlayback$3$1;

    invoke-direct {v1, p0}, Lcom/google/android/music/LocalDevicePlayback$3$1;-><init>(Lcom/google/android/music/LocalDevicePlayback$3;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    goto :goto_25

    .line 525
    :pswitch_a1
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$3;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mRepeatMode:I
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$2400(Lcom/google/android/music/LocalDevicePlayback;)I

    move-result v0

    if-ne v0, v4, :cond_b0

    .line 526
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$3;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #calls: Lcom/google/android/music/LocalDevicePlayback;->openCurrentAndPlay(Z)V
    invoke-static {v0, v2}, Lcom/google/android/music/LocalDevicePlayback;->access$2500(Lcom/google/android/music/LocalDevicePlayback;Z)V

    goto/16 :goto_25

    .line 528
    :cond_b0
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$3;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #calls: Lcom/google/android/music/LocalDevicePlayback;->next(Z)V
    invoke-static {v0, v2}, Lcom/google/android/music/LocalDevicePlayback;->access$1400(Lcom/google/android/music/LocalDevicePlayback;Z)V

    goto/16 :goto_25

    .line 532
    :pswitch_b7
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$3;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$1000(Lcom/google/android/music/LocalDevicePlayback;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_25

    .line 535
    :pswitch_c2
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_15e

    .line 562
    :pswitch_c7
    const-string v0, "MediaPlaybackService"

    const-string v1, "Unknown audio focus change code"

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_25

    .line 537
    :pswitch_d0
    const-string v0, "MediaPlaybackService"

    const-string v1, "AudioFocus: received AUDIOFOCUS_LOSS"

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$3;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/LocalDevicePlayback;->pause()V

    goto/16 :goto_25

    .line 541
    :pswitch_de
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$3;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$700(Lcom/google/android/music/LocalDevicePlayback;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 542
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$3;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$700(Lcom/google/android/music/LocalDevicePlayback;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_25

    .line 545
    :pswitch_f3
    const-string v0, "MediaPlaybackService"

    const-string v1, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$3;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #calls: Lcom/google/android/music/LocalDevicePlayback;->pause(Z)V
    invoke-static {v0, v4}, Lcom/google/android/music/LocalDevicePlayback;->access$2600(Lcom/google/android/music/LocalDevicePlayback;Z)V

    goto/16 :goto_25

    .line 549
    :pswitch_101
    const-string v0, "MediaPlaybackService"

    const-string v1, "AudioFocus: received AUDIOFOCUS_GAIN"

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$3;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/LocalDevicePlayback;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_12f

    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$3;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$2700(Lcom/google/android/music/LocalDevicePlayback;)Z

    move-result v0

    if-eqz v0, :cond_12f

    .line 551
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/LocalDevicePlayback$3;->mCurrentVolume:F

    .line 552
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$3;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$900(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/player/AsyncMediaPlayer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/LocalDevicePlayback$3;->mCurrentVolume:F

    invoke-virtual {v0, v1}, Lcom/google/android/music/player/AsyncMediaPlayer;->setVolume(F)V

    .line 555
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$3;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    iget-object v0, v0, Lcom/google/android/music/LocalDevicePlayback;->mService:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->play()V

    goto/16 :goto_25

    .line 557
    :cond_12f
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$3;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$700(Lcom/google/android/music/LocalDevicePlayback;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 558
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$3;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$700(Lcom/google/android/music/LocalDevicePlayback;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_25

    .line 566
    :pswitch_143
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$3;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #calls: Lcom/google/android/music/LocalDevicePlayback;->next(Z)V
    invoke-static {v0, v2}, Lcom/google/android/music/LocalDevicePlayback;->access$1400(Lcom/google/android/music/LocalDevicePlayback;Z)V

    goto/16 :goto_25

    .line 467
    :pswitch_data_14a
    .packed-switch 0x1
        :pswitch_a1
        :pswitch_b7
        :pswitch_77
        :pswitch_c2
        :pswitch_26
        :pswitch_4f
        :pswitch_143
        :pswitch_8b
    .end packed-switch

    .line 535
    :pswitch_data_15e
    .packed-switch -0x3
        :pswitch_de
        :pswitch_f3
        :pswitch_d0
        :pswitch_c7
        :pswitch_101
    .end packed-switch
.end method
