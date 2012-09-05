.class public Lcom/google/android/youtube/videos/honeycomb/tablet/WatchControllerImpl;
.super Lcom/google/android/youtube/videos/honeycomb/WatchController;
.source "WatchControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/honeycomb/tablet/WatchControllerImpl$WatchInfoHelperImpl;
    }
.end annotation


# instance fields
.field private final density:F

.field private infoLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/videos/VideosApplication;Landroid/app/Activity;Lcom/google/android/youtube/videos/Navigation;Landroid/os/Bundle;)V
    .registers 6
    .parameter "application"
    .parameter "activity"
    .parameter "navigation"
    .parameter "launchBundle"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/youtube/videos/honeycomb/WatchController;-><init>(Lcom/google/android/youtube/videos/VideosApplication;Landroid/app/Activity;Lcom/google/android/youtube/videos/Navigation;Landroid/os/Bundle;)V

    .line 47
    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 48
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/WatchControllerImpl;->density:F

    .line 49
    return-void
.end method

.method private px(I)I
    .registers 4
    .parameter "dp"

    .prologue
    .line 123
    int-to-float v0, p1

    iget v1, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/WatchControllerImpl;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
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
    .line 89
    new-instance v0, Lcom/google/android/youtube/videos/honeycomb/tablet/WatchControllerImpl$WatchInfoHelperImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/videos/honeycomb/tablet/WatchControllerImpl$WatchInfoHelperImpl;-><init>(Lcom/google/android/youtube/videos/honeycomb/tablet/WatchControllerImpl;Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/videos/store/PurchaseStore;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/plus1/PlusOneClient;)V

    return-object v0
.end method

.method protected getTabLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 3

    .prologue
    const/4 v1, -0x2

    .line 68
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected isFullscreenOnCreate(Landroid/os/Bundle;)Z
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 59
    if-eqz p1, :cond_a

    .line 60
    const-string v0, "fullscreen"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 62
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/honeycomb/tablet/WatchControllerImpl;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "fullscreen"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_9
.end method

.method protected layoutForFullscreen()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 95
    invoke-super {p0}, Lcom/google/android/youtube/videos/honeycomb/WatchController;->layoutForFullscreen()V

    .line 97
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/WatchControllerImpl;->playerView:Lcom/google/android/youtube/core/player/PlayerView;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/PlayerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 99
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 100
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 101
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 103
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/WatchControllerImpl;->infoLayout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 104
    return-void
.end method

.method protected layoutForWindowed()V
    .registers 8

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x0

    .line 108
    invoke-super {p0}, Lcom/google/android/youtube/videos/honeycomb/WatchController;->layoutForWindowed()V

    .line 110
    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/WatchControllerImpl;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-direct {p0, v3}, Lcom/google/android/youtube/videos/honeycomb/tablet/WatchControllerImpl;->px(I)I

    move-result v1

    .line 111
    .local v1, screenWidth:I
    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/WatchControllerImpl;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0038

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 113
    .local v2, sideMargin:I
    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/WatchControllerImpl;->playerView:Lcom/google/android/youtube/core/player/PlayerView;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/player/PlayerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 115
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    const/high16 v3, 0x3f00

    int-to-float v4, v1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 116
    const/4 v3, -0x2

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 117
    invoke-direct {p0, v6}, Lcom/google/android/youtube/videos/honeycomb/tablet/WatchControllerImpl;->px(I)I

    move-result v3

    invoke-direct {p0, v6}, Lcom/google/android/youtube/videos/honeycomb/tablet/WatchControllerImpl;->px(I)I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 119
    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/WatchControllerImpl;->infoLayout:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 120
    return-void
.end method

.method public onBackPressed()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/honeycomb/tablet/WatchControllerImpl;->isFullscreen()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 80
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/videos/honeycomb/tablet/WatchControllerImpl;->setFullscreen(Z)V

    .line 81
    const/4 v0, 0x1

    .line 83
    :cond_b
    return v0
.end method

.method protected onCreate(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 53
    const v0, 0x7f0d0041

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/WatchControllerImpl;->infoLayout:Landroid/view/View;

    .line 54
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/videos/honeycomb/WatchController;->onCreate(Landroid/view/View;Landroid/os/Bundle;)V

    .line 55
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/google/android/youtube/videos/honeycomb/WatchController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 74
    const-string v0, "fullscreen"

    invoke-virtual {p0}, Lcom/google/android/youtube/videos/honeycomb/tablet/WatchControllerImpl;->isFullscreen()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 75
    return-void
.end method
