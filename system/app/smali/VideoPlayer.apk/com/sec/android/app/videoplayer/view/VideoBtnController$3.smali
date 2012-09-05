.class Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;
.super Landroid/os/Handler;
.source "VideoBtnController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/view/VideoBtnController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V
    .registers 2
    .parameter

    .prologue
    .line 610
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .parameter "msg"

    .prologue
    const/16 v13, 0x1e

    const/16 v7, 0x12

    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 612
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbResume:Z
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 853
    :cond_f
    :goto_f
    return-void

    .line 615
    :cond_10
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_44e

    goto :goto_f

    .line 617
    :pswitch_16
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_f

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_f

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_f

    .line 620
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setProgress(Z)I
    invoke-static {v5, v10}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1700(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)I

    .line 622
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbProgressDragStatus:Z
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1800(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v5

    if-nez v5, :cond_f

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCtrlLayoutShow:Z
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbResume:Z
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 623
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 624
    invoke-virtual {p0, v11}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 625
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mDelayTime:I
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1900(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {p0, p1, v5, v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_f

    .line 630
    :pswitch_73
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->changeSRSEffect()V
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V

    goto :goto_f

    .line 634
    :pswitch_79
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbPauseEnable:Z
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2100(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v5

    if-eqz v5, :cond_87

    .line 635
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->doPauseResume()V
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2200(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V

    goto :goto_f

    .line 637
    :cond_87
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->doStopResume()V
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2300(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V

    goto :goto_f

    .line 641
    :pswitch_8d
    invoke-static {v11}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->next(Z)Z

    move-result v5

    if-nez v5, :cond_a5

    .line 642
    const-string v5, "VideoBtnController"

    const-string v6, "FFSHORTSEEK - next false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v5}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->finish()V

    .line 646
    :cond_a5
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 647
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;
    invoke-static {v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/view/View;

    move-result-object v6

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->initProgress(Landroid/view/View;)V
    invoke-static {v5, v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Landroid/view/View;)V

    goto/16 :goto_f

    .line 652
    :pswitch_ba
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbFfEnable:Z
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2700(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v5

    if-nez v5, :cond_cb

    .line 653
    const-string v5, "VideoBtnController"

    const-string v6, "mHandler - FFLONGSEEK. This file doesn\'t support FF"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 657
    :cond_cb
    const/4 v5, 0x3

    invoke-static {v5}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->isCurrentPlayerState(I)Z

    move-result v5

    if-eqz v5, :cond_db

    .line 658
    const-string v5, "VideoBtnController"

    const-string v6, "mHandler - FFLONGSEEK. PLAYER_STOP."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 662
    :cond_db
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getIsOnPalm()Z

    move-result v5

    if-eqz v5, :cond_fb

    .line 663
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeedLayout:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/RelativeLayout;

    move-result-object v5

    if-eqz v5, :cond_f2

    .line 664
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeedLayout:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 665
    :cond_f2
    const-string v5, "VideoBtnController"

    const-string v6, "mHandler - FFLONGSEEK. on palm state so, stop seeking."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 671
    :cond_fb
    :try_start_fb
    sget v5, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    if-eq v5, v13, :cond_105

    sget v5, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v6, 0x1d

    if-ne v5, v6, :cond_10d

    :cond_105
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v5}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isInitialized()Z
    :try_end_10a
    .catch Landroid/os/RemoteException; {:try_start_fb .. :try_end_10a} :catch_1b1

    move-result v5

    if-eqz v5, :cond_f

    .line 679
    :cond_10d
    :goto_10d
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbSeekStatus:Z
    invoke-static {v5, v11}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2802(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z

    .line 681
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mLongKeyCnt:I
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2900(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)I

    move-result v5

    if-nez v5, :cond_127

    .line 682
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->getCurrentPosition()I

    move-result v5

    int-to-long v5, v5

    sput-wide v5, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPositionWhenPaused:J

    .line 684
    :cond_127
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mLongKeyCnt:I
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2900(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)I

    move-result v5

    if-le v5, v7, :cond_134

    .line 685
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mLongKeyCnt:I
    invoke-static {v5, v7}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2902(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)I

    .line 687
    :cond_134
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mLongKeyCnt:I
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2900(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)I

    move-result v5

    div-int/lit8 v2, v5, 0x3

    .line 689
    .local v2, index:I
    const-string v5, "VideoBtnController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FFLONGSEEK currentposition: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentPosition:I
    invoke-static {v7}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3100(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const-wide/high16 v6, 0x4000

    int-to-double v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v6, v6

    mul-int/lit16 v6, v6, 0x3e8

    invoke-static {v5, v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3112(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)I

    .line 693
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentPosition:I
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3100(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->getDuration()I

    move-result v6

    if-le v5, v6, :cond_1cb

    .line 694
    const/16 v5, 0x14

    sget v6, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    if-ne v5, v6, :cond_1b7

    .line 695
    const-string v5, "VideoBtnController"

    const-string v6, "mHandler - FFLONGSEEK : go to next"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mLongKeyCnt:I
    invoke-static {v5, v10}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2902(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)I

    .line 697
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v5

    invoke-interface {v5, v10, v10}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->seekTo(II)V

    .line 699
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeedLayout:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/RelativeLayout;

    move-result-object v5

    if-eqz v5, :cond_1a7

    .line 700
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeedLayout:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 702
    :cond_1a7
    invoke-virtual {p0, v12}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->sendEmptyMessage(I)Z

    .line 703
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->misLongSeekNext:Z
    invoke-static {v5, v11}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3202(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z

    goto/16 :goto_f

    .line 675
    .end local v2           #index:I
    :catch_1b1
    move-exception v1

    .line 676
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_10d

    .line 705
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v2       #index:I
    :cond_1b7
    const-string v5, "VideoBtnController"

    const-string v6, "mHandler - FFLONGSEEK : not from video list. just exit"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v5}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto/16 :goto_f

    .line 712
    :cond_1cb
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->isPlayReadyFile()Z

    move-result v5

    if-eqz v5, :cond_282

    sget-boolean v5, Lcom/sec/android/app/videoplayer/util/VideoUtil;->m_IsPyvFileInComplete:Z

    if-eqz v5, :cond_282

    .line 713
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    iget-object v5, v5, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getSecondaryProgress()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->getDuration()I

    move-result v6

    mul-int/2addr v5, v6

    div-int/lit16 v3, v5, 0x3e8

    .line 715
    .local v3, secProgressPos:I
    const-string v5, "VideoBtnController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mHandler - REWLONGSEEK. secProgress"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentPosition:I
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3100(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)I

    move-result v5

    if-ge v5, v3, :cond_275

    .line 718
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentPosition:I
    invoke-static {v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3100(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)I

    move-result v6

    invoke-interface {v5, v6, v10}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->seekTo(II)V

    .line 727
    .end local v3           #secProgressPos:I
    :goto_219
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeed:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1200(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/TextView;

    move-result-object v5

    if-eqz v5, :cond_230

    .line 728
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeed:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1200(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->getStringIdOfSpeed(I)I
    invoke-static {v6, v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3300(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 730
    :cond_230
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeedLayout:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/RelativeLayout;

    move-result-object v5

    if-eqz v5, :cond_256

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeedLayout:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v5

    if-ne v5, v12, :cond_256

    .line 732
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeedLayout:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 734
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeed:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1200(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 738
    :cond_256
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setProgress(Z)I
    invoke-static {v5, v11}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1700(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)I

    .line 739
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v5

    const/16 v6, 0xbb8

    invoke-interface {v5, v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    .line 740
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v6, 0x6

    const-wide/16 v7, 0x12c

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->sendMessage(IJ)V
    invoke-static {v5, v6, v7, v8}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;IJ)V

    .line 741
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2908(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)I

    goto/16 :goto_f

    .line 720
    .restart local v3       #secProgressPos:I
    :cond_275
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v5

    sget-wide v6, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPositionWhenPaused:J

    long-to-int v6, v6

    invoke-interface {v5, v6, v10}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->seekTo(II)V

    goto :goto_219

    .line 721
    .end local v3           #secProgressPos:I
    :cond_282
    sget v5, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    if-ne v5, v13, :cond_28e

    .line 722
    const-string v5, "VideoBtnController"

    const-string v6, "FFLONGSEEK Don\'t send seek command during long press if SCHEME_BROWSER_RTSP_TYPE"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_219

    .line 724
    :cond_28e
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentPosition:I
    invoke-static {v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3100(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)I

    move-result v6

    invoke-interface {v5, v6, v10}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->seekTo(II)V

    goto/16 :goto_219

    .line 746
    .end local v2           #index:I
    :pswitch_29f
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->getCurrentPosition()I

    move-result v0

    .line 748
    .local v0, cpos:I
    const/16 v5, 0xbb8

    if-le v0, v5, :cond_2cb

    sget v5, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v6, 0x20

    if-eq v5, v6, :cond_2cb

    .line 749
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v5}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getSubTitleView()Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;

    move-result-object v4

    .line 751
    .local v4, view:Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;
    if-eqz v4, :cond_2c0

    .line 752
    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->updateSubTitle(Ljava/lang/String;)V

    .line 754
    :cond_2c0
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v5

    invoke-interface {v5, v10}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->seekTo(I)V

    goto/16 :goto_f

    .line 756
    .end local v4           #view:Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;
    :cond_2cb
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->prev()Z

    move-result v5

    if-nez v5, :cond_2e3

    .line 757
    const-string v5, "VideoBtnController"

    const-string v6, "mHandler - REWSHORTSEEK. prev false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v5}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->finish()V

    .line 760
    :cond_2e3
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 761
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;
    invoke-static {v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/view/View;

    move-result-object v6

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->initProgress(Landroid/view/View;)V
    invoke-static {v5, v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Landroid/view/View;)V

    goto/16 :goto_f

    .line 767
    .end local v0           #cpos:I
    :pswitch_2f8
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbRewEnable:Z
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v5

    if-nez v5, :cond_309

    .line 768
    const-string v5, "VideoBtnController"

    const-string v6, "mHandler - REWLONGSEEK. This file doesn\'t support REW"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 772
    :cond_309
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getPlayerState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_319

    .line 773
    const-string v5, "VideoBtnController"

    const-string v6, "mHandler - REWLONGSEEK. PLAYER_STOP."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 777
    :cond_319
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getIsOnPalm()Z

    move-result v5

    if-eqz v5, :cond_339

    .line 778
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeedLayout:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/RelativeLayout;

    move-result-object v5

    if-eqz v5, :cond_330

    .line 779
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeedLayout:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 780
    :cond_330
    const-string v5, "VideoBtnController"

    const-string v6, "mHandler - REWLONGSEEK. on palm state so, stop seeking."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 784
    :cond_339
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbSeekStatus:Z
    invoke-static {v5, v11}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2802(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z

    .line 786
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mLongKeyCnt:I
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2900(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)I

    move-result v5

    if-le v5, v7, :cond_34b

    .line 787
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mLongKeyCnt:I
    invoke-static {v5, v7}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2902(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)I

    .line 789
    :cond_34b
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mLongKeyCnt:I
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2900(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)I

    move-result v5

    div-int/lit8 v2, v5, 0x3

    .line 791
    .restart local v2       #index:I
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const-wide/high16 v6, 0x4000

    int-to-double v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v6, v6

    mul-int/lit16 v6, v6, 0x3e8

    invoke-static {v5, v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3120(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)I

    .line 793
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentPosition:I
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3100(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)I

    move-result v5

    if-gez v5, :cond_36f

    .line 794
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentPosition:I
    invoke-static {v5, v10}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3102(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)I

    .line 796
    :cond_36f
    sget v5, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    if-ne v5, v13, :cond_3ca

    .line 797
    const-string v5, "VideoBtnController"

    const-string v6, "REWLONGSEEK Don\'t send seek command during long press if SCHEME_BROWSER_RTSP_TYPE"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :goto_37a
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentPosition:I
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3100(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)I

    move-result v5

    if-nez v5, :cond_3da

    .line 802
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_39a

    .line 803
    invoke-static {v11}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setWasPlayingWhenPaused(Z)V

    .line 804
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->pause()V

    .line 807
    :cond_39a
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeedLayout:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/RelativeLayout;

    move-result-object v5

    if-eqz v5, :cond_3ab

    .line 808
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeedLayout:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 821
    :cond_3ab
    :goto_3ab
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setProgress(Z)I
    invoke-static {v5, v11}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1700(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)I

    .line 822
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v5

    const/16 v6, 0xbb8

    invoke-interface {v5, v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    .line 823
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v6, 0x7

    const-wide/16 v7, 0x12c

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->sendMessage(IJ)V
    invoke-static {v5, v6, v7, v8}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;IJ)V

    .line 824
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2908(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)I

    goto/16 :goto_f

    .line 799
    :cond_3ca
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentPosition:I
    invoke-static {v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3100(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)I

    move-result v6

    invoke-interface {v5, v6, v10}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->seekTo(II)V

    goto :goto_37a

    .line 810
    :cond_3da
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeed:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1200(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/TextView;

    move-result-object v5

    if-eqz v5, :cond_3f1

    .line 811
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeed:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1200(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->getStringIdOfSpeed(I)I
    invoke-static {v6, v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3300(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 812
    :cond_3f1
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeedLayout:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/RelativeLayout;

    move-result-object v5

    if-eqz v5, :cond_3ab

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeedLayout:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v5

    if-ne v5, v12, :cond_3ab

    .line 814
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeedLayout:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 816
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeed:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1200(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3ab

    .line 830
    .end local v2           #index:I
    :pswitch_418
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentPosition:I
    invoke-static {v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3100(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-interface {v5, v6, v11}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->seekTo(II)V

    .line 831
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_f

    .line 837
    :pswitch_434
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v5, v10}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setVolumeBarVisible(Z)V

    goto/16 :goto_f

    .line 841
    :pswitch_43b
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->updateVolumeBtn()V

    .line 842
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v5, v11}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setVolumeBarVisible(Z)V

    goto/16 :goto_f

    .line 847
    :pswitch_447
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->hideVolumeBubble()V

    goto/16 :goto_f

    .line 615
    :pswitch_data_44e
    .packed-switch 0x1
        :pswitch_16
        :pswitch_434
        :pswitch_79
        :pswitch_8d
        :pswitch_29f
        :pswitch_ba
        :pswitch_2f8
        :pswitch_418
        :pswitch_73
        :pswitch_43b
        :pswitch_447
    .end packed-switch
.end method
