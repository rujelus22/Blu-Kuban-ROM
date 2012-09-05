.class Lcom/sec/android/app/music/CorePlayerService$2;
.super Landroid/os/Handler;
.source "CorePlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/CorePlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCurrentVolume:F

.field final synthetic this$0:Lcom/sec/android/app/music/CorePlayerService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/CorePlayerService;)V
    .registers 3
    .parameter

    .prologue
    .line 635
    iput-object p1, p0, Lcom/sec/android/app/music/CorePlayerService$2;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 636
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/app/music/CorePlayerService$2;->mCurrentVolume:F

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15
    .parameter "msg"

    .prologue
    .line 641
    const-string v8, "CorePlayerService"

    const-string v9, "mMediaplayerHandler:%s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p1, Landroid/os/Message;->what:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_1e8

    .line 756
    :cond_1c
    :goto_1c
    return-void

    .line 646
    :sswitch_1d
    iget-object v8, p0, Lcom/sec/android/app/music/CorePlayerService$2;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v8}, Lcom/sec/android/app/music/CorePlayerService;->isPlaying()Z

    move-result v8

    if-nez v8, :cond_45

    .line 647
    const/4 v8, 0x0

    iput v8, p0, Lcom/sec/android/app/music/CorePlayerService$2;->mCurrentVolume:F

    .line 648
    iget-object v8, p0, Lcom/sec/android/app/music/CorePlayerService$2;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;
    invoke-static {v8}, Lcom/sec/android/app/music/CorePlayerService;->access$200(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    move-result-object v8

    iget v9, p0, Lcom/sec/android/app/music/CorePlayerService$2;->mCurrentVolume:F

    invoke-virtual {v8, v9}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->setVolume(F)V

    .line 649
    iget-object v8, p0, Lcom/sec/android/app/music/CorePlayerService$2;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v8}, Lcom/sec/android/app/music/CorePlayerService;->play()V

    .line 650
    iget-object v8, p0, Lcom/sec/android/app/music/CorePlayerService$2;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/sec/android/app/music/CorePlayerService;->access$300(Lcom/sec/android/app/music/CorePlayerService;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x4

    const-wide/16 v10, 0x14

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1c

    .line 652
    :cond_45
    iget v8, p0, Lcom/sec/android/app/music/CorePlayerService$2;->mCurrentVolume:F

    const v9, 0x3c23d70a

    add-float/2addr v8, v9

    iput v8, p0, Lcom/sec/android/app/music/CorePlayerService$2;->mCurrentVolume:F

    .line 653
    iget v8, p0, Lcom/sec/android/app/music/CorePlayerService$2;->mCurrentVolume:F

    const/high16 v9, 0x3f80

    cmpg-float v8, v8, v9

    if-gez v8, :cond_6d

    .line 654
    iget-object v8, p0, Lcom/sec/android/app/music/CorePlayerService$2;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/sec/android/app/music/CorePlayerService;->access$300(Lcom/sec/android/app/music/CorePlayerService;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x4

    const-wide/16 v10, 0x14

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 658
    :goto_61
    iget-object v8, p0, Lcom/sec/android/app/music/CorePlayerService$2;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;
    invoke-static {v8}, Lcom/sec/android/app/music/CorePlayerService;->access$200(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    move-result-object v8

    iget v9, p0, Lcom/sec/android/app/music/CorePlayerService$2;->mCurrentVolume:F

    invoke-virtual {v8, v9}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->setVolume(F)V

    goto :goto_1c

    .line 656
    :cond_6d
    const/high16 v8, 0x3f80

    iput v8, p0, Lcom/sec/android/app/music/CorePlayerService$2;->mCurrentVolume:F

    goto :goto_61

    .line 662
    :sswitch_72
    const/4 v8, 0x0

    iput v8, p0, Lcom/sec/android/app/music/CorePlayerService$2;->mCurrentVolume:F

    .line 663
    iget-object v8, p0, Lcom/sec/android/app/music/CorePlayerService$2;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/sec/android/app/music/CorePlayerService;->access$300(Lcom/sec/android/app/music/CorePlayerService;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x4

    const-wide/16 v10, 0xa

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1c

    .line 667
    :sswitch_82
    iget-object v8, p0, Lcom/sec/android/app/music/CorePlayerService$2;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->isMediaUnMounted:Z
    invoke-static {v8}, Lcom/sec/android/app/music/CorePlayerService;->access$400(Lcom/sec/android/app/music/CorePlayerService;)Z

    move-result v8

    if-nez v8, :cond_1c

    .line 668
    iget-object v8, p0, Lcom/sec/android/app/music/CorePlayerService$2;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mIsSupposedToBePlaying:Z
    invoke-static {v8}, Lcom/sec/android/app/music/CorePlayerService;->access$500(Lcom/sec/android/app/music/CorePlayerService;)Z

    move-result v8

    if-eqz v8, :cond_99

    .line 669
    iget-object v8, p0, Lcom/sec/android/app/music/CorePlayerService$2;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/sec/android/app/music/CorePlayerService;->next(Z)Z

    goto :goto_1c

    .line 675
    :cond_99
    iget-object v8, p0, Lcom/sec/android/app/music/CorePlayerService$2;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    const/4 v9, 0x0

    #calls: Lcom/sec/android/app/music/CorePlayerService;->stop(Z)V
    invoke-static {v8, v9}, Lcom/sec/android/app/music/CorePlayerService;->access$600(Lcom/sec/android/app/music/CorePlayerService;Z)V

    .line 676
    iget-object v8, p0, Lcom/sec/android/app/music/CorePlayerService$2;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;
    invoke-static {v8}, Lcom/sec/android/app/music/CorePlayerService;->access$700(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/MusicPlayerController;

    move-result-object v8

    if-eqz v8, :cond_1c

    iget-object v8, p0, Lcom/sec/android/app/music/CorePlayerService$2;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;
    invoke-static {v8}, Lcom/sec/android/app/music/CorePlayerService;->access$700(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/MusicPlayerController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/music/MusicPlayerController;->getCurrentMediaUri()Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_1c

    .line 678
    iget-object v8, p0, Lcom/sec/android/app/music/CorePlayerService$2;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    iget-object v9, p0, Lcom/sec/android/app/music/CorePlayerService$2;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;
    invoke-static {v9}, Lcom/sec/android/app/music/CorePlayerService;->access$700(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/MusicPlayerController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/music/MusicPlayerController;->getCurrentMediaUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/android/app/music/CorePlayerService;->open(Ljava/lang/String;)Z

    goto/16 :goto_1c

    .line 685
    :sswitch_c8
    iget-object v8, p0, Lcom/sec/android/app/music/CorePlayerService$2;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sec/android/app/music/CorePlayerService;->next(Z)Z

    move-result v8

    if-nez v8, :cond_1c

    .line 688
    iget-object v8, p0, Lcom/sec/android/app/music/CorePlayerService$2;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    const-wide/16 v9, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/app/music/CorePlayerService;->seek(J)J

    .line 689
    iget-object v8, p0, Lcom/sec/android/app/music/CorePlayerService$2;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    const-string v9, "musicPlayer.service.stopPlay"

    #calls: Lcom/sec/android/app/music/CorePlayerService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/sec/android/app/music/CorePlayerService;->access$800(Lcom/sec/android/app/music/CorePlayerService;Ljava/lang/String;)V

    .line 690
    iget-object v8, p0, Lcom/sec/android/app/music/CorePlayerService$2;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/sec/android/app/music/CorePlayerService;->sendMediaPlayInfo(Z)V

    goto/16 :goto_1c

    .line 694
    :sswitch_e7
    iget-object v8, p0, Lcom/sec/android/app/music/CorePlayerService$2;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v8}, Lcom/sec/android/app/music/CorePlayerService;->access$900(Lcom/sec/android/app/music/CorePlayerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_1c

    .line 698
    :sswitch_f2
    const-wide/16 v5, 0x0

    .line 699
    .local v5, jumpTime:J
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 700
    .local v4, iSkipMode:I
    iget-object v8, p0, Lcom/sec/android/app/music/CorePlayerService$2;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;
    invoke-static {v8}, Lcom/sec/android/app/music/CorePlayerService;->access$200(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    move-result-object v8

    if-eqz v8, :cond_16f

    iget-object v8, p0, Lcom/sec/android/app/music/CorePlayerService$2;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;
    invoke-static {v8}, Lcom/sec/android/app/music/CorePlayerService;->access$200(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->isInitialized()Z

    move-result v8

    if-eqz v8, :cond_16f

    .line 701
    sget-object v8, Lcom/sec/android/app/music/CorePlayerService;->SKIP_TIME:[I

    iget-object v9, p0, Lcom/sec/android/app/music/CorePlayerService$2;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-static {v9}, Lcom/sec/android/app/music/CorePlayerService;->access$1008(Lcom/sec/android/app/music/CorePlayerService;)I

    move-result v9

    aget v8, v8, v9

    mul-int/2addr v8, v4

    int-to-long v5, v8

    .line 702
    iget-object v8, p0, Lcom/sec/android/app/music/CorePlayerService$2;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;
    invoke-static {v8}, Lcom/sec/android/app/music/CorePlayerService;->access$200(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->position()J

    move-result-wide v8

    add-long v0, v8, v5

    .line 703
    .local v0, currentPosition:J
    iget-object v8, p0, Lcom/sec/android/app/music/CorePlayerService$2;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;
    invoke-static {v8}, Lcom/sec/android/app/music/CorePlayerService;->access$200(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->duration()J

    move-result-wide v2

    .line 705
    .local v2, durationTime:J
    const/4 v8, -0x1

    if-ne v4, v8, :cond_1a7

    .line 707
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-gtz v8, :cond_195

    .line 708
    iget-object v8, p0, Lcom/sec/android/app/music/CorePlayerService$2;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v8}, Lcom/sec/android/app/music/CorePlayerService;->prev()V

    .line 709
    iget-object v8, p0, Lcom/sec/android/app/music/CorePlayerService$2;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    const/4 v9, 0x0

    #setter for: Lcom/sec/android/app/music/CorePlayerService;->ffRewRepeatTime:I
    invoke-static {v8, v9}, Lcom/sec/android/app/music/CorePlayerService;->access$1002(Lcom/sec/android/app/music/CorePlayerService;I)I

    .line 710
    iget-object v8, p0, Lcom/sec/android/app/music/CorePlayerService$2;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;
    invoke-static {v8}, Lcom/sec/android/app/music/CorePlayerService;->access$200(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->duration()J

    move-result-wide v8

    sget-object v10, Lcom/sec/android/app/music/CorePlayerService;->SKIP_TIME:[I

    iget-object v11, p0, Lcom/sec/android/app/music/CorePlayerService$2;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->ffRewRepeatTime:I
    invoke-static {v11}, Lcom/sec/android/app/music/CorePlayerService;->access$1000(Lcom/sec/android/app/music/CorePlayerService;)I

    move-result v11

    aget v10, v10, v11

    int-to-long v10, v10

    sub-long v0, v8, v10

    .line 721
    :cond_157
    :goto_157
    iget-object v8, p0, Lcom/sec/android/app/music/CorePlayerService$2;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;
    invoke-static {v8}, Lcom/sec/android/app/music/CorePlayerService;->access$200(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->seek(J)J

    .line 722
    iget-object v8, p0, Lcom/sec/android/app/music/CorePlayerService$2;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-static {v8}, Lcom/sec/android/app/music/CorePlayerService;->access$1004(Lcom/sec/android/app/music/CorePlayerService;)I

    move-result v8

    const/4 v9, 0x4

    if-lt v8, v9, :cond_16f

    .line 723
    iget-object v8, p0, Lcom/sec/android/app/music/CorePlayerService$2;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    const/4 v9, 0x3

    #setter for: Lcom/sec/android/app/music/CorePlayerService;->ffRewRepeatTime:I
    invoke-static {v8, v9}, Lcom/sec/android/app/music/CorePlayerService;->access$1002(Lcom/sec/android/app/music/CorePlayerService;I)I

    .line 726
    .end local v0           #currentPosition:J
    .end local v2           #durationTime:J
    :cond_16f
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 727
    .local v7, message:Landroid/os/Message;
    invoke-virtual {v7, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 728
    iget-object v8, p0, Lcom/sec/android/app/music/CorePlayerService$2;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/sec/android/app/music/CorePlayerService;->access$300(Lcom/sec/android/app/music/CorePlayerService;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x320

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 729
    iget-object v8, p0, Lcom/sec/android/app/music/CorePlayerService$2;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/sec/android/app/music/CorePlayerService;->access$300(Lcom/sec/android/app/music/CorePlayerService;)Landroid/os/Handler;

    move-result-object v8

    const-wide/16 v9, 0x12c

    invoke-virtual {v8, v7, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 731
    iget-object v8, p0, Lcom/sec/android/app/music/CorePlayerService$2;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    const-string v9, "musicPlayer.service.updateSeekPlayedTime"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/music/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 711
    .end local v7           #message:Landroid/os/Message;
    .restart local v0       #currentPosition:J
    .restart local v2       #durationTime:J
    :cond_195
    sget-object v8, Lcom/sec/android/app/music/CorePlayerService;->SKIP_TIME:[I

    iget-object v9, p0, Lcom/sec/android/app/music/CorePlayerService$2;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->ffRewRepeatTime:I
    invoke-static {v9}, Lcom/sec/android/app/music/CorePlayerService;->access$1000(Lcom/sec/android/app/music/CorePlayerService;)I

    move-result v9

    aget v8, v8, v9

    int-to-long v8, v8

    cmp-long v8, v0, v8

    if-gez v8, :cond_157

    .line 712
    const-wide/16 v0, 0x0

    goto :goto_157

    .line 716
    :cond_1a7
    cmp-long v8, v2, v0

    if-gtz v8, :cond_157

    .line 717
    move-wide v0, v2

    goto :goto_157

    .line 736
    .end local v0           #currentPosition:J
    .end local v2           #durationTime:J
    .end local v4           #iSkipMode:I
    .end local v5           #jumpTime:J
    :sswitch_1ad
    sget v8, Lcom/sec/android/app/music/CorePlayerService;->mNumberOfTryToPlay:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/sec/android/app/music/CorePlayerService;->mNumberOfTryToPlay:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_1d9

    .line 737
    iget-object v8, p0, Lcom/sec/android/app/music/CorePlayerService$2;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/sec/android/app/music/CorePlayerService;->access$300(Lcom/sec/android/app/music/CorePlayerService;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_1cf

    .line 738
    iget-object v8, p0, Lcom/sec/android/app/music/CorePlayerService$2;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/sec/android/app/music/CorePlayerService;->access$300(Lcom/sec/android/app/music/CorePlayerService;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 740
    :cond_1cf
    const/4 v8, 0x0

    sput v8, Lcom/sec/android/app/music/CorePlayerService;->mNumberOfTryToPlay:I

    .line 741
    iget-object v8, p0, Lcom/sec/android/app/music/CorePlayerService$2;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v8}, Lcom/sec/android/app/music/CorePlayerService;->pause()V

    goto/16 :goto_1c

    .line 743
    :cond_1d9
    iget-object v8, p0, Lcom/sec/android/app/music/CorePlayerService$2;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v8}, Lcom/sec/android/app/music/CorePlayerService;->play()V

    goto/16 :goto_1c

    .line 750
    :sswitch_1e0
    iget-object v8, p0, Lcom/sec/android/app/music/CorePlayerService$2;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    const/4 v9, 0x1

    #setter for: Lcom/sec/android/app/music/CorePlayerService;->mReadyMediaControl:Z
    invoke-static {v8, v9}, Lcom/sec/android/app/music/CorePlayerService;->access$1102(Lcom/sec/android/app/music/CorePlayerService;Z)Z

    goto/16 :goto_1c

    .line 644
    :sswitch_data_1e8
    .sparse-switch
        0x1 -> :sswitch_c8
        0x2 -> :sswitch_e7
        0x3 -> :sswitch_82
        0x4 -> :sswitch_1d
        0xe -> :sswitch_72
        0x320 -> :sswitch_f2
        0x3e8 -> :sswitch_1ad
        0x44c -> :sswitch_1e0
    .end sparse-switch
.end method
