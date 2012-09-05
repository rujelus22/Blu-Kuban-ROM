.class final Lcom/sec/android/app/videoplayer/util/VideoUtil$1;
.super Ljava/lang/Object;
.source "VideoUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/util/VideoUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1104
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    const-wide/16 v10, 0xfa

    const/16 v9, 0xbb8

    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 1106
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getStateView()Lcom/sec/android/app/videoplayer/view/VideoStateView;

    move-result-object v1

    .line 1107
    .local v1, stateView:Lcom/sec/android/app/videoplayer/view/VideoStateView;
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v2

    .line 1109
    .local v2, videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v3, :cond_b3

    if-eqz v1, :cond_b3

    .line 1111
    :try_start_1a
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v3}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 1112
    const-string v3, "VideoUtil"

    const-string v4, "mPlayingChecker..playing"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_34

    .line 1115
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->setVisibility(I)V

    .line 1117
    :cond_34
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->stopPlayingChecker()V

    .line 1161
    :goto_37
    return-void

    .line 1119
    :cond_38
    const-string v3, "VideoUtil"

    const-string v4, "mPlayingChecker..not playing"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    if-eqz v2, :cond_46

    .line 1122
    const/16 v3, 0xbb8

    invoke-virtual {v2, v3}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->showControls(I)V

    .line 1124
    :cond_46
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getVisibility()I

    move-result v3

    if-ne v3, v7, :cond_a4

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getPlayerState()I

    move-result v3

    if-eq v3, v12, :cond_a4

    .line 1125
    const-string v3, "VideoUtil"

    const-string v4, "mPlayingChecker"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->setVisibility(I)V

    .line 1132
    :goto_5d
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->access$000()Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPlayingChecker:Ljava/lang/Runnable;

    const-wide/16 v5, 0xfa

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_68} :catch_69

    goto :goto_37

    .line 1134
    :catch_69
    move-exception v0

    .line 1135
    .local v0, e:Landroid/os/RemoteException;
    if-eqz v2, :cond_6f

    .line 1136
    invoke-virtual {v2, v9}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->showControls(I)V

    .line 1138
    :cond_6f
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getVisibility()I

    move-result v3

    if-ne v3, v7, :cond_af

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getPlayerState()I

    move-result v3

    if-eq v3, v12, :cond_af

    .line 1139
    invoke-virtual {v1, v8}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->setVisibility(I)V

    .line 1143
    :goto_7e
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->access$000()Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPlayingChecker:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1144
    const-string v3, "VideoUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPlayingChecker - RemoteException occured :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 1128
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_a4
    :try_start_a4
    const-string v3, "VideoUtil"

    const-string v4, "mPlayingChecker doRefreshIcon"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->doRefreshIcon()V
    :try_end_ae
    .catch Landroid/os/RemoteException; {:try_start_a4 .. :try_end_ae} :catch_69

    goto :goto_5d

    .line 1141
    .restart local v0       #e:Landroid/os/RemoteException;
    :cond_af
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->doRefreshIcon()V

    goto :goto_7e

    .line 1147
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_b3
    const-string v3, "VideoUtil"

    const-string v4, "mPlayingChecker..service not created"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    if-eqz v2, :cond_bf

    .line 1150
    invoke-virtual {v2, v9}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->showControls(I)V

    .line 1152
    :cond_bf
    if-eqz v1, :cond_ca

    .line 1153
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getVisibility()I

    move-result v3

    if-ne v3, v7, :cond_d5

    .line 1154
    invoke-virtual {v1, v8}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->setVisibility(I)V

    .line 1159
    :cond_ca
    :goto_ca
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->access$000()Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPlayingChecker:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_37

    .line 1156
    :cond_d5
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->doRefreshIcon()V

    goto :goto_ca
.end method
