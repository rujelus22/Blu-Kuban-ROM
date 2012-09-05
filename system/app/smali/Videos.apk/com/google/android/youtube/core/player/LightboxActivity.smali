.class public Lcom/google/android/youtube/core/player/LightboxActivity;
.super Landroid/app/Activity;
.source "LightboxActivity.java"

# interfaces
.implements Lcom/google/android/youtube/core/player/Director$Listener;


# instance fields
.field private adsClient:Lcom/google/android/youtube/core/client/AdsClient;

.field private application:Lcom/google/android/youtube/core/BaseApplication;

.field private controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

.field private director:Lcom/google/android/youtube/core/player/Director;

.field private gDataClient:Lcom/google/android/youtube/core/client/GDataClient;

.field private player:Lcom/google/android/youtube/core/player/YouTubePlayer;

.field private playerView:Lcom/google/android/youtube/core/player/PlayerView;

.field private statsClient:Lcom/google/android/youtube/core/client/StatsClient;

.field private subtitlesClient:Lcom/google/android/youtube/core/client/SubtitlesClient;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 1

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 102
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/LightboxActivity;->finish()V

    .line 103
    return-void
.end method

.method public onBranding(Lcom/google/android/youtube/core/model/Branding;)V
    .registers 2
    .parameter "branding"

    .prologue
    .line 122
    return-void
.end method

.method public onControllerHidden()V
    .registers 1

    .prologue
    .line 119
    return-void
.end method

