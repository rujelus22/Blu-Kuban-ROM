.class public Lcom/google/android/youtube/videos/honeycomb/VideosActivity;
.super Lcom/google/android/youtube/coreicecream/TabbedControllersActivity;
.source "VideosActivity.java"


# instance fields
.field private localVideosController:Lcom/google/android/youtube/videos/honeycomb/LocalVideosController;

.field private navigation:Lcom/google/android/youtube/videos/Navigation;

.field private rentalsController:Lcom/google/android/youtube/videos/honeycomb/RentalsController;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/youtube/coreicecream/TabbedControllersActivity;-><init>()V

    return-void
.end method

.method public static createIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .parameter

    .prologue
    .line 33
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/videos/honeycomb/VideosActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createRentalsIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 4
    .parameter "context"

    .prologue
    .line 44
    invoke-static {p0}, Lcom/google/android/youtube/videos/honeycomb/VideosActivity;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "selected_controller_index"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7
    .parameter "newConfig"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 117
    invoke-super {p0, p1}, Lcom/google/android/youtube/coreicecream/TabbedControllersActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 118
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1f

    move v0, v1

    .line 119
    .local v0, landscape:Z
    :goto_b
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/honeycomb/VideosActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-nez v0, :cond_21

    :goto_11
    invoke-virtual {v3, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 120
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/VideosActivity;->rentalsController:Lcom/google/android/youtube/videos/honeycomb/RentalsController;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->onOrientationChanged(Z)V

    .line 121
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/VideosActivity;->localVideosController:Lcom/google/android/youtube/videos/honeycomb/LocalVideosController;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/videos/honeycomb/LocalVideosController;->onOrientationChanged(Z)V

    .line 122
    return-void

    .end local v0           #landscape:Z
    :cond_1f
    move v0, v2

    .line 118
    goto :goto_b

    .restart local v0       #landscape:Z
    :cond_21
    move v1, v2

    .line 119
    goto :goto_11
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 57
    invoke-super {p0, p1}, Lcom/google/android/youtube/coreicecream/TabbedControllersActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/honeycomb/VideosActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/videos/VideosApplication;

    .line 59
    .local v0, application:Lcom/google/android/youtube/videos/VideosApplication;
    new-instance v3, Lcom/google/android/youtube/videos/honeycomb/NavigationImpl;

    invoke-direct {v3, p0}, Lcom/google/android/youtube/videos/honeycomb/NavigationImpl;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/VideosActivity;->navigation:Lcom/google/android/youtube/videos/Navigation;

    .line 61
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/honeycomb/VideosActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 63
    .local v1, launchBundle:Landroid/os/Bundle;
    invoke-virtual {v0}, Lcom/google/android/youtube/videos/VideosApplication;->getPlatformUtil()Lcom/google/android/youtube/core/PlatformUtil;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/google/android/youtube/core/PlatformUtil;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 64
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/videos/honeycomb/VideosActivity;->setRequestedOrientation(I)V

    .line 65
    new-instance v2, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;

    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/VideosActivity;->navigation:Lcom/google/android/youtube/videos/Navigation;

    invoke-direct {v2, v0, p0, v3, v1}, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;-><init>(Lcom/google/android/youtube/videos/VideosApplication;Landroid/app/Activity;Lcom/google/android/youtube/videos/Navigation;Landroid/os/Bundle;)V

    iput-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/VideosActivity;->rentalsController:Lcom/google/android/youtube/videos/honeycomb/RentalsController;

    .line 68
    new-instance v2, Lcom/google/android/youtube/videos/honeycomb/tablet/LocalVideosControllerImpl;

    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/VideosActivity;->navigation:Lcom/google/android/youtube/videos/Navigation;

    invoke-direct {v2, v0, p0, v3, v1}, Lcom/google/android/youtube/videos/honeycomb/tablet/LocalVideosControllerImpl;-><init>(Lcom/google/android/youtube/videos/VideosApplication;Landroid/app/Activity;Lcom/google/android/youtube/videos/Navigation;Landroid/os/Bundle;)V

    iput-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/VideosActivity;->localVideosController:Lcom/google/android/youtube/videos/honeycomb/LocalVideosController;

    .line 83
    :goto_39
    const v2, 0x7f0b0094

    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/VideosActivity;->rentalsController:Lcom/google/android/youtube/videos/honeycomb/RentalsController;

    invoke-virtual {p0, v2, v3, p1}, Lcom/google/android/youtube/videos/honeycomb/VideosActivity;->addController(ILcom/google/android/youtube/coreicecream/Controller;Landroid/os/Bundle;)V

    .line 84
    const v2, 0x7f0b0095

    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/VideosActivity;->localVideosController:Lcom/google/android/youtube/videos/honeycomb/LocalVideosController;

    invoke-virtual {p0, v2, v3, p1}, Lcom/google/android/youtube/videos/honeycomb/VideosActivity;->addController(ILcom/google/android/youtube/coreicecream/Controller;Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/honeycomb/VideosActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/videos/honeycomb/VideosActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 89
    invoke-static {p0}, Lcom/google/android/youtube/videos/honeycomb/VideosActivity;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/videos/honeycomb/VideosActivity;->setIntent(Landroid/content/Intent;)V

    .line 90
    return-void

    .line 72
    :cond_58
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/honeycomb/VideosActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/youtube/videos/honeycomb/VideosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v2, :cond_88

    :goto_68
    invoke-virtual {v3, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/honeycomb/VideosActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const v3, 0x7f0b0090

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(I)V

    .line 75
    new-instance v2, Lcom/google/android/youtube/videos/honeycomb/phone/RentalsControllerImpl;

    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/VideosActivity;->navigation:Lcom/google/android/youtube/videos/Navigation;

    invoke-direct {v2, v0, p0, v3, v1}, Lcom/google/android/youtube/videos/honeycomb/phone/RentalsControllerImpl;-><init>(Lcom/google/android/youtube/videos/VideosApplication;Landroid/app/Activity;Lcom/google/android/youtube/videos/Navigation;Landroid/os/Bundle;)V

    iput-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/VideosActivity;->rentalsController:Lcom/google/android/youtube/videos/honeycomb/RentalsController;

    .line 78
    new-instance v2, Lcom/google/android/youtube/videos/honeycomb/phone/LocalVideosControllerImpl;

    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/VideosActivity;->navigation:Lcom/google/android/youtube/videos/Navigation;

    invoke-direct {v2, v0, p0, v3, v1}, Lcom/google/android/youtube/videos/honeycomb/phone/LocalVideosControllerImpl;-><init>(Lcom/google/android/youtube/videos/VideosApplication;Landroid/app/Activity;Lcom/google/android/youtube/videos/Navigation;Landroid/os/Bundle;)V

    iput-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/VideosActivity;->localVideosController:Lcom/google/android/youtube/videos/honeycomb/LocalVideosController;

    goto :goto_39

    .line 72
    :cond_88
    const/4 v2, 0x0

    goto :goto_68
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    .line 94
    const-string v1, "authAccount"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 95
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/VideosActivity;->rentalsController:Lcom/google/android/youtube/videos/honeycomb/RentalsController;

    const-string v2, "authAccount"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->init(Ljava/lang/String;)V

    .line 98
    :cond_13
    const/4 v0, 0x0

    .line 99
    .local v0, defaultToRentalsTab:Z
    const-string v1, "offline_mode"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 100
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/VideosActivity;->rentalsController:Lcom/google/android/youtube/videos/honeycomb/RentalsController;

    const-string v2, "offline_mode"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->setOfflineManagement(Z)V

    .line 101
    const/4 v0, 0x1

    .line 103
    :cond_29
    const-string v1, "download_video_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 104
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/VideosActivity;->rentalsController:Lcom/google/android/youtube/videos/honeycomb/RentalsController;

    const-string v2, "download_video_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->pinVideo(Ljava/lang/String;Z)V

    .line 105
    const/4 v0, 0x1

    .line 108
    :cond_3e
    const-string v1, "selected_controller_index"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 109
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/videos/honeycomb/VideosActivity;->selectControllerFromExtras(Landroid/os/Bundle;)V

    .line 113
    :cond_4d
    :goto_4d
    return-void

    .line 110
    :cond_4e
    if-eqz v0, :cond_4d

    .line 111
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/VideosActivity;->rentalsController:Lcom/google/android/youtube/videos/honeycomb/RentalsController;

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/videos/honeycomb/VideosActivity;->selectController(Lcom/google/android/youtube/coreicecream/Controller;)V

    goto :goto_4d
.end method
