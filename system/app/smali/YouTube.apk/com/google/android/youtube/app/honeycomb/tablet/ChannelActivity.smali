.class public Lcom/google/android/youtube/app/honeycomb/tablet/ChannelActivity;
.super Lcom/google/android/youtube/coreicecream/SingleControllerActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/youtube/coreicecream/SingleControllerActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 36
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/google/android/youtube/app/honeycomb/tablet/ChannelActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;I)Landroid/content/Intent;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/google/android/youtube/app/honeycomb/tablet/ChannelActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "selected_tab_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 24
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/honeycomb/tablet/ChannelActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "username"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 31
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/honeycomb/tablet/ChannelActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "username"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "selected_card_id"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/os/Bundle;)Lcom/google/android/youtube/coreicecream/Controller;
    .registers 5
    .parameter

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ChannelActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 55
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ChannelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 56
    if-nez p1, :cond_17

    .line 57
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 59
    :cond_17
    const-string v1, "username"

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ChannelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/utils/i;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_28
    new-instance v1, Lcom/google/android/youtube/app/honeycomb/tablet/g;

    new-instance v2, Lcom/google/android/youtube/app/honeycomb/tablet/ad;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ad;-><init>(Landroid/app/Activity;)V

    invoke-direct {v1, v0, p0, v2, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/g;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/a;Landroid/os/Bundle;)V

    return-object v1
.end method

.method protected final e()V
    .registers 2

    .prologue
    .line 67
    invoke-static {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/tablet/ChannelActivity;->startActivity(Landroid/content/Intent;)V

    .line 68
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/google/android/youtube/coreicecream/SingleControllerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/tablet/ChannelActivity;->b(Z)V

    .line 50
    return-void
.end method
