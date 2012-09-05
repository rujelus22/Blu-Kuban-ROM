.class Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;
.super Landroid/content/BroadcastReceiver;
.source "MoviePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/activity/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 2058
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 28
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2061
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 2062
    .local v3, action:Ljava/lang/String;
    const-string v20, "MoviePlayer"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "mStatusReceiver - status : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    const-string v20, "videoplayer.service.MoviePlaybackService.PLAYBACK_ERR_MEDIA_NULL"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_38

    .line 2065
    const-string v20, "MoviePlayer"

    const-string v21, "mStatusReceiver - MoviePlaybackService.PLAYBACK_ERR_MEDIA_NULL - activityFinish"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->activityFinish()V
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$200(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    .line 2069
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoActivityOnResume:Z
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$600(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Z

    move-result v20

    if-nez v20, :cond_45

    .line 2469
    :cond_44
    :goto_44
    return-void

    .line 2072
    :cond_45
    const-string v20, "videoplayer.service.MoviePlaybackService.PLAYBACK_UPDATE"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->paused:Z
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$700(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Z

    move-result v20

    if-nez v20, :cond_e4

    .line 2073
    const-string v20, "MoviePlayer"

    const-string v21, "mStatusReceiver - MoviePlaybackService.PLAYBACK_UPDATE."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->error_count:I
    invoke-static/range {v20 .. v21}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$802(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;I)I

    .line 2077
    :try_start_6d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$900(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    move-result-object v20

    if-eqz v20, :cond_c6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$900(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isPlaying()Z

    move-result v20

    if-eqz v20, :cond_c6

    .line 2078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopup:Landroid/app/AlertDialog;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1000(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;

    move-result-object v20

    if-eqz v20, :cond_bd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopup:Landroid/app/AlertDialog;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1000(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v20

    if-eqz v20, :cond_bd

    .line 2079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopup:Landroid/app/AlertDialog;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1000(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog;->dismiss()V

    .line 2080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopupShow:Z
    invoke-static/range {v20 .. v21}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1102(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Z)Z

    .line 2082
    :cond_bd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->setOrientationSensorLandScape()V
    :try_end_c6
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_c6} :catch_df

    .line 2088
    :cond_c6
    :goto_c6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->checkLockScreenOn()Z
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1200(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Z

    move-result v20

    if-nez v20, :cond_44

    .line 2091
    sget-object v20, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v16

    .line 2093
    .local v16, videoSurfaceView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    if-eqz v16, :cond_44

    .line 2094
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->setControllerUpdate()V

    goto/16 :goto_44

    .line 2084
    .end local v16           #videoSurfaceView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :catch_df
    move-exception v6

    .line 2085
    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_c6

    .line 2095
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_e4
    const-string v20, "videoplayer.service.MoviePlaybackService.PLAYBACK_COMPLETE"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1dc

    .line 2096
    const-string v20, "MoviePlayer"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "mStatusReceiver - PLAYBACK_COMPLETE. mErrorPopupShow : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopupShow:Z
    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1100(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", mbDrmPopupShow : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mbDrmPopupShow:Z
    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1300(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    const/16 v20, 0x1

    sput-boolean v20, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPlaybackComplete:Z

    .line 2099
    const-wide/16 v20, -0x1

    sput-wide v20, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPositionWhenPaused:J

    .line 2100
    sget-object v20, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->stopSubTitleProcessor()V

    .line 2102
    sget-object v20, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getSubTitleSyncView()Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    move-result-object v14

    .line 2103
    .local v14, syncCtrl:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;
    if-eqz v14, :cond_13c

    .line 2104
    invoke-virtual {v14}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->hideSyncBtn()V

    .line 2106
    :cond_13c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mMenu:Landroid/view/Menu;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1400(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/view/Menu;

    move-result-object v20

    if-eqz v20, :cond_155

    .line 2107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mMenu:Landroid/view/Menu;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1400(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/view/Menu;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/view/Menu;->close()V

    .line 2109
    :cond_155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1500(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)I

    move-result v20

    const/16 v21, 0x14

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_179

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1500(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)I

    move-result v20

    const/16 v21, 0x20

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1b9

    .line 2110
    :cond_179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopupShow:Z
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1100(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Z

    move-result v20

    if-nez v20, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mbDrmPopupShow:Z
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1300(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Z

    move-result v20

    if-nez v20, :cond_44

    .line 2111
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->next(Z)Z

    move-result v20

    if-nez v20, :cond_1a4

    .line 2112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto/16 :goto_44

    .line 2114
    :cond_1a4
    sget-object v20, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v16

    .line 2115
    .restart local v16       #videoSurfaceView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    if-eqz v16, :cond_44

    .line 2116
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setLongSeekNextFlag(Z)V

    goto/16 :goto_44

    .line 2121
    .end local v16           #videoSurfaceView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :cond_1b9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopupShow:Z
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1100(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Z

    move-result v20

    if-nez v20, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mbDrmPopupShow:Z
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1300(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Z

    move-result v20

    if-nez v20, :cond_44

    .line 2122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto/16 :goto_44

    .line 2124
    .end local v14           #syncCtrl:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;
    :cond_1dc
    const-string v20, "videoplayer.service.MoviePlaybackService.PLAYBACK_INCOMINGCALL"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1f3

    .line 2125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mWasIncomingCall:Z
    invoke-static/range {v20 .. v21}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1602(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Z)Z

    goto/16 :goto_44

    .line 2126
    :cond_1f3
    const-string v20, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_24a

    .line 2127
    const-string v20, "MoviePlayer"

    const-string v21, "@@ ACTION_BATTERY_CHANGED"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->handleBatteryChanged(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1700(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Landroid/content/Intent;)V

    .line 2131
    :try_start_211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->batteryCheck()Z
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1800(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Z

    move-result v20

    if-nez v20, :cond_44

    .line 2132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->popupLowBattery()V
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1900(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V
    :try_end_226
    .catch Ljava/io/IOException; {:try_start_211 .. :try_end_226} :catch_228

    goto/16 :goto_44

    .line 2133
    :catch_228
    move-exception v6

    .line 2134
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 2135
    const-string v20, "MoviePlayer"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "BatteryChecker IOException occured :"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44

    .line 2138
    .end local v6           #e:Ljava/io/IOException;
    :cond_24a
    const-string v20, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_LICENSE_EXPIRED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_297

    .line 2140
    const-string v20, "MoviePlayer"

    const-string v21, "mStatusReceiver - receive PLAYBACK_DRM_LICENSE_EXPIRED"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2000(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/ProgressDialog;

    move-result-object v20

    if-eqz v20, :cond_284

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2000(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/ProgressDialog;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v20

    if-eqz v20, :cond_284

    .line 2142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2000(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/ProgressDialog;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2145
    :cond_284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    const/16 v21, 0x14

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, p2

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createErrorDialog(ILandroid/content/Intent;)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2100(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;ILandroid/content/Intent;)V

    goto/16 :goto_44

    .line 2146
    :cond_297
    const-string v20, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_LICENSE_NOT_FOUND"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2e4

    .line 2148
    const-string v20, "MoviePlayer"

    const-string v21, "mStatusReceiver - receive PLAYBACK_DRM_LICENSE_NOT_FOUND"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2000(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/ProgressDialog;

    move-result-object v20

    if-eqz v20, :cond_2d1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2000(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/ProgressDialog;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v20

    if-eqz v20, :cond_2d1

    .line 2150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2000(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/ProgressDialog;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2152
    :cond_2d1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    const/16 v21, 0x13

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, p2

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createErrorDialog(ILandroid/content/Intent;)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2100(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;ILandroid/content/Intent;)V

    goto/16 :goto_44

    .line 2153
    :cond_2e4
    const-string v20, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_SHOW_ACQUIRING_POPUP"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3be

    .line 2155
    const-string v20, "MoviePlayer"

    const-string v21, "mStatusReceiver - receive PLAYBACK_DRM_SHOW_ACQUIRING_POPUP"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2000(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/ProgressDialog;

    move-result-object v20

    if-eqz v20, :cond_31e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2000(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/ProgressDialog;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v20

    if-eqz v20, :cond_31e

    .line 2158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2000(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/ProgressDialog;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2161
    :cond_31e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLicErrorRelatedPopupShow:Z
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2200(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Z

    move-result v20

    if-eqz v20, :cond_35c

    .line 2162
    const-string v20, "MoviePlayer"

    const-string v21, "In OnResume, dnt show Acq License popup"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2000(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/ProgressDialog;

    move-result-object v20

    if-eqz v20, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2000(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/ProgressDialog;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v20

    if-eqz v20, :cond_44

    .line 2164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2000(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/ProgressDialog;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_44

    .line 2166
    :cond_35c
    const-string v20, "MoviePlayer"

    const-string v21, "mStatusReceiver - receive PLAYBACK_DRM_SHOW_ACQUIRING_POPUP 1"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    new-instance v21, Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;
    invoke-static/range {v20 .. v21}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2002(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 2168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2000(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/ProgressDialog;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v21, v0

    const v22, 0x7f080058

    invoke-virtual/range {v21 .. v22}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2000(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/ProgressDialog;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 2170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2000(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/ProgressDialog;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 2172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2000(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/ProgressDialog;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_44

    .line 2174
    :cond_3be
    const-string v20, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_DISMISS_ACQUIRING_POPUP"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3fa

    .line 2177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2000(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/ProgressDialog;

    move-result-object v20

    if-eqz v20, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2000(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/ProgressDialog;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v20

    if-eqz v20, :cond_44

    .line 2180
    const-string v20, "MoviePlayer"

    const-string v21, "mStatusReceiver - receive PLAYBACK_DRM_DISMISS_ACQUIRING_POPUP"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2000(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/ProgressDialog;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_44

    .line 2184
    :cond_3fa
    const-string v20, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_LICENSE_ACQUISITION_FAILED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_41e

    .line 2186
    const-string v20, "MoviePlayer"

    const-string v21, "mStatusReceiver - receive PLAYBACK_DRM_LICENSE_ACQUISITION_FAILED"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    const/16 v21, 0x12

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, p2

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createErrorDialog(ILandroid/content/Intent;)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2100(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;ILandroid/content/Intent;)V

    goto/16 :goto_44

    .line 2189
    :cond_41e
    const-string v20, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_DOMAIN_REQUIRED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_442

    .line 2191
    const-string v20, "MoviePlayer"

    const-string v21, "mStatusReceiver - receive PLAYBACK_DRM_DOMAIN_REQUIRED---1"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    const/16 v21, 0x16

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, p2

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createErrorDialog(ILandroid/content/Intent;)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2100(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;ILandroid/content/Intent;)V

    goto/16 :goto_44

    .line 2196
    :cond_442
    const-string v20, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_SERVER_NOT_A_MEMBER"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_466

    .line 2198
    const-string v20, "MoviePlayer"

    const-string v21, "mStatusReceiver - receive PLAYBACK_DRM_SERVER_NOT_A_MEMBER---1"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    const/16 v21, 0x17

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, p2

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createErrorDialog(ILandroid/content/Intent;)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2100(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;ILandroid/content/Intent;)V

    goto/16 :goto_44

    .line 2200
    :cond_466
    const-string v20, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_SERVER_INTERNAL_ERROR"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_48a

    .line 2202
    const-string v20, "MoviePlayer"

    const-string v21, "mStatusReceiver - receive PLAYBACK_DRM_SERVER_INTERNAL_ERROR---1"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    const/16 v21, 0x18

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, p2

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createErrorDialog(ILandroid/content/Intent;)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2100(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;ILandroid/content/Intent;)V

    goto/16 :goto_44

    .line 2204
    :cond_48a
    const-string v20, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_DEVCERT_REVOKED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4ae

    .line 2206
    const-string v20, "MoviePlayer"

    const-string v21, "mStatusReceiver - receive PLAYBACK_DRM_DEVCERT_REVOKED---1"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    const/16 v21, 0x19

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, p2

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createErrorDialog(ILandroid/content/Intent;)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2100(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;ILandroid/content/Intent;)V

    goto/16 :goto_44

    .line 2208
    :cond_4ae
    const-string v20, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_SERVER_UNKNOWN_ACCOUNT_ID"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4d2

    .line 2210
    const-string v20, "MoviePlayer"

    const-string v21, "mStatusReceiver - receive PLAYBACK_DRM_SERVER_UNKNOWN_ACCOUNT_ID---1"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    const/16 v21, 0x1a

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, p2

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createErrorDialog(ILandroid/content/Intent;)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2100(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;ILandroid/content/Intent;)V

    goto/16 :goto_44

    .line 2212
    :cond_4d2
    const-string v20, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_SERVER_PROTOCOL_VERSION_MISMATCH"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4f6

    .line 2214
    const-string v20, "MoviePlayer"

    const-string v21, "mStatusReceiver - receive PLAYBACK_DRM_SERVER_PROTOCOL_VERSION_MISMATCH---1"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    const/16 v21, 0x1b

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, p2

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createErrorDialog(ILandroid/content/Intent;)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2100(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;ILandroid/content/Intent;)V

    goto/16 :goto_44

    .line 2216
    :cond_4f6
    const-string v20, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_SERVER_DEVICE_LIMIT_REACHED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_51a

    .line 2218
    const-string v20, "MoviePlayer"

    const-string v21, "mStatusReceiver - receive PLAYBACK_DRM_SERVER_DEVICE_LIMIT_REACHED---1"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    const/16 v21, 0x1c

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, p2

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createErrorDialog(ILandroid/content/Intent;)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2100(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;ILandroid/content/Intent;)V

    goto/16 :goto_44

    .line 2220
    :cond_51a
    const-string v20, "videoplayer.service.MoviePlaybackService.NO_DATA_CONNECTIVITY_POPUP"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_53e

    .line 2221
    const-string v20, "MoviePlayer"

    const-string v21, "mStatusReceiver - receive NO_DATA_CONNECTIVITY_POPUP"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    const/16 v21, 0x15

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, p2

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createErrorDialog(ILandroid/content/Intent;)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2100(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;ILandroid/content/Intent;)V

    goto/16 :goto_44

    .line 2225
    :cond_53e
    const-string v20, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_VALID_COUNT"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_598

    const-string v20, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_INVALID_CD"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_598

    const-string v20, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_INVALID_SD"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_598

    const-string v20, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_FIRST_INTERVAL_RENDER"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_598

    const-string v20, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_DIVX_NOT_AUTHORIZED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_598

    const-string v20, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_WMDRM_INVALID"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_598

    const-string v20, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_DIVX_NOT_REGISTERED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_598

    const-string v20, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_DIVX_RENTAL_EXPIRED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_598

    const-string v20, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_DIVX_RENTAL_INFO"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5da

    .line 2235
    :cond_598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    sget v21, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopupType:I
    invoke-static/range {v20 .. v21}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2302(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;I)I

    .line 2236
    const-string v20, "MoviePlayer"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "mStatusReceiver - receive DRM popup. mDrmPopupType = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopupType:I
    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2300(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v21, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopupType:I
    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2300(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createDrmPopup(I)V

    goto/16 :goto_44

    .line 2238
    :cond_5da
    const-string v20, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_UNKNOWN"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5fe

    .line 2239
    const-string v20, "MoviePlayer"

    const-string v21, "mStatusReceiver - receive MEDIA_ERROR_UNKNOWN"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    const/16 v21, 0xa

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, p2

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createErrorDialog(ILandroid/content/Intent;)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2100(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;ILandroid/content/Intent;)V

    goto/16 :goto_44

    .line 2241
    :cond_5fe
    const-string v20, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_INVALID"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_622

    .line 2242
    const-string v20, "MoviePlayer"

    const-string v21, "mStatusReceiver - receive MEDIA_ERROR_INVALID"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    const/16 v21, 0xb

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, p2

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createErrorDialog(ILandroid/content/Intent;)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2100(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;ILandroid/content/Intent;)V

    goto/16 :goto_44

    .line 2244
    :cond_622
    const-string v20, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_NOTSUPPORT"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_646

    .line 2245
    const-string v20, "MoviePlayer"

    const-string v21, "mStatusReceiver - receive MEDIA_ERROR_NOTSUPPORT"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    const/16 v21, 0xc

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, p2

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createErrorDialog(ILandroid/content/Intent;)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2100(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;ILandroid/content/Intent;)V

    goto/16 :goto_44

    .line 2247
    :cond_646
    const-string v20, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_CURRUPT"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_66a

    .line 2248
    const-string v20, "MoviePlayer"

    const-string v21, "mStatusReceiver - receive MEDIA_ERROR_CURRUPT"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    const/16 v21, 0xd

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, p2

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createErrorDialog(ILandroid/content/Intent;)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2100(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;ILandroid/content/Intent;)V

    goto/16 :goto_44

    .line 2250
    :cond_66a
    const-string v20, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_DIVX_NOTAUTHORIZED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_68e

    .line 2251
    const-string v20, "MoviePlayer"

    const-string v21, "mStatusReceiver - receive MEDIA_ERROR_DIVX_NOTAUTHORIZED"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    const/16 v21, 0xe

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, p2

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createErrorDialog(ILandroid/content/Intent;)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2100(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;ILandroid/content/Intent;)V

    goto/16 :goto_44

    .line 2253
    :cond_68e
    const-string v20, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_EXPIRED_RENTALCOUNT"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6b2

    .line 2254
    const-string v20, "MoviePlayer"

    const-string v21, "mStatusReceiver - receive MEDIA_ERROR_EXPIRED_RENTALCOUNT"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    const/16 v21, 0xf

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, p2

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createErrorDialog(ILandroid/content/Intent;)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2100(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;ILandroid/content/Intent;)V

    goto/16 :goto_44

    .line 2280
    :cond_6b2
    const-string v20, "android.intent.action.HDMI_PLUGGED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7e9

    .line 2281
    const-string v20, "state"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 2282
    .local v8, isHDMIPlugged:Z
    const-string v20, "name"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2284
    .local v7, hdmiName:Ljava/lang/String;
    if-eqz v8, :cond_7d5

    .line 2285
    const/16 v20, 0x1

    sput-boolean v20, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHdmiOn:Z

    .line 2287
    sget-object v20, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v20, :cond_72f

    .line 2289
    :try_start_6de
    sget-object v20, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isInitialized()Z

    move-result v20

    if-eqz v20, :cond_72f

    .line 2290
    const-string v20, "MoviePlayer"

    const-string v21, "isInitialized : true"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    const v21, 0x7f080040

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V
    :try_end_703
    .catch Landroid/os/RemoteException; {:try_start_6de .. :try_end_703} :catch_790

    .line 2294
    :try_start_703
    const-string v20, "MoviePlayer"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getID() : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurPlayingId()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "][duration() : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface/range {v22 .. v22}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->duration()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72f
    .catch Landroid/os/RemoteException; {:try_start_703 .. :try_end_72f} :catch_78b

    .line 2303
    :cond_72f
    :goto_72f
    const-string v20, "MoviePlayer"

    const-string v21, "mStatusReceiver - HDMI is inserted."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurPlayingPath()Ljava/lang/String;

    move-result-object v11

    .line 2306
    .local v11, path:Ljava/lang/String;
    if-eqz v11, :cond_74d

    .line 2307
    sget-object v20, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsDivx(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_795

    .line 2308
    const-string v20, "MoviePlayer"

    const-string v21, "play() - divX file. check Tv-Out function"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    :cond_74d
    :goto_74d
    const-string v20, "MoviePlayer"

    const-string v21, " VIVEK_HDMI_SUBTITLE_DEBUG "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    sget-boolean v20, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubtitleOn:Z

    if-eqz v20, :cond_7ad

    sget-boolean v20, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHdmiOn:Z

    if-eqz v20, :cond_7ad

    .line 2315
    const-string v20, "MoviePlayer"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "EnableHDMISubtitleOnTV VIVEK_HDMI_SUBTITLE_DEBUG called mSubtitleOn : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-boolean v22, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubtitleOn:Z

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " mHdmiOn : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-boolean v22, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHdmiOn:Z

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    sget-object v20, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    sget-boolean v21, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubtitleOn:Z

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->EnableHDMISubtitleOnTV(Z)V

    goto/16 :goto_44

    .line 2295
    .end local v11           #path:Ljava/lang/String;
    :catch_78b
    move-exception v6

    .line 2296
    .local v6, e:Landroid/os/RemoteException;
    :try_start_78c
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_78f
    .catch Landroid/os/RemoteException; {:try_start_78c .. :try_end_78f} :catch_790

    goto :goto_72f

    .line 2299
    .end local v6           #e:Landroid/os/RemoteException;
    :catch_790
    move-exception v6

    .line 2300
    .restart local v6       #e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_72f

    .line 2309
    .end local v6           #e:Landroid/os/RemoteException;
    .restart local v11       #path:Ljava/lang/String;
    :cond_795
    sget-object v20, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsDrm(Ljava/lang/String;)I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_74d

    .line 2310
    const-string v20, "MoviePlayer"

    const-string v21, "play() - KDRM file. check Tv-Out function"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74d

    .line 2318
    :cond_7ad
    const-string v20, "MoviePlayer"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "EnableHDMISubtitleOnTV not called mSubtitleOn : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-boolean v22, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubtitleOn:Z

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " mHdmiOn : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-boolean v22, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHdmiOn:Z

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44

    .line 2322
    .end local v11           #path:Ljava/lang/String;
    :cond_7d5
    const/16 v20, 0x0

    sput-boolean v20, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHdmiOn:Z

    .line 2323
    const-string v20, "MoviePlayer"

    const-string v21, " VIVEK_HDMI_SUBTITLE_DEBUG HDMI cable disconnect  "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    sget-object v20, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->EnableHDMISubtitleOnTV(Z)V

    goto/16 :goto_44

    .line 2326
    .end local v7           #hdmiName:Ljava/lang/String;
    .end local v8           #isHDMIPlugged:Z
    :cond_7e9
    const-string v20, "videoplayer.service.MoviePlaybackService.ACTION_HDMI_START"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_86d

    .line 2327
    const-string v20, "MoviePlayer"

    const-string v21, "ACTION_HDMI_START"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurPlayingId()J

    move-result-wide v18

    .line 2331
    .local v18, video_Id:J
    sget-object v20, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    sget-object v21, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    move-object/from16 v0, v21

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getFilePathbyId(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->checkExistSubTitle(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_867

    sget-object v20, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->initSubTitle()Z

    move-result v20

    if-eqz v20, :cond_867

    .line 2332
    sget-object v20, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->startSubTitleProccessor()V

    .line 2337
    :goto_81d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    const v21, 0x7f080040

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    .line 2340
    :try_start_833
    const-string v20, "MoviePlayer"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getID() : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurPlayingId()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "][duration() : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface/range {v22 .. v22}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->duration()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85f
    .catch Landroid/os/RemoteException; {:try_start_833 .. :try_end_85f} :catch_861

    goto/16 :goto_44

    .line 2341
    :catch_861
    move-exception v6

    .line 2342
    .restart local v6       #e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_44

    .line 2334
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_867
    sget-object v20, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->stopSubTitleProcessor()V

    goto :goto_81d

    .line 2344
    .end local v18           #video_Id:J
    :cond_86d
    const-string v20, "android.intent.action.HEADSET_PLUG"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_892

    .line 2345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mMenu:Landroid/view/Menu;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1400(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/view/Menu;

    move-result-object v20

    if-eqz v20, :cond_44

    .line 2346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mMenu:Landroid/view/Menu;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1400(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/view/Menu;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/view/Menu;->close()V

    goto/16 :goto_44

    .line 2347
    :cond_892
    const-string v20, "android.media.AUDIO_BECOMING_NOISY"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_95c

    .line 2348
    const-string v20, "android.bluetooth.a2dp.extra.DISCONNECT_A2DP"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 2350
    .local v5, bFromBT:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    const-string v21, "audio"

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    .line 2352
    .local v4, audioManager:Landroid/media/AudioManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mMenu:Landroid/view/Menu;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1400(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/view/Menu;

    move-result-object v20

    if-eqz v20, :cond_8d1

    .line 2353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mMenu:Landroid/view/Menu;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1400(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/view/Menu;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/view/Menu;->close()V

    .line 2355
    :cond_8d1
    sget-object v20, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v17

    .line 2356
    .local v17, videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    if-nez v17, :cond_8e2

    .line 2357
    const-string v20, "MoviePlayer"

    const-string v21, "mStatusReceiver - headset is removed. surfaceView is null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44

    .line 2361
    :cond_8e2
    if-nez v5, :cond_901

    .line 2362
    const-string v20, "MoviePlayer"

    const-string v21, "mStatusReceiver - headset is removed."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2363
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setSRSeffect(I)V

    .line 2365
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    move-object/from16 v20, v0

    if-eqz v20, :cond_901

    .line 2366
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->updateSRSBtn()V

    .line 2369
    :cond_901
    invoke-virtual {v4}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v20

    if-nez v20, :cond_44

    if-nez v5, :cond_44

    .line 2371
    :try_start_909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$900(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    move-result-object v20

    if-eqz v20, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$900(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isPlaying()Z

    move-result v20

    if-eqz v20, :cond_44

    .line 2372
    sget-boolean v20, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPauseEnable:Z

    if-eqz v20, :cond_94d

    .line 2373
    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->pause()V
    :try_end_92c
    .catch Landroid/os/RemoteException; {:try_start_909 .. :try_end_92c} :catch_92e

    goto/16 :goto_44

    .line 2377
    :catch_92e
    move-exception v6

    .line 2378
    .restart local v6       #e:Landroid/os/RemoteException;
    const-string v20, "MoviePlayer"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Headset is removed : RemoteException"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44

    .line 2375
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_94d
    :try_start_94d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$900(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->stop()V
    :try_end_95a
    .catch Landroid/os/RemoteException; {:try_start_94d .. :try_end_95a} :catch_92e

    goto/16 :goto_44

    .line 2383
    .end local v4           #audioManager:Landroid/media/AudioManager;
    .end local v5           #bFromBT:Z
    .end local v17           #videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :cond_95c
    const-string v20, "android.intent.action.TIME_TICK"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_970

    const-string v20, "android.intent.action.TIME_SET"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_99a

    .line 2385
    :cond_970
    const-string v20, "MoviePlayer"

    const-string v21, "ACTION_TIME_TICK"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    const/16 v16, 0x0

    .line 2390
    .restart local v16       #videoSurfaceView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :try_start_979
    sget-object v20, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :try_end_97e
    .catch Ljava/lang/Exception; {:try_start_979 .. :try_end_97e} :catch_994

    move-result-object v16

    .line 2396
    if-eqz v16, :cond_44

    const/16 v20, 0x3

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->isCurrentPlayerState(I)Z

    move-result v20

    if-nez v20, :cond_44

    .line 2397
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->isControlsShowing()Z

    move-result v20

    if-eqz v20, :cond_44

    .line 2398
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->updateClock()V

    goto/16 :goto_44

    .line 2391
    :catch_994
    move-exception v6

    .line 2392
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_44

    .line 2401
    .end local v6           #e:Ljava/lang/Exception;
    .end local v16           #videoSurfaceView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :cond_99a
    const-string v20, "android.intent.action.TIMEZONE_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9cc

    .line 2402
    sget-object v20, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v16

    .line 2403
    .restart local v16       #videoSurfaceView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->isControlsShowing()Z

    move-result v20

    if-eqz v20, :cond_44

    .line 2404
    const-string v20, "time-zone"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2405
    .local v15, tz:Ljava/lang/String;
    invoke-static {v15}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v10

    .line 2406
    .local v10, mCalendar:Ljava/util/Calendar;
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->setTimeZone(Ljava/util/Calendar;)V

    .line 2407
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->updateClock()V

    goto/16 :goto_44

    .line 2410
    .end local v10           #mCalendar:Ljava/util/Calendar;
    .end local v15           #tz:Ljava/lang/String;
    .end local v16           #videoSurfaceView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :cond_9cc
    const-string v20, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a97

    .line 2411
    const-string v20, "android.bluetooth.profile.extra.STATE"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 2412
    .local v13, sinkState:I
    const-string v20, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 2414
    .local v12, previousSinkState:I
    const-string v20, "MoviePlayer"

    const-string v21, "ACTION_CONNECTION_STATE_CHANGED %d->%d"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    if-eqz v13, :cond_a1d

    const/16 v20, 0x3

    move/from16 v0, v20

    if-ne v13, v0, :cond_44

    .line 2418
    :cond_a1d
    sget-object v20, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v17

    .line 2420
    .restart local v17       #videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    if-nez v17, :cond_a2e

    .line 2421
    const-string v20, "MoviePlayer"

    const-string v21, "mStatusReceiver - bt headset is off. surfaceView is null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44

    .line 2425
    :cond_a2e
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setSRSeffect(I)V

    .line 2427
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a44

    .line 2428
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->updateSRSBtn()V

    .line 2431
    :cond_a44
    :try_start_a44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$900(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    move-result-object v20

    if-eqz v20, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$900(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isPlaying()Z

    move-result v20

    if-eqz v20, :cond_44

    .line 2432
    sget-boolean v20, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPauseEnable:Z

    if-eqz v20, :cond_a88

    .line 2433
    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->pause()V
    :try_end_a67
    .catch Ljava/lang/Exception; {:try_start_a44 .. :try_end_a67} :catch_a69

    goto/16 :goto_44

    .line 2437
    :catch_a69
    move-exception v6

    .line 2438
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v20, "MoviePlayer"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Headset is removed : RemoteException"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44

    .line 2435
    .end local v6           #e:Ljava/lang/Exception;
    :cond_a88
    :try_start_a88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$900(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->stop()V
    :try_end_a95
    .catch Ljava/lang/Exception; {:try_start_a88 .. :try_end_a95} :catch_a69

    goto/16 :goto_44

    .line 2443
    .end local v12           #previousSinkState:I
    .end local v13           #sinkState:I
    .end local v17           #videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :cond_a97
    const-string v20, "android.intent.action.USER_PRESENT"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_ad8

    .line 2444
    const-string v20, "MoviePlayer"

    const-string v21, "mStatusReceiver - USER_PRESENT. send resumePlayback message delayed to wait for end of waking"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mHandler:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2400(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/os/Handler;

    move-result-object v20

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 2446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mHandler:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2400(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/os/Handler;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v21, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2400(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/os/Handler;

    move-result-object v21

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    const-wide/16 v22, 0xc8

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_44

    .line 2447
    :cond_ad8
    const-string v20, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b68

    .line 2448
    const-string v20, "MoviePlayer"

    const-string v21, "SIM_STATE_CHANGED"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2449
    const-string v20, "reason"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2450
    .local v9, lockedReason:Ljava/lang/String;
    const-string v20, "MoviePlayer"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "locked Reason : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    const-string v20, "PIN"

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_44

    .line 2455
    const-string v20, "MoviePlayer"

    const-string v21, "isLockScreenview"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2458
    :try_start_b1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$900(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    move-result-object v20

    if-eqz v20, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$900(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isPlaying()Z

    move-result v20

    if-eqz v20, :cond_44

    .line 2459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$900(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->pause()V
    :try_end_b47
    .catch Landroid/os/RemoteException; {:try_start_b1e .. :try_end_b47} :catch_b49

    goto/16 :goto_44

    .line 2460
    :catch_b49
    move-exception v6

    .line 2461
    .local v6, e:Landroid/os/RemoteException;
    const-string v20, "MoviePlayer"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "createSendViaPopup(): RemoteException"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44

    .line 2464
    .end local v6           #e:Landroid/os/RemoteException;
    .end local v9           #lockedReason:Ljava/lang/String;
    :cond_b68
    const-string v20, "android.intent.action.PALM_DOWN"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_44

    .line 2465
    sget-object v20, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v16

    .line 2466
    .restart local v16       #videoSurfaceView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    sget-boolean v20, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPauseEnable:Z

    if-eqz v20, :cond_44

    if-eqz v16, :cond_44

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->isPlaying()Z

    move-result v20

    if-eqz v20, :cond_44

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getLockState()Z

    move-result v20

    if-nez v20, :cond_44

    .line 2467
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->pause()V

    goto/16 :goto_44
.end method
