.class public abstract Lcom/google/android/youtube/videos/honeycomb/LocalVideosController;
.super Lcom/google/android/youtube/coreicecream/Controller;
.source "LocalVideosController.java"


# instance fields
.field protected adapter:Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;

.field private final analytics:Lcom/google/android/youtube/videos/VideosAnalytics;

.field private final application:Lcom/google/android/youtube/videos/VideosApplication;

.field protected helper:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

.field private final navigation:Lcom/google/android/youtube/videos/Navigation;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/videos/VideosApplication;Landroid/app/Activity;Lcom/google/android/youtube/videos/Navigation;Landroid/os/Bundle;)V
    .registers 6
    .parameter "application"
    .parameter "activity"
    .parameter "navigation"
    .parameter "launchBundle"

    .prologue
    .line 38
    invoke-virtual {p1}, Lcom/google/android/youtube/videos/VideosApplication;->getAnalytics()Lcom/google/android/youtube/videos/VideosAnalytics;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p4}, Lcom/google/android/youtube/coreicecream/Controller;-><init>(Landroid/app/Application;Lcom/google/android/youtube/core/Analytics;Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 39
    iput-object p1, p0, Lcom/google/android/youtube/videos/honeycomb/LocalVideosController;->application:Lcom/google/android/youtube/videos/VideosApplication;

    .line 40
    iput-object p3, p0, Lcom/google/android/youtube/videos/honeycomb/LocalVideosController;->navigation:Lcom/google/android/youtube/videos/Navigation;

    .line 41
    invoke-virtual {p1}, Lcom/google/android/youtube/videos/VideosApplication;->getAnalytics()Lcom/google/android/youtube/videos/VideosAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/LocalVideosController;->analytics:Lcom/google/android/youtube/videos/VideosAnalytics;

    .line 42
    return-void
.end method


# virtual methods
.method protected final getContentViewId()I
    .registers 2

    .prologue
    .line 46
    const v0, 0x7f040006

    return v0
.end method

.method protected onCreate(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 6
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/coreicecream/Controller;->onCreate(Landroid/view/View;Landroid/os/Bundle;)V

    .line 52
    new-instance v0, Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;

    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/LocalVideosController;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/LocalVideosController;->adapter:Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;

    .line 53
    new-instance v0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/LocalVideosController;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/LocalVideosController;->adapter:Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/LocalVideosController;->helper:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    .line 54
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 5
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/coreicecream/Controller;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 71
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/LocalVideosController;->application:Lcom/google/android/youtube/videos/VideosApplication;

    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/LocalVideosController;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/youtube/videos/VideosApplication;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;Landroid/app/Activity;)V

    .line 72
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/LocalVideosController;->helper:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->onDestroy()V

    .line 65
    invoke-super {p0}, Lcom/google/android/youtube/coreicecream/Controller;->onDestroy()V

    .line 66
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/LocalVideosController;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/LocalVideosController;->analytics:Lcom/google/android/youtube/videos/VideosAnalytics;

    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/LocalVideosController;->navigation:Lcom/google/android/youtube/videos/Navigation;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/youtube/videos/VideosApplication;->onCommonOptionsItemSelected(Landroid/view/MenuItem;Landroid/app/Activity;Lcom/google/android/youtube/videos/VideosAnalytics;Lcom/google/android/youtube/videos/Navigation;)Z

    move-result v0

    return v0
.end method

.method public onOrientationChanged(Z)V
    .registers 2
    .parameter "landscape"

    .prologue
    .line 81
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 58
    invoke-super {p0}, Lcom/google/android/youtube/coreicecream/Controller;->onStart()V

    .line 59
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/LocalVideosController;->helper:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->reset()V

    .line 60
    return-void
.end method
