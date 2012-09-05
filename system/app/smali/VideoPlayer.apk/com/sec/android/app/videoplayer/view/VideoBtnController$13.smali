.class Lcom/sec/android/app/videoplayer/view/VideoBtnController$13;
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
    .line 1699
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$13;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 12
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xbb8

    .line 1702
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 1704
    .local v0, pressTime:J
    sparse-switch p2, :sswitch_data_68

    .line 1741
    :goto_10
    :sswitch_10
    return v7

    .line 1714
    :sswitch_11
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_82

    goto :goto_10

    .line 1716
    :pswitch_19
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$13;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/16 v3, 0xa

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V
    invoke-static {v2, v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)V

    .line 1717
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$13;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    goto :goto_10

    .line 1721
    :pswitch_2a
    const-wide/16 v2, 0x12c

    cmp-long v2, v0, v2

    if-gez v2, :cond_46

    .line 1722
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$13;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mShowVolumeBar:Z
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3900(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 1723
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$13;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v2, v7}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setVolumeBarVisible(Z)V

    .line 1724
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$13;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    .line 1733
    :cond_46
    :goto_46
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$13;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    goto :goto_10

    .line 1727
    :cond_50
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$13;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/touchwiz/widget/TwSeekBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->requestFocus()Z

    .line 1728
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$13;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setVolumeBarVisible(Z)V

    .line 1729
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$13;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v3, 0x2

    const-wide/16 v4, 0xbb8

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->sendMessage(IJ)V
    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;IJ)V

    goto :goto_46

    .line 1704
    :sswitch_data_68
    .sparse-switch
        0x13 -> :sswitch_10
        0x14 -> :sswitch_10
        0x15 -> :sswitch_10
        0x16 -> :sswitch_10
        0x17 -> :sswitch_11
        0x42 -> :sswitch_11
    .end sparse-switch

    .line 1714
    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_19
        :pswitch_2a
    .end packed-switch
.end method