.method public onControllerShown()V
    .registers 1

    .prologue
    .line 107
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 20
    .parameter "savedInstanceState"

    .prologue
    .line 49
    const v1, 0x7f0c0003

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/LightboxActivity;->setTheme(I)V

    .line 51
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/core/player/LightboxActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    .line 54
    .local v15, extras:Landroid/os/Bundle;
    if-eqz v15, :cond_fa

    const-string v1, "video_id"

    invoke-virtual {v15, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 56
    .local v16, videoId:Ljava/lang/String;
    :goto_1b
    const v1, 0x7f040003

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/LightboxActivity;->setContentView(I)V

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/core/player/LightboxActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v17

    .line 60
    .local v17, windowAttributes:Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x0

    move-object/from16 v0, v17

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/core/player/LightboxActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/core/player/LightboxActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/BaseApplication;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/core/player/LightboxActivity;->application:Lcom/google/android/youtube/core/BaseApplication;

    .line 64
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/core/player/LightboxActivity;->application:Lcom/google/android/youtube/core/BaseApplication;

    check-cast v1, Lcom/google/android/youtube/core/client/GDataClient$Provider;

    invoke-interface {v1}, Lcom/google/android/youtube/core/client/GDataClient$Provider;->getGDataClient()Lcom/google/android/youtube/core/client/GDataClient;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/core/player/LightboxActivity;->gDataClient:Lcom/google/android/youtube/core/client/GDataClient;

    .line 65
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/core/player/LightboxActivity;->application:Lcom/google/android/youtube/core/BaseApplication;

    check-cast v1, Lcom/google/android/youtube/core/client/AdsClient$Provider;

    invoke-interface {v1}, Lcom/google/android/youtube/core/client/AdsClient$Provider;->getAdsClient()Lcom/google/android/youtube/core/client/AdsClient;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/core/player/LightboxActivity;->adsClient:Lcom/google/android/youtube/core/client/AdsClient;

    .line 66
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/core/player/LightboxActivity;->application:Lcom/google/android/youtube/core/BaseApplication;

    check-cast v1, Lcom/google/android/youtube/core/client/StatsClient$Provider;

    invoke-interface {v1}, Lcom/google/android/youtube/core/client/StatsClient$Provider;->getStatsClient()Lcom/google/android/youtube/core/client/StatsClient;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/core/player/LightboxActivity;->statsClient:Lcom/google/android/youtube/core/client/StatsClient;

    .line 67
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/core/player/LightboxActivity;->application:Lcom/google/android/youtube/core/BaseApplication;

    check-cast v1, Lcom/google/android/youtube/core/client/SubtitlesClient$Provider;

    invoke-interface {v1}, Lcom/google/android/youtube/core/client/SubtitlesClient$Provider;->getSubtitlesClient()Lcom/google/android/youtube/core/client/SubtitlesClient;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/core/player/LightboxActivity;->subtitlesClient:Lcom/google/android/youtube/core/client/SubtitlesClient;

    .line 69
    new-instance v1, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/core/player/LightboxActivity;->application:Lcom/google/android/youtube/core/BaseApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/BaseApplication;->getAnalytics()Lcom/google/android/youtube/core/Analytics;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/Analytics;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/core/player/LightboxActivity;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    .line 70
    const v1, 0x7f0d000b

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/LightboxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/player/PlayerView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/core/player/LightboxActivity;->playerView:Lcom/google/android/youtube/core/player/PlayerView;

    .line 71
    new-instance v1, Lcom/google/android/youtube/core/player/YouTubePlayer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/core/player/LightboxActivity;->playerView:Lcom/google/android/youtube/core/player/PlayerView;

    invoke-direct {v1, v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;-><init>(Lcom/google/android/youtube/core/player/PlayerView;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/core/player/LightboxActivity;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    .line 73
    new-instance v1, Lcom/google/android/youtube/core/player/Director;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/core/player/LightboxActivity;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/core/player/LightboxActivity;->application:Lcom/google/android/youtube/core/BaseApplication;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/BaseApplication;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/core/player/LightboxActivity;->gDataClient:Lcom/google/android/youtube/core/client/GDataClient;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/core/player/LightboxActivity;->adsClient:Lcom/google/android/youtube/core/client/AdsClient;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/core/player/LightboxActivity;->statsClient:Lcom/google/android/youtube/core/client/StatsClient;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/youtube/core/player/LightboxActivity;->subtitlesClient:Lcom/google/android/youtube/core/client/SubtitlesClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/core/player/LightboxActivity;->application:Lcom/google/android/youtube/core/BaseApplication;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/BaseApplication;->getUserAuthorizer()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/core/player/LightboxActivity;->application:Lcom/google/android/youtube/core/BaseApplication;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/BaseApplication;->getAnalytics()Lcom/google/android/youtube/core/Analytics;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/core/player/LightboxActivity;->application:Lcom/google/android/youtube/core/BaseApplication;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/BaseApplication;->getRevShareClientId()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/youtube/core/player/LightboxActivity;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    const/4 v14, 0x0

    move-object/from16 v3, p0

    move-object/from16 v12, p0

    invoke-direct/range {v1 .. v14}, Lcom/google/android/youtube/core/player/Director;-><init>(Lcom/google/android/youtube/core/player/YouTubePlayer;Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/client/GDataClient;Lcom/google/android/youtube/core/client/AdsClient;Lcom/google/android/youtube/core/client/StatsClient;Lcom/google/android/youtube/core/client/SubtitlesClient;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/Analytics;Ljava/lang/String;Lcom/google/android/youtube/core/player/Director$Listener;Lcom/google/android/youtube/core/player/ControllerOverlay;Lcom/google/android/youtube/core/player/BrandingOverlay;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/core/player/LightboxActivity;->director:Lcom/google/android/youtube/core/player/Director;

    .line 78
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/core/player/LightboxActivity;->director:Lcom/google/android/youtube/core/player/Director;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/player/Director;->initVideo(Ljava/lang/String;)V

    .line 79
    return-void

    .line 54
    .end local v16           #videoId:Ljava/lang/String;
    .end local v17           #windowAttributes:Landroid/view/WindowManager$LayoutParams;
    :cond_fa
    const/16 v16, 0x0

    goto/16 :goto_1b
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/youtube/core/player/LightboxActivity;->director:Lcom/google/android/youtube/core/player/Director;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Director;->release()V

    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 92
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .registers 2
    .parameter "exception"

    .prologue
    .line 113
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 84
    iget-object v0, p0, Lcom/google/android/youtube/core/player/LightboxActivity;->director:Lcom/google/android/youtube/core/player/Director;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Director;->setStopped()V

    .line 85
    iget-object v0, p0, Lcom/google/android/youtube/core/player/LightboxActivity;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->blockingStopVideo()V

    .line 86
    return-void
.end method

.method public onReset()V
    .registers 1

    .prologue
    .line 116
    return-void
.end method

.method public onToggleFullscreen(Z)V
    .registers 2
    .parameter "fullscreen"

    .prologue
    .line 97
    return-void
.end method

.method public onVideo(Lcom/google/android/youtube/core/model/Video;)V
    .registers 2
    .parameter "video"

    .prologue
    .line 110
    return-void
.end method
