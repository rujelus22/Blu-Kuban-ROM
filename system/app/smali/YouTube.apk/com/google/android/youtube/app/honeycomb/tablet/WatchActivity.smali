.class public Lcom/google/android/youtube/app/honeycomb/tablet/WatchActivity;
.super Lcom/google/android/youtube/coreicecream/SingleControllerActivity;
.source "SourceFile"


# instance fields
.field private m:Lcom/google/android/youtube/app/honeycomb/tablet/ag;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/youtube/coreicecream/SingleControllerActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;IZLcom/google/android/youtube/core/b/aj;)Landroid/content/Intent;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/honeycomb/tablet/WatchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->a(Landroid/net/Uri;IZLcom/google/android/youtube/core/b/aj;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/youtube/core/b/aj;)Landroid/content/Intent;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/honeycomb/tablet/WatchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, p2, p3}, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->a(Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/youtube/core/b/aj;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/youtube/core/b/aj;)Landroid/content/Intent;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/honeycomb/tablet/WatchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, p2}, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->a(Ljava/lang/String;Lcom/google/android/youtube/core/b/aj;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZLcom/google/android/youtube/core/b/aj;)Landroid/content/Intent;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/honeycomb/tablet/WatchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, p2, p3}, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->a(Ljava/lang/String;ZLcom/google/android/youtube/core/b/aj;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/os/Bundle;)Lcom/google/android/youtube/coreicecream/Controller;
    .registers 5
    .parameter

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/WatchActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 65
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/WatchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 66
    if-nez p1, :cond_17

    .line 67
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 69
    :cond_17
    const-string v1, "intercepted_uri"

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/WatchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 71
    :cond_24
    new-instance v1, Lcom/google/android/youtube/app/honeycomb/tablet/ag;

    new-instance v2, Lcom/google/android/youtube/app/honeycomb/tablet/ad;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ad;-><init>(Landroid/app/Activity;)V

    invoke-direct {v1, v0, p0, v2, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/ag;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/a;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/WatchActivity;->m:Lcom/google/android/youtube/app/honeycomb/tablet/ag;

    .line 72
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/WatchActivity;->m:Lcom/google/android/youtube/app/honeycomb/tablet/ag;

    return-object v0
.end method

.method protected final e()V
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/WatchActivity;->m:Lcom/google/android/youtube/app/honeycomb/tablet/ag;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->l()Z

    move-result v0

    if-nez v0, :cond_f

    .line 86
    invoke-static {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/tablet/WatchActivity;->startActivity(Landroid/content/Intent;)V

    .line 88
    :cond_f
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/google/android/youtube/coreicecream/SingleControllerActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 78
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/WatchActivity;->m:Lcom/google/android/youtube/app/honeycomb/tablet/ag;

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_f

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->a(Z)V

    .line 79
    return-void

    .line 78
    :cond_f
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/WatchActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 57
    invoke-super {p0, p1}, Lcom/google/android/youtube/coreicecream/SingleControllerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/tablet/WatchActivity;->b(Z)V

    .line 59
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/WatchActivity;->m:Lcom/google/android/youtube/app/honeycomb/tablet/ag;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/tablet/WatchActivity;->d(Lcom/google/android/youtube/coreicecream/Controller;)V

    .line 60
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3
    .parameter

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/google/android/youtube/coreicecream/SingleControllerActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 93
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/WatchActivity;->m:Lcom/google/android/youtube/app/honeycomb/tablet/ag;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->a(Landroid/content/Intent;)V

    .line 94
    return-void
.end method
