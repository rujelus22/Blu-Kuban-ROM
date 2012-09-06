.class public Lcom/google/android/youtube/app/honeycomb/tablet/PlaylistActivity;
.super Lcom/google/android/youtube/coreicecream/SingleControllerActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/android/youtube/coreicecream/SingleControllerActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/honeycomb/tablet/PlaylistActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "playlist_uri"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "authenticate"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/os/Bundle;)Lcom/google/android/youtube/coreicecream/Controller;
    .registers 6
    .parameter

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/PlaylistActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 33
    new-instance v1, Lcom/google/android/youtube/app/honeycomb/tablet/x;

    new-instance v2, Lcom/google/android/youtube/app/honeycomb/tablet/ad;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ad;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/PlaylistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v1, v0, p0, v2, v3}, Lcom/google/android/youtube/app/honeycomb/tablet/x;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/a;Landroid/os/Bundle;)V

    return-object v1
.end method

.method protected final e()V
    .registers 2

    .prologue
    .line 39
    invoke-static {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/tablet/PlaylistActivity;->startActivity(Landroid/content/Intent;)V

    .line 40
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/google/android/youtube/coreicecream/SingleControllerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/tablet/PlaylistActivity;->b(Z)V

    .line 28
    return-void
.end method
