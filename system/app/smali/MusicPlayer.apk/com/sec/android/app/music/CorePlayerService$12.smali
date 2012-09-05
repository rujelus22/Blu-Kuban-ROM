.class Lcom/sec/android/app/music/CorePlayerService$12;
.super Landroid/os/Handler;
.source "CorePlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/CorePlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/CorePlayerService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/CorePlayerService;)V
    .registers 2
    .parameter

    .prologue
    .line 2882
    iput-object p1, p0, Lcom/sec/android/app/music/CorePlayerService$12;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2886
    const-string v1, "CorePlayerService"

    const-string v2, "mServiceHandler:%s"

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2887
    const/4 v0, 0x0

    .line 2889
    .local v0, path:Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_1e6

    .line 3009
    :goto_1e
    return-void

    .line 2891
    :sswitch_1f
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$12;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService$12;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;
    invoke-static {v2}, Lcom/sec/android/app/music/CorePlayerService;->access$700(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/MusicPlayerController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/music/MusicPlayerController;->getCurrentMediaUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/music/CorePlayerService;->doSaveNowPlayingMediaInfo(Landroid/net/Uri;)V

    goto :goto_1e

    .line 2895
    :sswitch_2f
    const-string v1, "CorePlayerService"

    const-string v2, "DrmLicenseExpired in handler"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2896
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$12;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;
    invoke-static {v1}, Lcom/sec/android/app/music/CorePlayerService;->access$700(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/MusicPlayerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/music/MusicPlayerController;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v0

    .line 2897
    const-string v1, "CorePlayerService"

    const-string v2, "mHandler:ErrDrmLicenseExpired"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2901
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$12;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->IsWmdrmPlayreadyfile:Z
    invoke-static {v1}, Lcom/sec/android/app/music/CorePlayerService;->access$2600(Lcom/sec/android/app/music/CorePlayerService;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 2902
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$12;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #calls: Lcom/sec/android/app/music/CorePlayerService;->checkDrmRight(Ljava/lang/String;Z)I
    invoke-static {v1, v0, v7}, Lcom/sec/android/app/music/CorePlayerService;->access$2700(Lcom/sec/android/app/music/CorePlayerService;Ljava/lang/String;Z)I

    goto :goto_1e

    .line 2904
    :cond_55
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$12;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    const v2, 0x7f0900e9

    invoke-virtual {v1, v0, v2, v6}, Lcom/sec/android/app/music/CorePlayerService;->setWmDrmPopUp(Ljava/lang/String;ILjava/lang/String;)V

    .line 2905
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$12;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #setter for: Lcom/sec/android/app/music/CorePlayerService;->IsWmdrmPlayreadyfile:Z
    invoke-static {v1, v5}, Lcom/sec/android/app/music/CorePlayerService;->access$2602(Lcom/sec/android/app/music/CorePlayerService;Z)Z

    goto :goto_1e

    .line 2911
    :sswitch_63
    const-string v1, "CorePlayerService"

    const-string v2, "DrmLicenseNotFound in handler"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2914
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$12;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;
    invoke-static {v1}, Lcom/sec/android/app/music/CorePlayerService;->access$700(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/MusicPlayerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/music/MusicPlayerController;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v0

    .line 2915
    const-string v1, "CorePlayerService"

    const-string v2, "mHandler:ErrDrmLicenseNotFound"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2916
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$12;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->IsWmdrmPlayreadyfile:Z
    invoke-static {v1}, Lcom/sec/android/app/music/CorePlayerService;->access$2600(Lcom/sec/android/app/music/CorePlayerService;)Z

    move-result v1

    if-nez v1, :cond_89

    .line 2917
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$12;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #calls: Lcom/sec/android/app/music/CorePlayerService;->checkDrmRight(Ljava/lang/String;Z)I
    invoke-static {v1, v0, v7}, Lcom/sec/android/app/music/CorePlayerService;->access$2700(Lcom/sec/android/app/music/CorePlayerService;Ljava/lang/String;Z)I

    goto :goto_1e

    .line 2919
    :cond_89
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$12;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    const v2, 0x7f0900ea

    invoke-virtual {v1, v0, v2, v6}, Lcom/sec/android/app/music/CorePlayerService;->setWmDrmPopUp(Ljava/lang/String;ILjava/lang/String;)V

    .line 2920
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$12;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #setter for: Lcom/sec/android/app/music/CorePlayerService;->IsWmdrmPlayreadyfile:Z
    invoke-static {v1, v5}, Lcom/sec/android/app/music/CorePlayerService;->access$2602(Lcom/sec/android/app/music/CorePlayerService;Z)Z

    goto :goto_1e

    .line 2926
    :sswitch_97
    const-string v1, "CorePlayerService"

    const-string v2, "DrmLicenseAcqusitionFailed in handler"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2927
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$12;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;
    invoke-static {v1}, Lcom/sec/android/app/music/CorePlayerService;->access$700(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/MusicPlayerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/music/MusicPlayerController;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v0

    .line 2932
    const-string v1, "CorePlayerService"

    const-string v2, "mHandler:ErrDrmLicenseAcquisitionFailed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2933
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$12;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->IsWmdrmPlayreadyfile:Z
    invoke-static {v1}, Lcom/sec/android/app/music/CorePlayerService;->access$2600(Lcom/sec/android/app/music/CorePlayerService;)Z

    move-result v1

    if-nez v1, :cond_be

    .line 2934
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$12;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #calls: Lcom/sec/android/app/music/CorePlayerService;->checkDrmRight(Ljava/lang/String;Z)I
    invoke-static {v1, v0, v7}, Lcom/sec/android/app/music/CorePlayerService;->access$2700(Lcom/sec/android/app/music/CorePlayerService;Ljava/lang/String;Z)I

    goto/16 :goto_1e

    .line 2936
    :cond_be
    const-string v1, "CorePlayerService"

    const-string v2, "call setWmDrmPopUp for Lic Acq Failed case"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2937
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$12;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    const v2, 0x7f0900eb

    invoke-virtual {v1, v0, v2, v6}, Lcom/sec/android/app/music/CorePlayerService;->setWmDrmPopUp(Ljava/lang/String;ILjava/lang/String;)V

    .line 2938
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$12;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #setter for: Lcom/sec/android/app/music/CorePlayerService;->IsWmdrmPlayreadyfile:Z
    invoke-static {v1, v5}, Lcom/sec/android/app/music/CorePlayerService;->access$2602(Lcom/sec/android/app/music/CorePlayerService;Z)Z

    goto/16 :goto_1e

    .line 2942
    :sswitch_d4
    const-string v1, "CorePlayerService"

    const-string v2, "MEDIA_ErrDrmServerNotAMember in handler"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2943
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$12;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;
    invoke-static {v1}, Lcom/sec/android/app/music/CorePlayerService;->access$700(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/MusicPlayerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/music/MusicPlayerController;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v0

    .line 2946
    const-string v1, "CorePlayerService"

    const-string v2, "mHandler:ErrDrmServerNotAMember"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2947
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$12;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    const v2, 0x7f0900e3

    invoke-virtual {v1, v0, v2, v6}, Lcom/sec/android/app/music/CorePlayerService;->setWmDrmPopUp(Ljava/lang/String;ILjava/lang/String;)V

    .line 2948
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$12;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #setter for: Lcom/sec/android/app/music/CorePlayerService;->IsWmdrmPlayreadyfile:Z
    invoke-static {v1, v5}, Lcom/sec/android/app/music/CorePlayerService;->access$2602(Lcom/sec/android/app/music/CorePlayerService;Z)Z

    goto/16 :goto_1e

    .line 2951
    :sswitch_fb
    const-string v1, "CorePlayerService"

    const-string v2, "MEDIA_ErrDrmServerDomainRequired in handler"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2952
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$12;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;
    invoke-static {v1}, Lcom/sec/android/app/music/CorePlayerService;->access$700(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/MusicPlayerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/music/MusicPlayerController;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v0

    .line 2955
    const-string v1, "CorePlayerService"

    const-string v2, "mHandler:ErrDrmServerDomainRequired"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2956
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$12;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    const v2, 0x7f0900e2

    invoke-virtual {v1, v0, v2, v6}, Lcom/sec/android/app/music/CorePlayerService;->setWmDrmPopUp(Ljava/lang/String;ILjava/lang/String;)V

    .line 2957
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$12;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #setter for: Lcom/sec/android/app/music/CorePlayerService;->IsWmdrmPlayreadyfile:Z
    invoke-static {v1, v5}, Lcom/sec/android/app/music/CorePlayerService;->access$2602(Lcom/sec/android/app/music/CorePlayerService;Z)Z

    goto/16 :goto_1e

    .line 2960
    :sswitch_122
    const-string v1, "CorePlayerService"

    const-string v2, "MEDIA_ErrDrmServerInternalError in handler"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2961
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$12;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;
    invoke-static {v1}, Lcom/sec/android/app/music/CorePlayerService;->access$700(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/MusicPlayerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/music/MusicPlayerController;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v0

    .line 2964
    const-string v1, "CorePlayerService"

    const-string v2, "mHandler:ErrDrmServerInternalError"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2965
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$12;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    const v2, 0x7f0900e5

    invoke-virtual {v1, v0, v2, v6}, Lcom/sec/android/app/music/CorePlayerService;->setWmDrmPopUp(Ljava/lang/String;ILjava/lang/String;)V

    .line 2966
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$12;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #setter for: Lcom/sec/android/app/music/CorePlayerService;->IsWmdrmPlayreadyfile:Z
    invoke-static {v1, v5}, Lcom/sec/android/app/music/CorePlayerService;->access$2602(Lcom/sec/android/app/music/CorePlayerService;Z)Z

    goto/16 :goto_1e

    .line 2969
    :sswitch_149
    const-string v1, "CorePlayerService"

    const-string v2, "MEDIA_ErrDrmDevCertRevoked in handler"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2970
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$12;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;
    invoke-static {v1}, Lcom/sec/android/app/music/CorePlayerService;->access$700(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/MusicPlayerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/music/MusicPlayerController;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v0

    .line 2973
    const-string v1, "CorePlayerService"

    const-string v2, "mHandler:ErrDrmDevCertRevoked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2974
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$12;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    const v2, 0x7f0900e6

    invoke-virtual {v1, v0, v2, v6}, Lcom/sec/android/app/music/CorePlayerService;->setWmDrmPopUp(Ljava/lang/String;ILjava/lang/String;)V

    .line 2975
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$12;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #setter for: Lcom/sec/android/app/music/CorePlayerService;->IsWmdrmPlayreadyfile:Z
    invoke-static {v1, v5}, Lcom/sec/android/app/music/CorePlayerService;->access$2602(Lcom/sec/android/app/music/CorePlayerService;Z)Z

    goto/16 :goto_1e

    .line 2978
    :sswitch_170
    const-string v1, "CorePlayerService"

    const-string v2, "MEDIA_ErrDrmServerUnknownAccountId in handler"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2979
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$12;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;
    invoke-static {v1}, Lcom/sec/android/app/music/CorePlayerService;->access$700(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/MusicPlayerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/music/MusicPlayerController;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v0

    .line 2982
    const-string v1, "CorePlayerService"

    const-string v2, "mHandler:ErrDrmServerUnknownAccountId"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2983
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$12;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    const v2, 0x7f0900e7

    invoke-virtual {v1, v0, v2, v6}, Lcom/sec/android/app/music/CorePlayerService;->setWmDrmPopUp(Ljava/lang/String;ILjava/lang/String;)V

    .line 2984
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$12;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #setter for: Lcom/sec/android/app/music/CorePlayerService;->IsWmdrmPlayreadyfile:Z
    invoke-static {v1, v5}, Lcom/sec/android/app/music/CorePlayerService;->access$2602(Lcom/sec/android/app/music/CorePlayerService;Z)Z

    goto/16 :goto_1e

    .line 2987
    :sswitch_197
    const-string v1, "CorePlayerService"

    const-string v2, "MEDIA_ErrDrmServerProtocolVersionMismatch in handler"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2988
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$12;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;
    invoke-static {v1}, Lcom/sec/android/app/music/CorePlayerService;->access$700(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/MusicPlayerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/music/MusicPlayerController;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v0

    .line 2991
    const-string v1, "CorePlayerService"

    const-string v2, "mHandler:ErrDrmServerProtocolVersionMismatch"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$12;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    const v2, 0x7f0900e8

    invoke-virtual {v1, v0, v2, v6}, Lcom/sec/android/app/music/CorePlayerService;->setWmDrmPopUp(Ljava/lang/String;ILjava/lang/String;)V

    .line 2993
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$12;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #setter for: Lcom/sec/android/app/music/CorePlayerService;->IsWmdrmPlayreadyfile:Z
    invoke-static {v1, v5}, Lcom/sec/android/app/music/CorePlayerService;->access$2602(Lcom/sec/android/app/music/CorePlayerService;Z)Z

    goto/16 :goto_1e

    .line 2996
    :sswitch_1be
    const-string v1, "CorePlayerService"

    const-string v2, "MEDIA_ErrDrmServerDeviceLimitReached in handler"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2997
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$12;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;
    invoke-static {v1}, Lcom/sec/android/app/music/CorePlayerService;->access$700(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/MusicPlayerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/music/MusicPlayerController;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v0

    .line 3000
    const-string v1, "CorePlayerService"

    const-string v2, "mHandler:ErrDrmServerDeviceLimitReached"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3001
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$12;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    const v2, 0x7f0900e4

    invoke-virtual {v1, v0, v2, v6}, Lcom/sec/android/app/music/CorePlayerService;->setWmDrmPopUp(Ljava/lang/String;ILjava/lang/String;)V

    .line 3002
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$12;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #setter for: Lcom/sec/android/app/music/CorePlayerService;->IsWmdrmPlayreadyfile:Z
    invoke-static {v1, v5}, Lcom/sec/android/app/music/CorePlayerService;->access$2602(Lcom/sec/android/app/music/CorePlayerService;Z)Z

    goto/16 :goto_1e

    .line 2889
    nop

    :sswitch_data_1e6
    .sparse-switch
        -0x40 -> :sswitch_1be
        -0x3f -> :sswitch_197
        -0x3e -> :sswitch_170
        -0x3d -> :sswitch_d4
        -0x3c -> :sswitch_fb
        -0x3b -> :sswitch_149
        -0x3a -> :sswitch_122
        -0x31 -> :sswitch_97
        0x1e -> :sswitch_1f
        0x12c -> :sswitch_63
        0x12d -> :sswitch_2f
    .end sparse-switch
.end method
