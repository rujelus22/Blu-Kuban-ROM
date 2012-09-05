.class public Lcom/google/android/youtube/videos/honeycomb/LauncherActivity;
.super Landroid/app/Activity;
.source "LauncherActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/honeycomb/LauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 29
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "authAccount"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, accountName:Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/youtube/videos/honeycomb/VideosActivity;->createRentalsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v6

    const/16 v7, 0x4000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "authAccount"

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 34
    .local v4, videosIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/google/android/youtube/videos/honeycomb/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 36
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/honeycomb/LauncherActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/videos/VideosApplication;

    .line 37
    .local v1, application:Lcom/google/android/youtube/videos/VideosApplication;
    invoke-virtual {v1}, Lcom/google/android/youtube/videos/VideosApplication;->getDrmManager()Lcom/google/android/youtube/videos/DrmManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/youtube/videos/DrmManager;->isDeviceRooted()Z

    move-result v6

    if-nez v6, :cond_48

    .line 38
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 39
    .local v3, interceptedUri:Landroid/net/Uri;
    invoke-static {p0, v3}, Lcom/google/android/youtube/videos/honeycomb/WatchActivity;->createUriIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "fullscreen"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "authAccount"

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 42
    .local v5, watchIntent:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/google/android/youtube/videos/honeycomb/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 45
    .end local v3           #interceptedUri:Landroid/net/Uri;
    .end local v5           #watchIntent:Landroid/content/Intent;
    :cond_48
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/honeycomb/LauncherActivity;->finish()V

    .line 46
    return-void
.end method
