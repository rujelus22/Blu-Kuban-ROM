.class Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;
.super Ljava/lang/Object;
.source "VideoBtnController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/view/VideoBtnController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field actionDownTime:J

.field final synthetic this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V
    .registers 2
    .parameter

    .prologue
    .line 1510
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "view"
    .parameter "event"

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x1

    const/4 v9, 0x6

    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 1513
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 1515
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1517
    .local v0, eventaction:I
    const-string v3, "VideoBtnController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFfTouchListener mRewButtonPressed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewButtonPressed:Z
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3800(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewButtonPressed:Z
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3800(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 1595
    .end local v0           #eventaction:I
    :cond_38
    :goto_38
    return v7

    .line 1521
    .restart local v0       #eventaction:I
    :cond_39
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->isBtHeadSetSeekStatus()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 1522
    const-string v3, "VideoBtnController"

    const-string v4, "mFfTouchListener - bt headset is working"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 1526
    :cond_4f
    packed-switch v0, :pswitch_data_174

    goto :goto_38

    .line 1528
    :pswitch_53
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->misLongSeekNext:Z
    invoke-static {v3, v7}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3202(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z

    .line 1529
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfButtonPressed:Z
    invoke-static {v3, v10}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3702(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z

    .line 1530
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->actionDownTime:J

    .line 1531
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->getCurrentPosition()I

    move-result v4

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentPosition:I
    invoke-static {v3, v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3102(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)I

    .line 1532
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const-wide/16 v4, 0x12c

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->sendMessage(IJ)V
    invoke-static {v3, v9, v4, v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;IJ)V

    .line 1533
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V
    invoke-static {v3, v8}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)V

    .line 1535
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v3

    const v4, 0x36ee80

    invoke-interface {v3, v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    goto :goto_38

    .line 1539
    :pswitch_8b
    const-string v3, "VideoBtnController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_MOVE - y position:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_38

    .line 1542
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V
    invoke-static {v3, v9}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)V

    .line 1543
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const-wide/16 v4, 0x0

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->sendMessage(IJ)V
    invoke-static {v3, v11, v4, v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;IJ)V

    .line 1544
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeedLayout:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/RelativeLayout;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 1545
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeedLayout:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_38

    .line 1550
    :pswitch_cf
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbSeekStatus:Z
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2800(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 1555
    :pswitch_d7
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfButtonPressed:Z
    invoke-static {v3, v7}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3702(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z

    .line 1557
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->actionDownTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x12c

    cmp-long v3, v3, v5

    if-gez v3, :cond_16d

    .line 1558
    const/16 v3, 0x14

    sget v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    if-eq v3, v4, :cond_f5

    sget v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v4, 0x20

    if-ne v3, v4, :cond_108

    .line 1560
    :cond_f5
    const-string v3, "VideoBtnController"

    const-string v4, "go to next"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const-wide/16 v4, 0x64

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->sendMessage(IJ)V
    invoke-static {v3, v8, v4, v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;IJ)V

    .line 1562
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->misLongSeekNext:Z
    invoke-static {v3, v10}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3202(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z

    .line 1568
    :cond_108
    :goto_108
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->isPlayReadyFile()Z

    move-result v3

    if-eqz v3, :cond_13b

    sget-boolean v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->m_IsPyvFileInComplete:Z

    if-eqz v3, :cond_13b

    .line 1569
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    iget-object v3, v3, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    .line 1570
    .local v1, progress:I
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    iget-object v3, v3, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getSecondaryProgress()I

    move-result v2

    .line 1572
    .local v2, secProgress:I
    if-lez v2, :cond_137

    if-le v1, v2, :cond_137

    .line 1573
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v3

    sget-wide v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPositionWhenPaused:J

    long-to-int v4, v4

    invoke-interface {v3, v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->seekTo(I)V

    .line 1574
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setProgress(Z)I
    invoke-static {v3, v7}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1700(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)I

    .line 1576
    :cond_137
    const-wide/16 v3, -0x1

    sput-wide v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPositionWhenPaused:J

    .line 1579
    .end local v1           #progress:I
    .end local v2           #secProgress:I
    :cond_13b
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeedLayout:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/RelativeLayout;

    move-result-object v3

    if-eqz v3, :cond_14c

    .line 1580
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeedLayout:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1582
    :cond_14c
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v3

    const/16 v4, 0xbb8

    invoke-interface {v3, v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    .line 1584
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V
    invoke-static {v3, v9}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)V

    .line 1586
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->misLongSeekNext:Z
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3200(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 1587
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const-wide/16 v4, 0x0

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->sendMessage(IJ)V
    invoke-static {v3, v11, v4, v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;IJ)V

    goto/16 :goto_38

    .line 1565
    :cond_16d
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbSeekStatus:Z
    invoke-static {v3, v7}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2802(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z

    goto :goto_108

    .line 1526
    nop

    :pswitch_data_174
    .packed-switch 0x0
        :pswitch_53
        :pswitch_d7
        :pswitch_8b
        :pswitch_cf
    .end packed-switch
.end method
