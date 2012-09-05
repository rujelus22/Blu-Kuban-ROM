.class Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$18;
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
    .line 831
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$18;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/16 v4, 0x7d1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 833
    iget v1, p1, Landroid/os/Message;->arg1:I

    sparse-switch v1, :sswitch_data_170

    .line 917
    :cond_9
    :goto_9
    :sswitch_9
    return-void

    .line 839
    :sswitch_a
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$18;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #calls: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->setMediaName()V
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$1400(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)V

    .line 840
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$18;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_34

    .line 841
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$18;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #calls: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->setPlaylistControl()V
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$1500(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)V

    .line 844
    :goto_22
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$18;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->isCurrentMediaSeekable()Z

    move-result v2

    #calls: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->setupProgressBar(Z)V
    invoke-static {v1, v2}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$1700(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;Z)V

    goto :goto_9

    .line 843
    :cond_34
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$18;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #calls: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->setPlaylistControl_Landscape()V
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$1600(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)V

    goto :goto_22

    .line 850
    :sswitch_3a
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$18;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #calls: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->updateProgressBar()V
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$1800(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)V

    goto :goto_9

    .line 853
    :sswitch_40
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$18;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #calls: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->updateProgressBar()V
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$1800(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)V

    goto :goto_9

    .line 856
    :sswitch_46
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$18;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #calls: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->updateProgressBar()V
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$1800(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)V

    goto :goto_9

    .line 859
    :sswitch_4c
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$18;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #calls: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->setMediaName()V
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$1400(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)V

    .line 860
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$18;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #calls: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->updateProgressBar()V
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$1800(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)V

    goto :goto_9

    .line 863
    :sswitch_57
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$18;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$000(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Lcom/sec/android/app/dlna/view/MediaControlView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/view/MediaControlView;->setSeeking(Z)V

    goto :goto_9

    .line 866
    :sswitch_61
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$18;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$000(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Lcom/sec/android/app/dlna/view/MediaControlView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/view/MediaControlView;->setControlButtonsEnabled(Z)V

    .line 867
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$18;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$300(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x7d0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 868
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$18;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_89

    .line 869
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$18;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #calls: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->setPlaylistControl()V
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$1500(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)V

    goto :goto_9

    .line 871
    :cond_89
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$18;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #calls: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->setPlaylistControl_Landscape()V
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$1600(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)V

    goto/16 :goto_9

    .line 874
    :sswitch_90
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/api/ContentItem;->getContentType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_b0

    .line 876
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$18;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$300(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 878
    :cond_b0
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$18;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$000(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Lcom/sec/android/app/dlna/view/MediaControlView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/dlna/view/MediaControlView;->setControlButtonsEnabled(Z)V

    goto/16 :goto_9

    .line 882
    :sswitch_bb
    :try_start_bb
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$18;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #calls: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->setMediaName()V
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$1400(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)V

    .line 883
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$18;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$300(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x7d1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 884
    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 885
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$18;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    const/16 v2, 0x7d4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->showDialog(I)V
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_d7} :catch_d9

    goto/16 :goto_9

    .line 886
    :catch_d9
    move-exception v0

    .line 887
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9

    .line 891
    .end local v0           #e:Ljava/lang/Exception;
    :sswitch_df
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$18;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$000(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Lcom/sec/android/app/dlna/view/MediaControlView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/dlna/view/MediaControlView;->setControlButtonsEnabled(Z)V

    goto/16 :goto_9

    .line 894
    :sswitch_ea
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$18;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$000(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Lcom/sec/android/app/dlna/view/MediaControlView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/view/MediaControlView;->setClickable(Z)V

    .line 895
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$18;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$000(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Lcom/sec/android/app/dlna/view/MediaControlView;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/dlna/view/MediaControlView;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setEnabled(Z)V

    goto/16 :goto_9

    .line 898
    :sswitch_100
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getCurrentVirtualRenderer()Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_11c

    .line 900
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$18;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$300(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 902
    :cond_11c
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getDuration()I

    move-result v1

    if-eqz v1, :cond_9

    .line 903
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$18;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$000(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Lcom/sec/android/app/dlna/view/MediaControlView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/dlna/view/MediaControlView;->setClickable(Z)V

    .line 904
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$18;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$000(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Lcom/sec/android/app/dlna/view/MediaControlView;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/dlna/view/MediaControlView;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setEnabled(Z)V

    goto/16 :goto_9

    .line 908
    :sswitch_140
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$18;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$000(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Lcom/sec/android/app/dlna/view/MediaControlView;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getOrderOfCurrentItem()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/view/MediaControlView;->setCurrentIndex(Ljava/lang/String;)V

    .line 910
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$18;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->playlistAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$400(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->notifyDataSetChanged()V

    .line 911
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$18;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->onPlaylistChanged()V

    goto/16 :goto_9

    .line 914
    :sswitch_165
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$18;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$300(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_9

    .line 833
    :sswitch_data_170
    .sparse-switch
        0x64 -> :sswitch_3a
        0x65 -> :sswitch_9
        0x66 -> :sswitch_a
        0x67 -> :sswitch_9
        0x68 -> :sswitch_9
        0x6c -> :sswitch_57
        0x6d -> :sswitch_61
        0x6e -> :sswitch_90
        0x6f -> :sswitch_bb
        0x70 -> :sswitch_ea
        0x71 -> :sswitch_100
        0x72 -> :sswitch_140
        0x73 -> :sswitch_165
        0x12c -> :sswitch_df
        0x41a -> :sswitch_4c
        0x424 -> :sswitch_40
        0x42e -> :sswitch_46
    .end sparse-switch
.end method
