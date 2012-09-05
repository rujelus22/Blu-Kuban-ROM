.class Lcom/google/android/youtube/core/player/Director$10;
.super Landroid/os/Handler;
.source "Director.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/player/Director;->initCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private started:Z

.field final synthetic this$0:Lcom/google/android/youtube/core/player/Director;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/Director;)V
    .registers 2
    .parameter

    .prologue
    .line 1009
    iput-object p1, p0, Lcom/google/android/youtube/core/player/Director$10;->this$0:Lcom/google/android/youtube/core/player/Director;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private handlePlayerError(II)V
    .registers 6
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1078
    const v1, 0x7f0b0046

    .line 1079
    .local v1, messageId:I
    const/4 v0, 0x1

    .line 1080
    .local v0, canRetry:Z
    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director$10;->this$0:Lcom/google/android/youtube/core/player/Director;

    #getter for: Lcom/google/android/youtube/core/player/Director;->activity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/google/android/youtube/core/player/Director;->access$600(Lcom/google/android/youtube/core/player/Director;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1081
    const v1, 0x7f0b0019

    .line 1098
    :cond_13
    :goto_13
    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director$10;->this$0:Lcom/google/android/youtube/core/player/Director;

    #getter for: Lcom/google/android/youtube/core/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;
    invoke-static {v2}, Lcom/google/android/youtube/core/player/Director;->access$2000(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showErrorMessage(IZ)V

    .line 1099
    return-void

    .line 1082
    :cond_1d
    const/4 v2, 0x1

    if-ne p1, v2, :cond_13

    .line 1083
    packed-switch p2, :pswitch_data_32

    :pswitch_23
    goto :goto_13

    .line 1093
    :pswitch_24
    const v1, 0x7f0b004a

    .line 1094
    const/4 v0, 0x0

    goto :goto_13

    .line 1086
    :pswitch_29
    const v1, 0x7f0b0048

    .line 1087
    goto :goto_13

    .line 1090
    :pswitch_2d
    const v1, 0x7f0b0049

    .line 1091
    goto :goto_13

    .line 1083
    nop

    :pswitch_data_32
    .packed-switch -0x3f2
        :pswitch_24
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_2d
        :pswitch_2d
        :pswitch_29
        :pswitch_29
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1013
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_a4

    .line 1040
    :cond_7
    :goto_7
    :pswitch_7
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director$10;->started:Z

    if-nez v0, :cond_8a

    .line 1041
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_bc

    .line 1075
    :goto_10
    return-void

    .line 1015
    :pswitch_11
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director$10;->this$0:Lcom/google/android/youtube/core/player/Director;

    #getter for: Lcom/google/android/youtube/core/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;
    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->access$2000(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showPlaying()V

    goto :goto_7

    .line 1019
    :pswitch_1b
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director$10;->this$0:Lcom/google/android/youtube/core/player/Director;

    #getter for: Lcom/google/android/youtube/core/player/Director;->errorBeforePlaying:Z
    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->access$2100(Lcom/google/android/youtube/core/player/Director;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1020
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director$10;->this$0:Lcom/google/android/youtube/core/player/Director;

    #getter for: Lcom/google/android/youtube/core/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;
    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->access$2000(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showPaused()V

    goto :goto_7

    .line 1024
    :pswitch_2d
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director$10;->this$0:Lcom/google/android/youtube/core/player/Director;

    #getter for: Lcom/google/android/youtube/core/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;
    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->access$2000(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v4, v0, v5}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setTimes(III)V

    goto :goto_7

    .line 1027
    :pswitch_43
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director$10;->this$0:Lcom/google/android/youtube/core/player/Director;

    #getter for: Lcom/google/android/youtube/core/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;
    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->access$2000(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showEnded()V

    goto :goto_7

    .line 1030
    :pswitch_4d
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v3}, Lcom/google/android/youtube/core/player/Director$10;->handlePlayerError(II)V

    goto :goto_7

    .line 1033
    :pswitch_55
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director$10;->this$0:Lcom/google/android/youtube/core/player/Director;

    #getter for: Lcom/google/android/youtube/core/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;
    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->access$2000(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showLoading()V

    goto :goto_7

    .line 1037
    :pswitch_5f
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director$10;->this$0:Lcom/google/android/youtube/core/player/Director;

    #getter for: Lcom/google/android/youtube/core/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;
    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->access$2000(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showPlaying()V

    goto :goto_7

    .line 1044
    :pswitch_69
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/Director$10;->started:Z

    .line 1045
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director$10;->this$0:Lcom/google/android/youtube/core/player/Director;

    #calls: Lcom/google/android/youtube/core/player/Director;->onVideoStarted()V
    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->access$2200(Lcom/google/android/youtube/core/player/Director;)V

    .line 1060
    :goto_70
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director$10;->this$0:Lcom/google/android/youtube/core/player/Director;

    #getter for: Lcom/google/android/youtube/core/player/Director;->playingAd:Z
    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->access$2300(Lcom/google/android/youtube/core/player/Director;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 1061
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c4

    :pswitch_7d
    goto :goto_10

    .line 1065
    :pswitch_7e
    iget-object v3, p0, Lcom/google/android/youtube/core/player/Director$10;->this$0:Lcom/google/android/youtube/core/player/Director;

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_93

    move v0, v1

    :goto_86
    #calls: Lcom/google/android/youtube/core/player/Director;->onAdEnded(Z)V
    invoke-static {v3, v0}, Lcom/google/android/youtube/core/player/Director;->access$2400(Lcom/google/android/youtube/core/player/Director;Z)V

    goto :goto_10

    .line 1051
    :cond_8a
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_d4

    :pswitch_8f
    goto :goto_70

    .line 1055
    :pswitch_90
    iput-boolean v2, p0, Lcom/google/android/youtube/core/player/Director$10;->started:Z

    goto :goto_70

    :cond_93
    move v0, v2

    .line 1065
    goto :goto_86

    .line 1069
    :cond_95
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e4

    goto/16 :goto_10

    .line 1071
    :pswitch_9c
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director$10;->this$0:Lcom/google/android/youtube/core/player/Director;

    #calls: Lcom/google/android/youtube/core/player/Director;->onVideoEnded()V
    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->access$2500(Lcom/google/android/youtube/core/player/Director;)V

    goto/16 :goto_10

    .line 1013
    nop

    :pswitch_data_a4
    .packed-switch 0x2
        :pswitch_11
        :pswitch_1b
        :pswitch_1b
        :pswitch_2d
        :pswitch_55
        :pswitch_5f
        :pswitch_43
        :pswitch_4d
        :pswitch_7
        :pswitch_5f
    .end packed-switch

    .line 1041
    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_69
        :pswitch_69
    .end packed-switch

    .line 1061
    :pswitch_data_c4
    .packed-switch 0x4
        :pswitch_7e
        :pswitch_7d
        :pswitch_7d
        :pswitch_7d
        :pswitch_7e
        :pswitch_7e
    .end packed-switch

    .line 1051
    :pswitch_data_d4
    .packed-switch 0x4
        :pswitch_90
        :pswitch_8f
        :pswitch_8f
        :pswitch_8f
        :pswitch_90
        :pswitch_90
    .end packed-switch

    .line 1069
    :pswitch_data_e4
    .packed-switch 0x8
        :pswitch_9c
    .end packed-switch
.end method
