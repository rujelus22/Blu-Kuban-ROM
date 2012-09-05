.class public Lcom/google/android/youtube/videos/honeycomb/WatchActivity;
.super Lcom/google/android/youtube/coreicecream/SingleControllerActivity;
.source "WatchActivity.java"


# instance fields
.field private controller:Lcom/google/android/youtube/videos/honeycomb/WatchController;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/youtube/coreicecream/SingleControllerActivity;-><init>()V

    return-void
.end method

.method public static createFullscreenIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 31
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/videos/honeycomb/WatchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/google/android/youtube/videos/honeycomb/WatchController;->createArguments(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 26
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/videos/honeycomb/WatchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/google/android/youtube/videos/honeycomb/WatchController;->createArguments(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createUriIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/videos/honeycomb/WatchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/google/android/youtube/videos/honeycomb/WatchController;->createArgumentsForUri(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected newController(Landroid/os/Bundle;)Lcom/google/android/youtube/coreicecream/Controller;
    .registers 7
    .parameter "launchBundle"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/honeycomb/WatchActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/videos/VideosApplication;

    .line 51
    .local v0, application:Lcom/google/android/youtube/videos/VideosApplication;
    invoke-virtual {v0}, Lcom/google/android/youtube/videos/VideosApplication;->getVideosPlatformUtil()Lcom/google/android/youtube/videos/VideosPlatformUtil;

    move-result-object v2

    .line 53
    .local v2, platform:Lcom/google/android/youtube/videos/VideosPlatformUtil;
    if-eqz p1, :cond_3d

    move-object v1, p1

    .line 54
    .local v1, bundle:Landroid/os/Bundle;
    :goto_d
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/honeycomb/WatchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 55
    const-string v3, "intercepted_uri"

    invoke-virtual {p0}, Lcom/google/android/youtube/videos/honeycomb/WatchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 58
    :cond_24
    invoke-virtual {v0}, Lcom/google/android/youtube/videos/VideosApplication;->getPlatformUtil()Lcom/google/android/youtube/core/PlatformUtil;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/google/android/youtube/core/PlatformUtil;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 59
    new-instance v3, Lcom/google/android/youtube/videos/honeycomb/tablet/WatchControllerImpl;

    new-instance v4, Lcom/google/android/youtube/videos/honeycomb/NavigationImpl;

    invoke-direct {v4, p0}, Lcom/google/android/youtube/videos/honeycomb/NavigationImpl;-><init>(Landroid/app/Activity;)V

    invoke-direct {v3, v0, p0, v4, v1}, Lcom/google/android/youtube/videos/honeycomb/tablet/WatchControllerImpl;-><init>(Lcom/google/android/youtube/videos/VideosApplication;Landroid/app/Activity;Lcom/google/android/youtube/videos/Navigation;Landroid/os/Bundle;)V

    iput-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/WatchActivity;->controller:Lcom/google/android/youtube/videos/honeycomb/WatchController;

    .line 66
    :goto_3a
    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/WatchActivity;->controller:Lcom/google/android/youtube/videos/honeycomb/WatchController;

    return-object v3

    .line 53
    .end local v1           #bundle:Landroid/os/Bundle;
    :cond_3d
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_d

    .line 62
    .restart local v1       #bundle:Landroid/os/Bundle;
    :cond_43
    new-instance v3, Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl;

    new-instance v4, Lcom/google/android/youtube/videos/honeycomb/NavigationImpl;

    invoke-direct {v4, p0}, Lcom/google/android/youtube/videos/honeycomb/NavigationImpl;-><init>(Landroid/app/Activity;)V

    invoke-direct {v3, v0, p0, v4, v1}, Lcom/google/android/youtube/videos/honeycomb/phone/WatchControllerImpl;-><init>(Lcom/google/android/youtube/videos/VideosApplication;Landroid/app/Activity;Lcom/google/android/youtube/videos/Navigation;Landroid/os/Bundle;)V

    iput-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/WatchActivity;->controller:Lcom/google/android/youtube/videos/honeycomb/WatchController;

    goto :goto_3a
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/google/android/youtube/coreicecream/SingleControllerActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 72
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/WatchActivity;->controller:Lcom/google/android/youtube/videos/honeycomb/WatchController;

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_f

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {v1, v0}, Lcom/google/android/youtube/videos/honeycomb/WatchController;->onOrientationChanged(Z)V

    .line 73
    return-void

    .line 72
    :cond_f
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/honeycomb/WatchActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 43
    invoke-super {p0, p1}, Lcom/google/android/youtube/coreicecream/SingleControllerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/videos/honeycomb/WatchActivity;->enableUpNavigation(Z)V

    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchActivity;->controller:Lcom/google/android/youtube/videos/honeycomb/WatchController;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/videos/honeycomb/WatchActivity;->addPaddingForActionBar(Lcom/google/android/youtube/coreicecream/Controller;)V

    .line 46
    return-void
.end method

.method protected onUpPressed()V
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchActivity;->controller:Lcom/google/android/youtube/videos/honeycomb/WatchController;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/honeycomb/WatchController;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_f

    .line 80
    invoke-static {p0}, Lcom/google/android/youtube/videos/honeycomb/VideosActivity;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/videos/honeycomb/WatchActivity;->startActivity(Landroid/content/Intent;)V

    .line 82
    :cond_f
    return-void
.end method
