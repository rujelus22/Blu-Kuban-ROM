.class Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;
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
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V
    .registers 2
    .parameter

    .prologue
    .line 1664
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xbb8

    .line 1666
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 1668
    .local v0, pressTime:J
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 1669
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_68

    .line 1694
    :cond_1c
    :goto_1c
    return v7

    .line 1671
    :pswitch_1d
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/16 v3, 0xa

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V
    invoke-static {v2, v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)V

    .line 1672
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    goto :goto_1c

    .line 1676
    :pswitch_2e
    const-wide/16 v2, 0x12c

    cmp-long v2, v0, v2

    if-gez v2, :cond_4a

    .line 1677
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mShowVolumeBar:Z
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3900(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 1678
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v2, v7}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setVolumeBarVisible(Z)V

    .line 1679
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    .line 1687
    :cond_4a
    :goto_4a
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    goto :goto_1c

    .line 1681
    :cond_54
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setVolumeBarVisible(Z)V

    .line 1682
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->hideVolumeBubble()V

    .line 1683
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v3, 0x2

    const-wide/16 v4, 0xbb8

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->sendMessage(IJ)V
    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;IJ)V

    goto :goto_4a

    .line 1669
    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_2e
    .end packed-switch
.end method
