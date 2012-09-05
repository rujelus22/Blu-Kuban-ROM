.class Lcom/google/android/music/MusicPlaybackService$3;
.super Landroid/os/Handler;
.source "MusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCurrentVolume:F

.field final synthetic this$0:Lcom/google/android/music/MusicPlaybackService;


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicPlaybackService;)V
    .registers 3
    .parameter

    .prologue
    .line 677
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 679
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/music/MusicPlaybackService$3;->mCurrentVolume:F

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

    .line 682
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

    .line 683
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_150

    .line 765
    :goto_25
    return-void

    .line 685
    :pswitch_26
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService$3;->mCurrentVolume:F

    const v1, 0x3d4ccccd

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/music/MusicPlaybackService$3;->mCurrentVolume:F

    .line 686
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService$3;->mCurrentVolume:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_4c

    .line 687
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$400(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 691
    :goto_40
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1400(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/AsyncMediaPlayer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/MusicPlaybackService$3;->mCurrentVolume:F

    invoke-virtual {v0, v1}, Lcom/google/android/music/AsyncMediaPlayer;->setVolume(F)V

    goto :goto_25

    .line 689
    :cond_4c
    iput v5, p0, Lcom/google/android/music/MusicPlaybackService$3;->mCurrentVolume:F

    goto :goto_40

    .line 694
    :pswitch_4f
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService$3;->mCurrentVolume:F

    const v1, 0x3c23d70a

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/music/MusicPlaybackService$3;->mCurrentVolume:F

    .line 695
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService$3;->mCurrentVolume:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_74

    .line 696
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$400(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 700
    :goto_68
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1400(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/AsyncMediaPlayer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/MusicPlaybackService$3;->mCurrentVolume:F

    invoke-virtual {v0, v1}, Lcom/google/android/music/AsyncMediaPlayer;->setVolume(F)V

    goto :goto_25

    .line 698
    :cond_74
    iput v6, p0, Lcom/google/android/music/MusicPlaybackService$3;->mCurrentVolume:F

    goto :goto_68

    .line 703
    :pswitch_77
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1500(Lcom/google/android/music/MusicPlaybackService;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 704
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0, v4}, Lcom/google/android/music/MusicPlaybackService;->next(Z)V

    goto :goto_25

    .line 710
    :cond_85
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #calls: Lcom/google/android/music/MusicPlaybackService;->openCurrent(ZZ)V
    invoke-static {v0, v2, v2}, Lcom/google/android/music/MusicPlaybackService;->access$1200(Lcom/google/android/music/MusicPlaybackService;ZZ)V

    goto :goto_25

    .line 714
    :pswitch_8b
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mRepeatMode:I
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1600(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v0

    if-ne v0, v4, :cond_99

    .line 715
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #calls: Lcom/google/android/music/MusicPlaybackService;->openCurrentAndPlay(Z)V
    invoke-static {v0, v2}, Lcom/google/android/music/MusicPlaybackService;->access$1700(Lcom/google/android/music/MusicPlaybackService;Z)V

    goto :goto_25

    .line 717
    :cond_99
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0, v2}, Lcom/google/android/music/MusicPlaybackService;->next(Z)V

    goto :goto_25

    .line 721
    :pswitch_9f
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$500(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_25

    .line 724
    :pswitch_aa
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_162

    .line 756
    :pswitch_af
    const-string v0, "MediaPlaybackService"

    const-string v1, "Unknown audio focus change code"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    .line 726
    :pswitch_b8
    const-string v0, "MediaPlaybackService"

    const-string v1, "AudioFocus: received AUDIOFOCUS_LOSS"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 728
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #setter for: Lcom/google/android/music/MusicPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v2}, Lcom/google/android/music/MusicPlaybackService;->access$1802(Lcom/google/android/music/MusicPlaybackService;Z)Z

    .line 730
    :cond_cc
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->pause()V

    goto/16 :goto_25

    .line 733
    :pswitch_d3
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$400(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 734
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$400(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_25

    .line 737
    :pswitch_e8
    const-string v0, "MediaPlaybackService"

    const-string v1, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 739
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #setter for: Lcom/google/android/music/MusicPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v4}, Lcom/google/android/music/MusicPlaybackService;->access$1802(Lcom/google/android/music/MusicPlaybackService;Z)Z

    .line 741
    :cond_fc
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->pause()V

    goto/16 :goto_25

    .line 744
    :pswitch_103
    const-string v0, "MediaPlaybackService"

    const-string v1, "AudioFocus: received AUDIOFOCUS_GAIN"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_134

    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1800(Lcom/google/android/music/MusicPlaybackService;)Z

    move-result v0

    if-eqz v0, :cond_134

    .line 746
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #setter for: Lcom/google/android/music/MusicPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v2}, Lcom/google/android/music/MusicPlaybackService;->access$1802(Lcom/google/android/music/MusicPlaybackService;Z)Z

    .line 747
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/MusicPlaybackService$3;->mCurrentVolume:F

    .line 748
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1400(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/AsyncMediaPlayer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/MusicPlaybackService$3;->mCurrentVolume:F

    invoke-virtual {v0, v1}, Lcom/google/android/music/AsyncMediaPlayer;->setVolume(F)V

    .line 749
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->play()V

    goto/16 :goto_25

    .line 751
    :cond_134
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$400(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 752
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$400(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_25

    .line 760
    :pswitch_148
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0, v2}, Lcom/google/android/music/MusicPlaybackService;->next(Z)V

    goto/16 :goto_25

    .line 683
    nop

    :pswitch_data_150
    .packed-switch 0x1
        :pswitch_8b
        :pswitch_9f
        :pswitch_77
        :pswitch_aa
        :pswitch_26
        :pswitch_4f
        :pswitch_148
    .end packed-switch

    .line 724
    :pswitch_data_162
    .packed-switch -0x3
        :pswitch_d3
        :pswitch_e8
        :pswitch_b8
        :pswitch_af
        :pswitch_103
    .end packed-switch
.end method
