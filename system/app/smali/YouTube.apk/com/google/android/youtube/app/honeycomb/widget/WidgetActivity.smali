.class public Lcom/google/android/youtube/app/honeycomb/widget/WidgetActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/youtube/core/utils/i;->a(Landroid/app/Activity;IILandroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    .line 78
    if-nez v0, :cond_a

    .line 81
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetActivity;->finish()V

    .line 85
    :cond_a
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 52
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->F()Lcom/google/android/youtube/core/Analytics;

    move-result-object v1

    .line 53
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->Y()Lcom/google/android/youtube/core/j;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/youtube/core/j;->a(Landroid/content/Context;)Z

    move-result v0

    .line 55
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 56
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 60
    const-string v4, "com.google.android.youtube.action.widget_play"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 61
    sget-object v3, Lcom/google/android/youtube/core/Analytics$VideoCategory;->Widget:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    invoke-virtual {v1, v3, v5}, Lcom/google/android/youtube/core/Analytics;->a(Lcom/google/android/youtube/core/Analytics$VideoCategory;I)V

    .line 62
    const-string v1, "video_id"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    if-eqz v0, :cond_3d

    sget-object v0, Lcom/google/android/youtube/app/m;->L:Lcom/google/android/youtube/core/b/aj;

    invoke-static {p0, v1, v0}, Lcom/google/android/youtube/app/honeycomb/tablet/WatchActivity;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/youtube/core/b/aj;)Landroid/content/Intent;

    move-result-object v0

    :goto_39
    invoke-virtual {p0, v0, v5}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 72
    :goto_3c
    return-void

    .line 63
    :cond_3d
    sget-object v0, Lcom/google/android/youtube/app/m;->L:Lcom/google/android/youtube/core/b/aj;

    invoke-static {p0, v1, v0}, Lcom/google/android/youtube/app/honeycomb/phone/WatchActivity;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/youtube/core/b/aj;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_39

    .line 69
    :cond_44
    const-string v0, "missing a widget launch action"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetActivity;->finish()V

    goto :goto_3c
.end method
