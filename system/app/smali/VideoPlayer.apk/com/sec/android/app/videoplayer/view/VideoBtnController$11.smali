.class Lcom/sec/android/app/videoplayer/view/VideoBtnController$11;
.super Ljava/lang/Object;
.source "VideoBtnController.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 1599
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$11;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 12
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1601
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 1603
    .local v0, pressTime:J
    packed-switch p2, :pswitch_data_d6

    .line 1657
    :goto_d
    const/4 v4, 0x0

    .line 1660
    :goto_e
    return v4

    .line 1611
    :pswitch_f
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_e4

    goto :goto_d

    .line 1613
    :pswitch_17
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$11;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v5, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->misLongSeekNext:Z
    invoke-static {v4, v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3202(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z

    .line 1614
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_3a

    .line 1616
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$11;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$11;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->getCurrentPosition()I

    move-result v5

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentPosition:I
    invoke-static {v4, v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3102(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)I

    .line 1617
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$11;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v5, 0x6

    const-wide/16 v6, 0x12c

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->sendMessage(IJ)V
    invoke-static {v4, v5, v6, v7}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;IJ)V

    .line 1620
    :cond_3a
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$11;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v5, 0x4

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V
    invoke-static {v4, v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)V

    .line 1621
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$11;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v4

    const v5, 0x36ee80

    invoke-interface {v4, v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    .line 1622
    const/4 v4, 0x1

    goto :goto_e

    .line 1625
    :pswitch_4e
    const-wide/16 v4, 0x12c

    cmp-long v4, v0, v4

    if-gez v4, :cond_68

    const/16 v4, 0x14

    sget v5, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    if-ne v4, v5, :cond_68

    .line 1626
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$11;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v5, 0x4

    const-wide/16 v6, 0x64

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->sendMessage(IJ)V
    invoke-static {v4, v5, v6, v7}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;IJ)V

    .line 1627
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$11;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v5, 0x1

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->misLongSeekNext:Z
    invoke-static {v4, v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3202(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z

    .line 1630
    :cond_68
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->isPlayReadyFile()Z

    move-result v4

    if-eqz v4, :cond_9c

    sget-boolean v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->m_IsPyvFileInComplete:Z

    if-eqz v4, :cond_9c

    .line 1631
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$11;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    iget-object v4, v4, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    .line 1632
    .local v2, progress:I
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$11;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    iget-object v4, v4, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getSecondaryProgress()I

    move-result v3

    .line 1634
    .local v3, secProgress:I
    if-lez v3, :cond_98

    if-le v2, v3, :cond_98

    .line 1635
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$11;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v4

    sget-wide v5, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPositionWhenPaused:J

    long-to-int v5, v5

    invoke-interface {v4, v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->seekTo(I)V

    .line 1636
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$11;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v5, 0x0

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setProgress(Z)I
    invoke-static {v4, v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1700(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)I

    .line 1638
    :cond_98
    const-wide/16 v4, -0x1

    sput-wide v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPositionWhenPaused:J

    .line 1641
    .end local v2           #progress:I
    .end local v3           #secProgress:I
    :cond_9c
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$11;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v4

    const/16 v5, 0xbb8

    invoke-interface {v4, v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    .line 1642
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$11;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v5, 0x6

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V
    invoke-static {v4, v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)V

    .line 1644
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$11;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->misLongSeekNext:Z
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3200(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v4

    if-nez v4, :cond_be

    .line 1645
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$11;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/16 v5, 0x8

    const-wide/16 v6, 0x0

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->sendMessage(IJ)V
    invoke-static {v4, v5, v6, v7}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;IJ)V

    .line 1648
    :cond_be
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$11;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeedLayout:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/RelativeLayout;

    move-result-object v4

    if-eqz v4, :cond_d0

    .line 1649
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$11;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeedLayout:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/RelativeLayout;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1650
    :cond_d0
    const/4 v4, 0x1

    goto/16 :goto_e

    .line 1660
    :pswitch_d3
    const/4 v4, 0x0

    goto/16 :goto_e

    .line 1603
    :pswitch_data_d6
    .packed-switch 0x13
        :pswitch_d3
        :pswitch_d3
        :pswitch_d3
        :pswitch_d3
        :pswitch_f
    .end packed-switch

    .line 1611
    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_17
        :pswitch_4e
    .end packed-switch
.end method
