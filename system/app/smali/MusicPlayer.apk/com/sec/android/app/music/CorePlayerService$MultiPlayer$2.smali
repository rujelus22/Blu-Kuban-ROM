.class Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$2;
.super Ljava/lang/Object;
.source "CorePlayerService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPlayReadyErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 4007
    iput-object p1, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$2;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayReadyError(Landroid/media/MediaPlayer;IILjava/lang/String;)Z
    .registers 11
    .parameter "mp"
    .parameter "what"
    .parameter "extra"
    .parameter "error"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4011
    const-string v3, "CorePlayerService"

    const-string v4, "mPlayReadyErrorListener >>>>>>>>MEDIA_ERROR <<<<<<<<<<<< "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4012
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$2;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    iput-boolean v2, v3, Lcom/sec/android/app/music/CorePlayerService;->mResetForUlp:Z

    .line 4013
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$2;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService;->access$3110(Lcom/sec/android/app/music/CorePlayerService;)I

    .line 4014
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$2;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #setter for: Lcom/sec/android/app/music/CorePlayerService;->mIsSupposedToBePlaying:Z
    invoke-static {v3, v2}, Lcom/sec/android/app/music/CorePlayerService;->access$502(Lcom/sec/android/app/music/CorePlayerService;Z)Z

    .line 4015
    const/4 v0, 0x0

    .line 4016
    .local v0, path:Ljava/lang/String;
    sparse-switch p3, :sswitch_data_178

    :goto_21
    move v1, v2

    .line 4099
    :goto_22
    return v1

    .line 4018
    :sswitch_23
    if-eqz p4, :cond_6f

    .line 4019
    const-string v3, "CorePlayerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">>>>>>>>MEDIA_PlayReady Service Specific ERROR = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<<<<<<<<<<<<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4021
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$2;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService;->access$700(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/MusicPlayerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/music/MusicPlayerController;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v0

    .line 4025
    const-string v3, "CorePlayerService"

    const-string v4, "mPlayReadyErrorListener:MEDIA_ErrDrmRightsAcquisitionFaile"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4030
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$2;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    const v4, 0x7f0900eb

    invoke-virtual {v3, v0, v4, p4}, Lcom/sec/android/app/music/CorePlayerService;->setWmDrmPopUp(Ljava/lang/String;ILjava/lang/String;)V

    .line 4031
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$2;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #setter for: Lcom/sec/android/app/music/CorePlayerService;->IsWmdrmPlayreadyfile:Z
    invoke-static {v3, v2}, Lcom/sec/android/app/music/CorePlayerService;->access$2602(Lcom/sec/android/app/music/CorePlayerService;Z)Z

    .line 4032
    const-string v2, "CorePlayerService"

    const-string v3, ">>>>>>>>MEDIA_PlayReady Service Specific ERROR 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 4035
    :cond_6f
    const-string v1, "CorePlayerService"

    const-string v3, ">>>>>>>>MEDIA_PlayReady Service Specific ERROR 1 is NULL URL"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 4040
    :sswitch_77
    if-eqz p4, :cond_c4

    .line 4041
    const-string v3, "CorePlayerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">>>>>>>>MEDIA_PlayReady Service Specific ERROR = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<<<<<<<<<<<<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4043
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$2;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService;->access$700(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/MusicPlayerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/music/MusicPlayerController;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v0

    .line 4046
    const-string v3, "CorePlayerService"

    const-string v4, "mPlayReadyErrorListener:MEDIA_ErrDrmServerDomainRequired"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4051
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$2;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    const v4, 0x7f0900e2

    invoke-virtual {v3, v0, v4, p4}, Lcom/sec/android/app/music/CorePlayerService;->setWmDrmPopUp(Ljava/lang/String;ILjava/lang/String;)V

    .line 4052
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$2;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #setter for: Lcom/sec/android/app/music/CorePlayerService;->IsWmdrmPlayreadyfile:Z
    invoke-static {v3, v2}, Lcom/sec/android/app/music/CorePlayerService;->access$2602(Lcom/sec/android/app/music/CorePlayerService;Z)Z

    .line 4053
    const-string v2, "CorePlayerService"

    const-string v3, ">>>>>>>>MEDIA_PlayReady Service Specific ERROR 2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22

    .line 4056
    :cond_c4
    const-string v1, "CorePlayerService"

    const-string v3, ">>>>>>>>MEDIA_PlayReady Service Specific ERROR 2 is NULL URL"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 4061
    :sswitch_cd
    if-eqz p4, :cond_11a

    .line 4062
    const-string v3, "CorePlayerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">>>>>>>>MEDIA_PlayReady Service Specific ERROR = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<<<<<<<<<<<<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4064
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$2;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService;->access$700(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/MusicPlayerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/music/MusicPlayerController;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v0

    .line 4067
    const-string v3, "CorePlayerService"

    const-string v4, "mPlayReadyErrorListener:MEDIA_ErrDrmServerNotAMember"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4071
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$2;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    const v4, 0x7f0900e3

    invoke-virtual {v3, v0, v4, p4}, Lcom/sec/android/app/music/CorePlayerService;->setWmDrmPopUp(Ljava/lang/String;ILjava/lang/String;)V

    .line 4072
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$2;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #setter for: Lcom/sec/android/app/music/CorePlayerService;->IsWmdrmPlayreadyfile:Z
    invoke-static {v3, v2}, Lcom/sec/android/app/music/CorePlayerService;->access$2602(Lcom/sec/android/app/music/CorePlayerService;Z)Z

    .line 4073
    const-string v2, "CorePlayerService"

    const-string v3, ">>>>>>>>MEDIA_PlayReady Service Specific ERROR 3"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22

    .line 4076
    :cond_11a
    const-string v3, "CorePlayerService"

    const-string v4, ">>>>>>>>MEDIA_PlayReady Service Specific ERROR 3 is NULL URL"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4080
    :sswitch_121
    if-eqz p4, :cond_16e

    .line 4081
    const-string v3, "CorePlayerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">>>>>>>>MEDIA_PlayReady Service Specific ERROR = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<<<<<<<<<<<<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4083
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$2;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService;->access$700(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/MusicPlayerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/music/MusicPlayerController;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v0

    .line 4086
    const-string v3, "CorePlayerService"

    const-string v4, "mPlayReadyErrorListener:MEDIA_ErrDrmServerNotAMember"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4090
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$2;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    const v4, 0x7f0900e4

    invoke-virtual {v3, v0, v4, p4}, Lcom/sec/android/app/music/CorePlayerService;->setWmDrmPopUp(Ljava/lang/String;ILjava/lang/String;)V

    .line 4091
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$2;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #setter for: Lcom/sec/android/app/music/CorePlayerService;->IsWmdrmPlayreadyfile:Z
    invoke-static {v3, v2}, Lcom/sec/android/app/music/CorePlayerService;->access$2602(Lcom/sec/android/app/music/CorePlayerService;Z)Z

    .line 4092
    const-string v2, "CorePlayerService"

    const-string v3, ">>>>>>>>MEDIA_PlayReady Service Specific ERROR 4"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22

    .line 4095
    :cond_16e
    const-string v1, "CorePlayerService"

    const-string v3, ">>>>>>>>MEDIA_PlayReady Service Specific ERROR 4 is NULL URL"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 4016
    nop

    :sswitch_data_178
    .sparse-switch
        -0x40 -> :sswitch_121
        -0x3d -> :sswitch_cd
        -0x3c -> :sswitch_77
        -0x31 -> :sswitch_23
    .end sparse-switch
.end method
