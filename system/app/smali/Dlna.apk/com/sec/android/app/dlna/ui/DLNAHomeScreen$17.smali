.class Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$17;
.super Landroid/os/Handler;
.source "DLNAHomeScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 735
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$17;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 738
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 740
    :try_start_3
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_11a

    .line 809
    :goto_8
    :sswitch_8
    return-void

    .line 742
    :sswitch_9
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$17;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->showDialog(I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_10

    goto :goto_8

    .line 806
    :catch_10
    move-exception v0

    .line 807
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 745
    .end local v0           #e:Ljava/lang/Exception;
    :sswitch_15
    :try_start_15
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$17;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->removeDialog(I)V

    goto :goto_8

    .line 748
    :sswitch_1c
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$17;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$17;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    const v3, 0x7f090047

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_8

    .line 755
    :sswitch_34
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$17;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$000(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Lcom/sec/android/app/dlna/view/MediaControlView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$17;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$000(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Lcom/sec/android/app/dlna/view/MediaControlView;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/dlna/view/MediaControlView;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/view/MediaControlView;->setStartTime(I)V

    goto :goto_8

    .line 758
    :sswitch_4a
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d1

    .line 759
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$17;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mBackKeyTimer:I
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$1200(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)I

    move-result v1

    if-gez v1, :cond_83

    .line 760
    const-string v1, "DLNA"

    const-string v2, "mHandler - init and start timer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$17;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    const/16 v2, 0x640

    #setter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mBackKeyTimer:I
    invoke-static {v1, v2}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$1202(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;I)I

    .line 763
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$17;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mBackKeyToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$1300(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Landroid/widget/Toast;

    move-result-object v1

    if-eqz v1, :cond_76

    .line 765
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$17;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mBackKeyToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$1300(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 767
    :cond_76
    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$17;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$17;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_8

    .line 769
    :cond_83
    const-string v1, "DLNA"

    const-string v2, "mHandler - exit player by H/W back key"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$17;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    const/4 v2, -0x1

    #setter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mBackKeyTimer:I
    invoke-static {v1, v2}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$1202(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;I)I

    .line 772
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$17;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mBackKeyToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$1300(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Landroid/widget/Toast;

    move-result-object v1

    if-eqz v1, :cond_a7

    .line 773
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$17;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mBackKeyToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$1300(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 774
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$17;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mBackKeyToast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$1302(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 776
    :cond_a7
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$17;->removeMessages(I)V

    .line 778
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->stopVirtualRenderer()V

    .line 782
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$17$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$17$1;-><init>(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$17;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 788
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->clearPlaylist()V

    .line 790
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$17;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->finish()V

    goto/16 :goto_8

    .line 793
    :cond_d1
    const-string v1, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHandler - update timer for expiring. current timer ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$17;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mBackKeyTimer:I
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$1200(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$17;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mBackKeyTimer:I
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$1200(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)I

    move-result v1

    if-lez v1, :cond_112

    .line 796
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$17;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$17;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mBackKeyTimer:I
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$1200(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)I

    move-result v2

    add-int/lit16 v2, v2, -0xc8

    #setter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mBackKeyTimer:I
    invoke-static {v1, v2}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$1202(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;I)I

    .line 797
    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$17;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$17;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_8

    .line 799
    :cond_112
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$17;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    const/4 v2, -0x1

    #setter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mBackKeyTimer:I
    invoke-static {v1, v2}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$1202(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;I)I
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_118} :catch_10

    goto/16 :goto_8

    .line 740
    :sswitch_data_11a
    .sparse-switch
        0x3 -> :sswitch_4a
        0x7d0 -> :sswitch_9
        0x7d1 -> :sswitch_15
        0x7d2 -> :sswitch_1c
        0x7d3 -> :sswitch_8
        0x7d5 -> :sswitch_34
    .end sparse-switch
.end method
