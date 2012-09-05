.class Lcom/sec/android/app/videoplayer/view/VideoBtnController$9;
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
    .line 1462
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$9;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 15
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v10, 0xbb8

    const/16 v9, 0x8

    const/4 v8, 0x5

    const/4 v7, 0x7

    const/4 v2, 0x1

    .line 1464
    packed-switch p2, :pswitch_data_a6

    .line 1506
    :goto_a
    const/4 v2, 0x0

    :cond_b
    :goto_b
    return v2

    .line 1466
    :pswitch_c
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 1467
    .local v0, pressTime:J
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_ac

    :pswitch_1d
    goto :goto_a

    .line 1469
    :pswitch_1e
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_3a

    .line 1471
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$9;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$9;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->getCurrentPosition()I

    move-result v4

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentPosition:I
    invoke-static {v3, v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3102(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)I

    .line 1472
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$9;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const-wide/16 v4, 0x12c

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->sendMessage(IJ)V
    invoke-static {v3, v7, v4, v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;IJ)V

    .line 1475
    :cond_3a
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$9;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V
    invoke-static {v3, v8}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)V

    .line 1476
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$9;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v3

    const v4, 0x36ee80

    invoke-interface {v3, v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    goto :goto_b

    .line 1480
    :pswitch_4c
    const-wide/16 v3, 0x12c

    cmp-long v3, v0, v3

    if-gez v3, :cond_65

    const/16 v3, 0x14

    sget v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    if-eq v3, v4, :cond_5e

    sget v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v4, 0x20

    if-ne v3, v4, :cond_65

    .line 1481
    :cond_5e
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$9;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const-wide/16 v4, 0x64

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->sendMessage(IJ)V
    invoke-static {v3, v8, v4, v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;IJ)V

    .line 1482
    :cond_65
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$9;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v3

    invoke-interface {v3, v10}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    .line 1483
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$9;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V
    invoke-static {v3, v7}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)V

    .line 1484
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$9;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const-wide/16 v4, 0x0

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->sendMessage(IJ)V
    invoke-static {v3, v9, v4, v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;IJ)V

    .line 1487
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$9;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeedLayout:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/RelativeLayout;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 1488
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$9;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeedLayout:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/RelativeLayout;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_b

    .line 1492
    :pswitch_8e
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$9;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v3

    invoke-interface {v3, v10}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    .line 1493
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$9;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V
    invoke-static {v3, v7}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)V

    .line 1494
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$9;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const-wide/16 v4, 0x0

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->sendMessage(IJ)V
    invoke-static {v3, v9, v4, v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;IJ)V

    goto/16 :goto_b

    .line 1464
    nop

    :pswitch_data_a6
    .packed-switch 0x17
        :pswitch_c
    .end packed-switch

    .line 1467
    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_4c
        :pswitch_1d
        :pswitch_1d
        :pswitch_8e
    .end packed-switch
.end method
