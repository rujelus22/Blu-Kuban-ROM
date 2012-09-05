.class Lcom/sec/android/app/music/MusicPlayer$15;
.super Landroid/content/BroadcastReceiver;
.source "MusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/MusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/MusicPlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/MusicPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 1524
    iput-object p1, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1528
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1529
    .local v0, action:Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v6, v6, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-boolean v6, v6, Lcom/sec/android/app/music/MusicPlayer;->isActivityExit:Z

    if-eqz v6, :cond_11

    .line 1640
    :cond_10
    :goto_10
    return-void

    .line 1532
    :cond_11
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v6, v6, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    const-string v6, "com.android.music.metachanged"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 1534
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-virtual {v6}, Lcom/sec/android/app/music/MusicPlayer;->updateFullMediaInfo()V

    goto :goto_10

    .line 1535
    :cond_39
    const-string v6, "musicPlayer.service.startUpdateStatus"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11c

    .line 1536
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v6, v6, Lcom/sec/android/app/music/MusicPlayer;->googleSearchMessageBox:Landroid/app/AlertDialog;

    if-eqz v6, :cond_58

    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v6, v6, Lcom/sec/android/app/music/MusicPlayer;->googleSearchMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_58

    .line 1537
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v6, v6, Lcom/sec/android/app/music/MusicPlayer;->googleSearchMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 1539
    :cond_58
    :try_start_58
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/app/music/MusicPlayer;->dismissDialog(I)V
    :try_end_5e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_58 .. :try_end_5e} :catch_2ae

    .line 1543
    :goto_5e
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v6, v6, Lcom/sec/android/app/music/MusicPlayer;->shareMusicMessageBox:Landroid/app/AlertDialog;

    if-eqz v6, :cond_75

    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v6, v6, Lcom/sec/android/app/music/MusicPlayer;->shareMusicMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_75

    .line 1544
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v6, v6, Lcom/sec/android/app/music/MusicPlayer;->shareMusicMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 1546
    :cond_75
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-virtual {v6}, Lcom/sec/android/app/music/MusicPlayer;->doSetListButton()V

    .line 1549
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v6, v6, Lcom/sec/android/app/music/MusicPlayer;->mDurationView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-wide v7, v7, Lcom/sec/android/app/music/MusicPlayer;->mMediaDuration:J

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/sec/android/app/music/MusicUtils;->getTimeString(JZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1551
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-boolean v6, v6, Lcom/sec/android/app/music/MusicPlayer;->mVisualizationType:Z

    if-eqz v6, :cond_a7

    .line 1552
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/app/music/MusicPlayer;->access$800(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_a7

    .line 1553
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    const/16 v7, 0x9

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/app/music/MusicPlayer;->queueUpdate(IJ)V

    .line 1555
    :cond_a7
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    const/4 v7, 0x2

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/app/music/MusicPlayer;->queueUpdate(IJ)V

    .line 1557
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mCausedByFling:Z
    invoke-static {v6}, Lcom/sec/android/app/music/MusicPlayer;->access$900(Lcom/sec/android/app/music/MusicPlayer;)Z

    move-result v6

    if-nez v6, :cond_e6

    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-boolean v6, v6, Lcom/sec/android/app/music/MusicPlayer;->isShownAdditionalBar:Z

    if-nez v6, :cond_e6

    .line 1559
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/app/music/MusicPlayer;->access$800(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/sec/android/app/music/MusicPlayer;->access$800(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x21

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1560
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/app/music/MusicPlayer;->access$800(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x20

    const-wide/16 v8, 0xbb8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_10

    .line 1561
    :cond_e6
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mCausedByFling:Z
    invoke-static {v6}, Lcom/sec/android/app/music/MusicPlayer;->access$900(Lcom/sec/android/app/music/MusicPlayer;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1562
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-boolean v6, v6, Lcom/sec/android/app/music/MusicPlayer;->mVisualizationType:Z

    if-eqz v6, :cond_114

    .line 1563
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    invoke-direct {v1, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1564
    .local v1, anim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v6, 0x1f4

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1565
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mVisualizationView:Landroid/view/ViewGroup;
    invoke-static {v6}, Lcom/sec/android/app/music/MusicPlayer;->access$1000(Lcom/sec/android/app/music/MusicPlayer;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1566
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mVisualizationView:Landroid/view/ViewGroup;
    invoke-static {v6}, Lcom/sec/android/app/music/MusicPlayer;->access$1000(Lcom/sec/android/app/music/MusicPlayer;)Landroid/view/ViewGroup;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1568
    .end local v1           #anim:Landroid/view/animation/AlphaAnimation;
    :cond_114
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    const/4 v7, 0x0

    #setter for: Lcom/sec/android/app/music/MusicPlayer;->mCausedByFling:Z
    invoke-static {v6, v7}, Lcom/sec/android/app/music/MusicPlayer;->access$902(Lcom/sec/android/app/music/MusicPlayer;Z)Z

    goto/16 :goto_10

    .line 1570
    :cond_11c
    const-string v6, "musicPlayer.service.stopPlay"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15a

    .line 1571
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/app/music/MusicPlayer;->access$800(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1572
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/app/music/MusicPlayer;->access$800(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1574
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-virtual {v6}, Lcom/sec/android/app/music/MusicPlayer;->doPause()V

    .line 1575
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v6, v6, Lcom/sec/android/app/music/MusicPlayer;->mProgressBar:Landroid/widget/SeekBar;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1576
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v6, v6, Lcom/sec/android/app/music/MusicPlayer;->mPlayedTimeView:Landroid/widget/TextView;

    const-wide/16 v7, 0x0

    iget-object v9, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-boolean v9, v9, Lcom/sec/android/app/music/MusicPlayer;->showTimeElapsed:Z

    invoke-static {v7, v8, v9}, Lcom/sec/android/app/music/MusicUtils;->getTimeString(JZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 1577
    :cond_15a
    const-string v6, "com.android.music.playstatechanged"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_215

    .line 1579
    :try_start_162
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v6, v6, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v6}, Lcom/sec/android/app/music/ICorePlayerService;->isPlaying()Z

    move-result v2

    .line 1580
    .local v2, bPlay:Z
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Lcom/sec/android/app/music/MusicPlayer;->changePlayButton(ZZ)V

    .line 1583
    if-nez v2, :cond_10

    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v6, v6, Lcom/sec/android/app/music/MusicPlayer;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->getVisualization(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1584
    const/4 v5, 0x0

    .line 1587
    .local v5, tempEQImageView:Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mVisualizationEqView:Landroid/view/View;
    invoke-static {v6}, Lcom/sec/android/app/music/MusicPlayer;->access$1100(Lcom/sec/android/app/music/MusicPlayer;)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_1a1

    .line 1588
    iget-object v7, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    const-string v8, "layout_inflater"

    invoke-virtual {v6, v8}, Lcom/sec/android/app/music/MusicPlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    const v8, 0x7f030022

    iget-object v9, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mVisualizationView:Landroid/view/ViewGroup;
    invoke-static {v9}, Lcom/sec/android/app/music/MusicPlayer;->access$1000(Lcom/sec/android/app/music/MusicPlayer;)Landroid/view/ViewGroup;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    #setter for: Lcom/sec/android/app/music/MusicPlayer;->mVisualizationEqView:Landroid/view/View;
    invoke-static {v7, v6}, Lcom/sec/android/app/music/MusicPlayer;->access$1102(Lcom/sec/android/app/music/MusicPlayer;Landroid/view/View;)Landroid/view/View;

    .line 1592
    :cond_1a1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1a2
    const/16 v6, 0x13

    if-ge v4, v6, :cond_10

    .line 1593
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mVisualizationEqView:Landroid/view/View;
    invoke-static {v6}, Lcom/sec/android/app/music/MusicPlayer;->access$1100(Lcom/sec/android/app/music/MusicPlayer;)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v7, v7, Lcom/sec/android/app/music/MusicPlayer;->EQTopImageView:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #tempEQImageView:Landroid/widget/ImageView;
    check-cast v5, Landroid/widget/ImageView;

    .line 1595
    .restart local v5       #tempEQImageView:Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v6, v6, Lcom/sec/android/app/music/MusicPlayer;->EQTopImage:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1596
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1597
    invoke-virtual {v5}, Landroid/widget/ImageView;->invalidate()V

    .line 1599
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mVisualizationEqView:Landroid/view/View;
    invoke-static {v6}, Lcom/sec/android/app/music/MusicPlayer;->access$1100(Lcom/sec/android/app/music/MusicPlayer;)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v7, v7, Lcom/sec/android/app/music/MusicPlayer;->EQBottomImageView:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #tempEQImageView:Landroid/widget/ImageView;
    check-cast v5, Landroid/widget/ImageView;

    .line 1601
    .restart local v5       #tempEQImageView:Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v6, v6, Lcom/sec/android/app/music/MusicPlayer;->EQBottomImage:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1602
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1603
    invoke-virtual {v5}, Landroid/widget/ImageView;->invalidate()V
    :try_end_1ec
    .catch Landroid/os/RemoteException; {:try_start_162 .. :try_end_1ec} :catch_1ef

    .line 1592
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a2

    .line 1606
    .end local v2           #bPlay:Z
    .end local v4           #i:I
    .end local v5           #tempEQImageView:Landroid/widget/ImageView;
    :catch_1ef
    move-exception v3

    .line 1607
    .local v3, e:Landroid/os/RemoteException;
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-static {v6}, Lcom/sec/android/app/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 1608
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v6, v6, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RemoteException occured 4 :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 1610
    .end local v3           #e:Landroid/os/RemoteException;
    :cond_215
    const-string v6, "musicPlayer.service.updatePlayComplete"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_256

    .line 1611
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v6, v6, Lcom/sec/android/app/music/MusicPlayer;->mProgressBar:Landroid/widget/SeekBar;

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1612
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v6, v6, Lcom/sec/android/app/music/MusicPlayer;->mPlayedTimeView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-wide v7, v7, Lcom/sec/android/app/music/MusicPlayer;->mMediaDuration:J

    iget-object v9, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-boolean v9, v9, Lcom/sec/android/app/music/MusicPlayer;->showTimeElapsed:Z

    invoke-static {v7, v8, v9}, Lcom/sec/android/app/music/MusicUtils;->getTimeString(JZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1613
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v6, v6, Lcom/sec/android/app/music/MusicPlayer;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->requestLayout()V

    .line 1614
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v6, v6, Lcom/sec/android/app/music/MusicPlayer;->mPlayedTimeView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->requestLayout()V

    .line 1615
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v6, v6, Lcom/sec/android/app/music/MusicPlayer;->mMenu:Landroid/view/Menu;

    if-eqz v6, :cond_10

    .line 1616
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v6, v6, Lcom/sec/android/app/music/MusicPlayer;->mMenu:Landroid/view/Menu;

    invoke-interface {v6}, Landroid/view/Menu;->close()V

    goto/16 :goto_10

    .line 1618
    :cond_256
    const-string v6, "musicPlayer.service.HEADSET_PLUG_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_26e

    const-string v6, "musicPlayer.service.BLUETOOTH_HEADSET_STATE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_26e

    const-string v6, "musicPlayer.service.DOCK_PLUG_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29f

    .line 1624
    :cond_26e
    const-string v6, "musicPlayer.service.HEADSET_PLUG_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_27e

    const-string v6, "musicPlayer.service.DOCK_PLUG_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28b

    .line 1626
    :cond_27e
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v6, v6, Lcom/sec/android/app/music/MusicPlayer;->mMenu:Landroid/view/Menu;

    if-eqz v6, :cond_28b

    .line 1627
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v6, v6, Lcom/sec/android/app/music/MusicPlayer;->mMenu:Landroid/view/Menu;

    invoke-interface {v6}, Landroid/view/Menu;->close()V

    .line 1632
    :cond_28b
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mIsShownVolumeBar:Z
    invoke-static {v6}, Lcom/sec/android/app/music/MusicPlayer;->access$600(Lcom/sec/android/app/music/MusicPlayer;)Z

    move-result v6

    if-eqz v6, :cond_298

    .line 1634
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-virtual {v6}, Lcom/sec/android/app/music/MusicPlayer;->showVolumePanel()V

    .line 1636
    :cond_298
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-virtual {v6}, Lcom/sec/android/app/music/MusicPlayer;->updatePlayerInfo()V

    goto/16 :goto_10

    .line 1637
    :cond_29f
    const-string v6, "musicPlayer.service.updateSeekPlayedTime"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1638
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$15;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-virtual {v6}, Lcom/sec/android/app/music/MusicPlayer;->updatePlayStatus()V

    goto/16 :goto_10

    .line 1540
    :catch_2ae
    move-exception v6

    goto/16 :goto_5e
.end method
