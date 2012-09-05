.class Lcom/google/android/youtube/videos/player/Director$6;
.super Landroid/os/Handler;
.source "Director.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/player/Director;->initCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private started:Z

.field final synthetic this$0:Lcom/google/android/youtube/videos/player/Director;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/player/Director;)V
    .registers 2
    .parameter

    .prologue
    .line 849
    iput-object p1, p0, Lcom/google/android/youtube/videos/player/Director$6;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private handlePlayerError(II)V
    .registers 10
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v4, 0x1

    .line 919
    const v1, 0x7f0b0046

    .line 920
    .local v1, messageId:I
    const/4 v0, 0x0

    .line 921
    .local v0, canRetry:Z
    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director$6;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #getter for: Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;
    invoke-static {v2}, Lcom/google/android/youtube/videos/player/Director;->access$2100(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/player/YouTubePlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->getStream()Lcom/google/android/youtube/core/model/Stream;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/youtube/core/model/Stream;->isOffline:Z

    if-nez v2, :cond_40

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director$6;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #getter for: Lcom/google/android/youtube/videos/player/Director;->activity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/google/android/youtube/videos/player/Director;->access$2200(Lcom/google/android/youtube/videos/player/Director;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_40

    .line 922
    const v1, 0x7f0b0019

    .line 923
    const/4 v0, 0x1

    .line 985
    :cond_23
    :goto_23
    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director$6;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #getter for: Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;
    invoke-static {v2}, Lcom/google/android/youtube/videos/player/Director;->access$200(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/videos/player/Director$6;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #getter for: Lcom/google/android/youtube/videos/player/Director;->activity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/google/android/youtube/videos/player/Director;->access$2200(Lcom/google/android/youtube/videos/player/Director;)Landroid/app/Activity;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v1, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showErrorMessage(Ljava/lang/String;Z)V

    .line 986
    return-void

    .line 924
    :cond_40
    if-ne p1, v4, :cond_23

    .line 925
    const v1, 0x7f0b0047

    .line 926
    sparse-switch p2, :sswitch_data_96

    goto :goto_23

    .line 967
    :sswitch_49
    const v1, 0x7f0b0019

    .line 968
    const/4 v0, 0x1

    .line 969
    goto :goto_23

    .line 928
    :sswitch_4e
    const v1, 0x7f0b0023

    .line 929
    goto :goto_23

    .line 931
    :sswitch_52
    const v1, 0x7f0b00e1

    .line 932
    goto :goto_23

    .line 934
    :sswitch_56
    const v1, 0x7f0b00e0

    .line 935
    const/4 v0, 0x1

    .line 936
    goto :goto_23

    .line 938
    :sswitch_5b
    const v1, 0x7f0b0049

    .line 939
    const/4 v0, 0x1

    .line 940
    goto :goto_23

    .line 942
    :sswitch_60
    const v1, 0x7f0b00e4

    .line 943
    goto :goto_23

    .line 945
    :sswitch_64
    const v1, 0x7f0b00e3

    .line 946
    goto :goto_23

    .line 948
    :sswitch_68
    const v1, 0x7f0b00dd

    .line 949
    goto :goto_23

    .line 951
    :sswitch_6c
    const v1, 0x7f0b00dd

    .line 952
    goto :goto_23

    .line 954
    :sswitch_70
    const v1, 0x7f0b00e5

    .line 955
    goto :goto_23

    .line 957
    :sswitch_74
    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director$6;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #getter for: Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;
    invoke-static {v2}, Lcom/google/android/youtube/videos/player/Director;->access$2100(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/player/YouTubePlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->getStream()Lcom/google/android/youtube/core/model/Stream;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/youtube/core/model/Stream;->isOffline:Z

    if-nez v2, :cond_85

    .line 958
    const v1, 0x7f0b0049

    .line 962
    :cond_85
    const/4 v0, 0x1

    .line 963
    goto :goto_23

    .line 972
    :sswitch_87
    const v1, 0x7f0b0048

    .line 973
    const/4 v0, 0x1

    .line 974
    goto :goto_23

    .line 977
    :sswitch_8c
    const v1, 0x7f0b0049

    .line 978
    const/4 v0, 0x1

    .line 979
    goto :goto_23

    .line 981
    :sswitch_91
    const v1, 0x7f0b004a

    goto :goto_23

    .line 926
    nop

    :sswitch_data_96
    .sparse-switch
        -0x3e81 -> :sswitch_49
        -0xbbe -> :sswitch_5b
        -0xbbd -> :sswitch_60
        -0xbbc -> :sswitch_52
        -0xbbb -> :sswitch_64
        -0xbba -> :sswitch_56
        -0xbb9 -> :sswitch_68
        -0xbb8 -> :sswitch_4e
        -0x7d2 -> :sswitch_6c
        -0x7d1 -> :sswitch_70
        -0x3f2 -> :sswitch_91
        -0x3ed -> :sswitch_8c
        -0x3ec -> :sswitch_74
        -0x3eb -> :sswitch_87
        -0x3ea -> :sswitch_87
        0x20 -> :sswitch_8c
    .end sparse-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 853
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e0

    .line 898
    :cond_7
    :goto_7
    :pswitch_7
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/player/Director$6;->started:Z

    if-nez v0, :cond_d5

    .line 899
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_f8

    .line 916
    :goto_10
    return-void

    .line 855
    :pswitch_11
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$6;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #getter for: Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;
    invoke-static {v0}, Lcom/google/android/youtube/videos/player/Director;->access$200(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showPlaying()V

    goto :goto_7

    .line 859
    :pswitch_1b
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$6;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #getter for: Lcom/google/android/youtube/videos/player/Director;->state:Lcom/google/android/youtube/videos/player/Director$State;
    invoke-static {v0}, Lcom/google/android/youtube/videos/player/Director;->access$1400(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/videos/player/Director$State;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/videos/player/Director$State;->PLAYER_LOADED:Lcom/google/android/youtube/videos/player/Director$State;

    if-ne v0, v1, :cond_2e

    .line 860
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$6;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #getter for: Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;
    invoke-static {v0}, Lcom/google/android/youtube/videos/player/Director;->access$200(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showPaused()V

    .line 866
    :cond_2e
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$6;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #getter for: Lcom/google/android/youtube/videos/player/Director;->streamingWarningHelper:Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;
    invoke-static {v0}, Lcom/google/android/youtube/videos/player/Director;->access$1500(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->onPlaybackStopped()V

    goto :goto_7

    .line 869
    :pswitch_38
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$6;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #getter for: Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;
    invoke-static {v0}, Lcom/google/android/youtube/videos/player/Director;->access$200(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v0, v3}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setTimes(III)V

    goto :goto_7

    .line 872
    :pswitch_4e
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$6;->this$0:Lcom/google/android/youtube/videos/player/Director;

    sget-object v1, Lcom/google/android/youtube/videos/player/Director$State;->PLAYER_ENDED:Lcom/google/android/youtube/videos/player/Director$State;

    #setter for: Lcom/google/android/youtube/videos/player/Director;->state:Lcom/google/android/youtube/videos/player/Director$State;
    invoke-static {v0, v1}, Lcom/google/android/youtube/videos/player/Director;->access$1402(Lcom/google/android/youtube/videos/player/Director;Lcom/google/android/youtube/videos/player/Director$State;)Lcom/google/android/youtube/videos/player/Director$State;

    .line 873
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$6;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #getter for: Lcom/google/android/youtube/videos/player/Director;->streamingWarningHelper:Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;
    invoke-static {v0}, Lcom/google/android/youtube/videos/player/Director;->access$1500(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->onPlaybackStopped()V

    .line 874
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$6;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #getter for: Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;
    invoke-static {v0}, Lcom/google/android/youtube/videos/player/Director;->access$200(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showEnded()V

    .line 875
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$6;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #getter for: Lcom/google/android/youtube/videos/player/Director;->lockFullscreenMode:Z
    invoke-static {v0}, Lcom/google/android/youtube/videos/player/Director;->access$1600(Lcom/google/android/youtube/videos/player/Director;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 876
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$6;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-virtual {v0, v4}, Lcom/google/android/youtube/videos/player/Director;->setFullscreen(Z)V

    goto :goto_7

    .line 880
    :pswitch_75
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$6;->this$0:Lcom/google/android/youtube/videos/player/Director;

    sget-object v1, Lcom/google/android/youtube/videos/player/Director$State;->PLAYER_ERROR:Lcom/google/android/youtube/videos/player/Director$State;

    #setter for: Lcom/google/android/youtube/videos/player/Director;->state:Lcom/google/android/youtube/videos/player/Director$State;
    invoke-static {v0, v1}, Lcom/google/android/youtube/videos/player/Director;->access$1402(Lcom/google/android/youtube/videos/player/Director;Lcom/google/android/youtube/videos/player/Director$State;)Lcom/google/android/youtube/videos/player/Director$State;

    .line 881
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$6;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #getter for: Lcom/google/android/youtube/videos/player/Director;->streamingWarningHelper:Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;
    invoke-static {v0}, Lcom/google/android/youtube/videos/player/Director;->access$1500(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->onPlaybackStopped()V

    .line 882
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/videos/player/Director$6;->handlePlayerError(II)V

    goto/16 :goto_7

    .line 885
    :pswitch_8e
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$6;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #getter for: Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;
    invoke-static {v0}, Lcom/google/android/youtube/videos/player/Director;->access$200(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showLoading()V

    .line 886
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$6;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #getter for: Lcom/google/android/youtube/videos/player/Director;->alreadyDroppedQuality:Z
    invoke-static {v0}, Lcom/google/android/youtube/videos/player/Director;->access$1700(Lcom/google/android/youtube/videos/player/Director;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$6;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #getter for: Lcom/google/android/youtube/videos/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;
    invoke-static {v0}, Lcom/google/android/youtube/videos/player/Director;->access$1800(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/model/VideoStreams;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/youtube/core/model/VideoStreams;->supportsQualityToggle:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$6;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #getter for: Lcom/google/android/youtube/videos/player/Director;->hq:Z
    invoke-static {v0}, Lcom/google/android/youtube/videos/player/Director;->access$1900(Lcom/google/android/youtube/videos/player/Director;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$6;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/videos/player/Director;->access$2004(Lcom/google/android/youtube/videos/player/Director;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    .line 888
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$6;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #setter for: Lcom/google/android/youtube/videos/player/Director;->alreadyDroppedQuality:Z
    invoke-static {v0, v5}, Lcom/google/android/youtube/videos/player/Director;->access$1702(Lcom/google/android/youtube/videos/player/Director;Z)Z

    .line 889
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$6;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/player/Director;->onHQ()V

    goto/16 :goto_7

    .line 894
    :pswitch_c6
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$6;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #getter for: Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;
    invoke-static {v0}, Lcom/google/android/youtube/videos/player/Director;->access$200(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showPlaying()V

    goto/16 :goto_7

    .line 902
    :pswitch_d1
    iput-boolean v5, p0, Lcom/google/android/youtube/videos/player/Director$6;->started:Z

    goto/16 :goto_10

    .line 908
    :cond_d5
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_100

    :pswitch_da
    goto/16 :goto_10

    .line 912
    :pswitch_dc
    iput-boolean v4, p0, Lcom/google/android/youtube/videos/player/Director$6;->started:Z

    goto/16 :goto_10

    .line 853
    :pswitch_data_e0
    .packed-switch 0x2
        :pswitch_11
        :pswitch_1b
        :pswitch_1b
        :pswitch_38
        :pswitch_8e
        :pswitch_c6
        :pswitch_4e
        :pswitch_75
        :pswitch_7
        :pswitch_c6
    .end packed-switch

    .line 899
    :pswitch_data_f8
    .packed-switch 0x1
        :pswitch_d1
        :pswitch_d1
    .end packed-switch

    .line 908
    :pswitch_data_100
    .packed-switch 0x4
        :pswitch_dc
        :pswitch_da
        :pswitch_da
        :pswitch_da
        :pswitch_dc
        :pswitch_dc
    .end packed-switch
.end method
