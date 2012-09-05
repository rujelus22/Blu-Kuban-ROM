.class Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$3;
.super Landroid/content/BroadcastReceiver;
.source "MoviePlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)V
    .registers 2
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$3;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 308
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, action:Ljava/lang/String;
    const-string v5, "MoviePlaybackService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mBroadcastListener action "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const-string v5, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 312
    const-string v5, "from"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, info:Ljava/lang/String;
    if-eqz v2, :cond_36

    const-string v5, "com.sec.android.app.videoplayer"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 358
    .end local v2           #info:Ljava/lang/String;
    :cond_36
    :goto_36
    return-void

    .line 317
    .restart local v2       #info:Ljava/lang/String;
    :cond_37
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$3;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v5}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 318
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$3;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v5}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->pause()V

    goto :goto_36

    .line 319
    .end local v2           #info:Ljava/lang/String;
    :cond_45
    const-string v5, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 320
    const/4 v3, 0x0

    .line 322
    .local v3, movieVolume:F
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$3;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$900(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/media/AudioManager;

    move-result-object v5

    if-eqz v5, :cond_77

    .line 324
    const-string v5, "state"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_d8

    .line 325
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$3;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$900(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/media/AudioManager;->setBluetoothA2dpForceOn(Z)V

    .line 329
    :goto_67
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$3;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$900(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/media/AudioManager;

    move-result-object v5

    const-string v6, "situation=7;device=0"

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 333
    :cond_77
    const-string v5, "MoviePlaybackService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mBroadcastListener : setVolume ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] for new Device"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$3;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$100(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    move-result-object v5

    if-eqz v5, :cond_a6

    .line 336
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$3;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$100(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->setVolume(F)V

    .line 339
    :cond_a6
    const/4 v4, 0x0

    .line 340
    .local v4, surface:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :try_start_a7
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    if-eqz v5, :cond_b1

    .line 341
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v5}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v4

    .line 343
    :cond_b1
    if-eqz v4, :cond_36

    iget-object v5, v4, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    if-eqz v5, :cond_36

    .line 345
    iget-object v5, v4, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setVolumeBarVisible(Z)V

    .line 347
    iget-object v5, v4, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_36

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$3;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v5}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 348
    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->forceHideContols()V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_d0} :catch_d2

    goto/16 :goto_36

    .line 354
    :catch_d2
    move-exception v1

    .line 355
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_36

    .line 327
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #surface:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :cond_d8
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$3;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$900(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/media/AudioManager;->setBluetoothA2dpForceOn(Z)V

    goto :goto_67
.end method
