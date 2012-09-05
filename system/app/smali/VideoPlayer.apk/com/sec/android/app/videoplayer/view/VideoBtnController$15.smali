.class Lcom/sec/android/app/videoplayer/view/VideoBtnController$15;
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
.field isKeyDowned:Z

.field final synthetic this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V
    .registers 3
    .parameter

    .prologue
    .line 1810
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1811
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$15;->isKeyDowned:Z

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 13
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1814
    const/4 v4, 0x0

    .line 1815
    .local v4, seekKey:I
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v7

    sub-long v2, v5, v7

    .line 1817
    .local v2, pressTime:J
    const/16 v5, 0x15

    if-ne p2, v5, :cond_21

    .line 1818
    const/4 v4, 0x7

    .line 1823
    :cond_10
    :goto_10
    const/16 v5, 0x15

    if-eq p2, v5, :cond_18

    const/16 v5, 0x16

    if-ne p2, v5, :cond_1f

    .line 1825
    :cond_18
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_de

    .line 1882
    :cond_1f
    const/4 v5, 0x0

    :goto_20
    return v5

    .line 1820
    :cond_21
    const/16 v5, 0x16

    if-ne p2, v5, :cond_10

    .line 1821
    const/4 v4, 0x6

    goto :goto_10

    .line 1827
    :pswitch_27
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_52

    .line 1828
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$15;->isKeyDowned:Z

    .line 1829
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const-wide/16 v6, 0x12c

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->sendMessage(IJ)V
    invoke-static {v5, v4, v6, v7}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;IJ)V

    .line 1832
    :try_start_37
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v5, :cond_52

    .line 1834
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v5}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_60

    .line 1836
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->pause()V

    .line 1837
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v6, 0x1

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->temp_playmode:Z
    invoke-static {v5, v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$4202(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_52} :catch_67

    .line 1850
    :cond_52
    :goto_52
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v5

    const v6, 0x36ee80

    invoke-interface {v5, v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    .line 1851
    const/4 v5, 0x1

    goto :goto_20

    .line 1841
    :cond_60
    :try_start_60
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v6, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->temp_playmode:Z
    invoke-static {v5, v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$4202(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_66} :catch_67

    goto :goto_52

    .line 1845
    :catch_67
    move-exception v1

    .line 1847
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_52

    .line 1854
    .end local v1           #e:Landroid/os/RemoteException;
    :pswitch_6c
    iget-boolean v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$15;->isKeyDowned:Z

    if-nez v5, :cond_72

    .line 1855
    const/4 v5, 0x1

    goto :goto_20

    .line 1857
    :cond_72
    const-wide/16 v5, 0x12c

    cmp-long v5, v2, v5

    if-gez v5, :cond_97

    .line 1858
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->getCurrentPosition()I

    move-result v0

    .line 1859
    .local v0, cpos:I
    const/16 v5, 0x15

    if-ne p2, v5, :cond_d7

    .line 1860
    add-int/lit16 v0, v0, -0x7d0

    .line 1865
    :cond_88
    :goto_88
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->seekTo(I)V

    .line 1866
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v6, 0x0

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setProgress(Z)I
    invoke-static {v5, v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1700(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)I

    .line 1868
    .end local v0           #cpos:I
    :cond_97
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->temp_playmode:Z
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$4200(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_af

    .line 1870
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->start()V

    .line 1871
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v6, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->temp_playmode:Z
    invoke-static {v5, v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$4202(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z

    .line 1873
    :cond_af
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v5

    const/16 v6, 0xbb8

    invoke-interface {v5, v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    .line 1874
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeedLayout:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/RelativeLayout;

    move-result-object v5

    if-eqz v5, :cond_cc

    .line 1875
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeedLayout:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/RelativeLayout;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1876
    :cond_cc
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V
    invoke-static {v5, v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)V

    .line 1877
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$15;->isKeyDowned:Z

    .line 1878
    const/4 v5, 0x1

    goto/16 :goto_20

    .line 1862
    .restart local v0       #cpos:I
    :cond_d7
    const/16 v5, 0x16

    if-ne p2, v5, :cond_88

    .line 1863
    add-int/lit16 v0, v0, 0x7d0

    goto :goto_88

    .line 1825
    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_27
        :pswitch_6c
    .end packed-switch
.end method
