.class public Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl;
.super Lcom/google/android/youtube/videos/honeycomb/WatchController;
.source "WatchControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl$WatchInfoHelperImpl;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/videos/VideosApplication;Landroid/app/Activity;Lcom/google/android/youtube/videos/Navigation;Landroid/os/Bundle;)V
    .registers 6
    .parameter "application"
    .parameter "activity"
    .parameter "navigation"
    .parameter "launchBundle"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/youtube/videos/honeycomb/WatchController;-><init>(Lcom/google/android/youtube/videos/VideosApplication;Landroid/app/Activity;Lcom/google/android/youtube/videos/Navigation;Landroid/os/Bundle;)V

    .line 43
    invoke-direct {p0}, Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x6

    :goto_a
    invoke-virtual {p2, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 46
    return-void

    .line 43
    :cond_e
    const/4 v0, 0x7

    goto :goto_a
.end method

.method private isLandscape()Z
    .registers 3

    .prologue
    .line 114
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 115
    .local v0, orientation:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    const/4 v1, 0x1

    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private shouldLockFullscreenMode()Z
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl;->hdmiReceiver:Lcom/google/android/youtube/core/utils/HdmiReceiver;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/HdmiReceiver;->isHdmiPlugged()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl;->dockReceiver:Lcom/google/android/youtube/core/utils/DockReceiver;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/DockReceiver;->getDockState()I

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method protected createWatchInfoHelper(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/videos/store/PurchaseStore;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/plus1/PlusOneClient;)Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;
    .registers 13
    .parameter "activity"
    .parameter "watchView"
    .parameter "purchaseStore"
    .parameter "userAuthorizer"
    .parameter "plusOneClient"

    .prologue
    .line 60
    new-instance v0, Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl$WatchInfoHelperImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl$WatchInfoHelperImpl;-><init>(Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl;Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/videos/store/PurchaseStore;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/plus1/PlusOneClient;)V

    return-object v0
.end method

.method protected getTabLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 5

    .prologue
    .line 66
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/high16 v3, 0x3f80

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    return-object v0
.end method

.method protected isFullscreenOnCreate(Landroid/os/Bundle;)Z
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 50
    if-nez p1, :cond_1a

    invoke-virtual {p0}, Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "fullscreen"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 51
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "fullscreen"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 53
    :goto_19
    return v0

    :cond_1a
    invoke-direct {p0}, Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl;->isLandscape()Z

    move-result v0

    goto :goto_19
.end method

.method protected layoutForFullscreen()V
    .registers 4

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl;->shouldLockFullscreenMode()Z

    move-result v1

    if-nez v1, :cond_13

    .line 82
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl;->activity:Landroid/app/Activity;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 83
    invoke-direct {p0}, Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl;->isLandscape()Z

    move-result v1

    if-nez v1, :cond_13

    .line 94
    :goto_12
    return-void

    .line 89
    :cond_13
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl;->playerView:Lcom/google/android/youtube/core/player/PlayerView;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/PlayerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 91
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 93
    invoke-super {p0}, Lcom/google/android/youtube/videos/honeycomb/WatchController;->layoutForFullscreen()V

    goto :goto_12
.end method

.method protected layoutForWindowed()V
    .registers 4

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl;->shouldLockFullscreenMode()Z

    move-result v1

    if-nez v1, :cond_13

    .line 99
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl;->activity:Landroid/app/Activity;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 100
    invoke-direct {p0}, Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 111
    :goto_12
    return-void

    .line 106
    :cond_13
    invoke-super {p0}, Lcom/google/android/youtube/videos/honeycomb/WatchController;->layoutForWindowed()V

    .line 108
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl;->playerView:Lcom/google/android/youtube/core/player/PlayerView;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/PlayerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 110
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_12
.end method

.method public onDockState(I)V
    .registers 2
    .parameter "dockState"

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/google/android/youtube/videos/honeycomb/WatchController;->onDockState(I)V

    .line 127
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl;->updateLockFullscreenMode()V

    .line 128
    return-void
.end method

.method public onHdmiPluggedState(Z)V
    .registers 2
    .parameter "plugged"

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/google/android/youtube/videos/honeycomb/WatchController;->onHdmiPluggedState(Z)V

    .line 121
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl;->updateLockFullscreenMode()V

    .line 122
    return-void
.end method

.method public onOrientationChanged(Z)V
    .registers 3
    .parameter "landscape"

    .prologue
    .line 71
    if-eqz p1, :cond_b

    .line 72
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl;->layoutForFullscreen()V

    .line 76
    :goto_5
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 77
    return-void

    .line 74
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl;->layoutForWindowed()V

    goto :goto_5
.end method

.method public updateLockFullscreenMode()V
    .registers 4

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl;->shouldLockFullscreenMode()Z

    move-result v0

    .line 132
    .local v0, lockFullscreenMode:Z
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl;->setLockFullscreenMode(Z)V

    .line 133
    if-eqz v0, :cond_f

    .line 135
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl;->activity:Landroid/app/Activity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 137
    :cond_f
    return-void
.end method
