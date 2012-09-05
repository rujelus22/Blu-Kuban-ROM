.class Lcom/sec/android/app/dlna/ui/PCloudContentActivity$18;
.super Landroid/os/Handler;
.source "PCloudContentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dlna/ui/PCloudContentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 628
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$18;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 630
    iget v1, p1, Landroid/os/Message;->arg1:I

    sparse-switch v1, :sswitch_data_fe

    .line 698
    :cond_7
    :goto_7
    :sswitch_7
    return-void

    .line 634
    :sswitch_8
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$18;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->handlePlayOrPause()V

    goto :goto_7

    .line 637
    :sswitch_e
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$18;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #calls: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->setMediaName()V
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$1100(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V

    .line 638
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$18;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #calls: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->setPlaylistControl()V
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$1200(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V

    .line 639
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$18;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->isCurrentMediaSeekable()Z

    move-result v2

    #calls: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->setupProgressBar(Z)V
    invoke-static {v1, v2}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$1300(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;Z)V

    goto :goto_7

    .line 645
    :sswitch_2a
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$18;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #calls: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->updateProgressBar()V
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$1400(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V

    goto :goto_7

    .line 648
    :sswitch_30
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$18;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #calls: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->updateProgressBar()V
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$1400(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V

    goto :goto_7

    .line 651
    :sswitch_36
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$18;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #calls: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->updateProgressBar()V
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$1400(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V

    goto :goto_7

    .line 654
    :sswitch_3c
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$18;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #calls: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->setMediaName()V
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$1100(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V

    .line 655
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$18;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #calls: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->updateProgressBar()V
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$1400(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V

    goto :goto_7

    .line 658
    :sswitch_47
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$18;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$000(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Lcom/sec/android/app/dlna/view/MediaControlView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/view/MediaControlView;->setSeeking(Z)V

    goto :goto_7

    .line 661
    :sswitch_51
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$18;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$000(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Lcom/sec/android/app/dlna/view/MediaControlView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/view/MediaControlView;->setControlButtonsEnabled(Z)V

    .line 662
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$18;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$1000(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x7d0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 663
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$18;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #calls: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->setPlaylistControl()V
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$1200(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V

    goto :goto_7

    .line 666
    :sswitch_6b
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$18;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$1000(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x7d1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 667
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$18;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$000(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Lcom/sec/android/app/dlna/view/MediaControlView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/dlna/view/MediaControlView;->setControlButtonsEnabled(Z)V

    goto :goto_7

    .line 671
    :sswitch_80
    :try_start_80
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$18;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #calls: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->setMediaName()V
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$1100(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V

    .line 672
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$18;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    const/16 v2, 0x7d4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->showDialog(I)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_8c} :catch_8e

    goto/16 :goto_7

    .line 673
    :catch_8e
    move-exception v0

    .line 674
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 678
    .end local v0           #e:Ljava/lang/Exception;
    :sswitch_94
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$18;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$000(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Lcom/sec/android/app/dlna/view/MediaControlView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/dlna/view/MediaControlView;->setControlButtonsEnabled(Z)V

    goto/16 :goto_7

    .line 681
    :sswitch_9f
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$18;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$000(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Lcom/sec/android/app/dlna/view/MediaControlView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/view/MediaControlView;->setClickable(Z)V

    .line 682
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$18;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$000(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Lcom/sec/android/app/dlna/view/MediaControlView;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/dlna/view/MediaControlView;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setEnabled(Z)V

    goto/16 :goto_7

    .line 685
    :sswitch_b5
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getDuration()I

    move-result v1

    if-eqz v1, :cond_7

    .line 686
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$18;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$000(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Lcom/sec/android/app/dlna/view/MediaControlView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/dlna/view/MediaControlView;->setClickable(Z)V

    .line 687
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$18;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$000(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Lcom/sec/android/app/dlna/view/MediaControlView;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/dlna/view/MediaControlView;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setEnabled(Z)V

    goto/16 :goto_7

    .line 691
    :sswitch_d9
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$18;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$000(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Lcom/sec/android/app/dlna/view/MediaControlView;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getOrderOfCurrentItem()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/view/MediaControlView;->setCurrentIndex(Ljava/lang/String;)V

    .line 693
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$18;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->playlistAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$400(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->notifyDataSetChanged()V

    .line 694
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$18;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->onPlaylistChanged()V

    goto/16 :goto_7

    .line 630
    :sswitch_data_fe
    .sparse-switch
        0x64 -> :sswitch_2a
        0x65 -> :sswitch_7
        0x66 -> :sswitch_e
        0x67 -> :sswitch_8
        0x68 -> :sswitch_7
        0x6c -> :sswitch_47
        0x6d -> :sswitch_51
        0x6e -> :sswitch_6b
        0x6f -> :sswitch_80
        0x70 -> :sswitch_9f
        0x71 -> :sswitch_b5
        0x72 -> :sswitch_d9
        0x12c -> :sswitch_94
        0x41a -> :sswitch_3c
        0x424 -> :sswitch_30
        0x42e -> :sswitch_36
    .end sparse-switch
.end method
