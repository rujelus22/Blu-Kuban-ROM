.class Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;
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
    .line 1384
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 13
    .parameter "view"
    .parameter "event"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x7

    const/4 v5, 0x0

    .line 1387
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 1388
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1390
    .local v0, eventaction:I
    const-string v1, "VideoBtnController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRewTouchListener mFfButtonPressed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfButtonPressed:Z
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3700(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfButtonPressed:Z
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3700(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1458
    .end local v0           #eventaction:I
    :cond_38
    :goto_38
    return v5

    .line 1396
    .restart local v0       #eventaction:I
    :cond_39
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->isBtHeadSetSeekStatus()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 1397
    const-string v1, "VideoBtnController"

    const-string v2, "mRewTouchListener - bt headset is working"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 1401
    :cond_4f
    packed-switch v0, :pswitch_data_130

    goto :goto_38

    .line 1404
    :pswitch_53
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewButtonPressed:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3802(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z

    .line 1405
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;->actionDownTime:J

    .line 1406
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->getCurrentPosition()I

    move-result v2

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentPosition:I
    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3102(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)I

    .line 1408
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const-wide/16 v2, 0x12c

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->sendMessage(IJ)V
    invoke-static {v1, v6, v2, v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;IJ)V

    .line 1409
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V
    invoke-static {v1, v8}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)V

    .line 1411
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v1

    const v2, 0x36ee80

    invoke-interface {v1, v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    goto :goto_38

    .line 1415
    :pswitch_87
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_38

    .line 1416
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V
    invoke-static {v1, v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)V

    .line 1417
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const-wide/16 v2, 0x0

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->sendMessage(IJ)V
    invoke-static {v1, v9, v2, v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;IJ)V

    .line 1419
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeedLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/RelativeLayout;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 1420
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeedLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_38

    .line 1425
    :pswitch_ae
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbSeekStatus:Z
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2800(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1430
    :pswitch_b6
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewButtonPressed:Z
    invoke-static {v1, v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3802(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z

    .line 1431
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;->actionDownTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x12c

    cmp-long v1, v1, v3

    if-gez v1, :cond_10c

    .line 1432
    const/16 v1, 0x14

    sget v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    if-eq v1, v2, :cond_d4

    sget v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v2, 0x20

    if-ne v1, v2, :cond_e2

    .line 1433
    :cond_d4
    const-string v1, "VideoBtnController"

    const-string v2, "go to previous"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const-wide/16 v2, 0x64

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->sendMessage(IJ)V
    invoke-static {v1, v8, v2, v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;IJ)V

    .line 1445
    :cond_e2
    :goto_e2
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V
    invoke-static {v1, v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)V

    .line 1446
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const-wide/16 v2, 0x0

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->sendMessage(IJ)V
    invoke-static {v1, v9, v2, v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;IJ)V

    .line 1448
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeedLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/RelativeLayout;

    move-result-object v1

    if-eqz v1, :cond_ff

    .line 1449
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeedLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1451
    :cond_ff
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v1

    const/16 v2, 0xbb8

    invoke-interface {v1, v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    goto/16 :goto_38

    .line 1437
    :cond_10c
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbSeekStatus:Z
    invoke-static {v1, v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2802(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z

    .line 1439
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getWasPlayingWhenPaused()Z

    move-result v1

    if-eqz v1, :cond_e2

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_e2

    .line 1440
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setWasPlayingWhenPaused(Z)V

    .line 1441
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->start()V

    goto :goto_e2

    .line 1401
    :pswitch_data_130
    .packed-switch 0x0
        :pswitch_53
        :pswitch_b6
        :pswitch_87
        :pswitch_ae
    .end packed-switch
.end method
