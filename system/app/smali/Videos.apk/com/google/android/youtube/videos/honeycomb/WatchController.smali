.class public abstract Lcom/google/android/youtube/videos/honeycomb/WatchController;
.super Lcom/google/android/youtube/coreicecream/Controller;
.source "WatchController.java"

# interfaces
.implements Landroid/app/ActionBar$OnMenuVisibilityListener;
.implements Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;
.implements Lcom/google/android/youtube/core/utils/DockReceiver$DockListener;
.implements Lcom/google/android/youtube/core/utils/HdmiReceiver$HdmiListener;
.implements Lcom/google/android/youtube/videos/player/Director$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/honeycomb/WatchController$AudioBecomingNoisyReceiver;,
        Lcom/google/android/youtube/videos/honeycomb/WatchController$ScreenBrightnessHelper;
    }
.end annotation


# instance fields
.field private accountName:Ljava/lang/String;

.field private final application:Lcom/google/android/youtube/videos/VideosApplication;

.field private audioBecomingNoisyReceiver:Lcom/google/android/youtube/videos/honeycomb/WatchController$AudioBecomingNoisyReceiver;

.field private audioManager:Landroid/media/AudioManager;

.field private director:Lcom/google/android/youtube/videos/player/Director;

.field protected final dockReceiver:Lcom/google/android/youtube/core/utils/DockReceiver;

.field private fullscreen:Z

.field private fullscreenTitle:Ljava/lang/String;

.field private hasBeenStopped:Z

.field protected final hdmiReceiver:Lcom/google/android/youtube/core/utils/HdmiReceiver;

.field private isMenuVisible:Z

.field private isUserInteractionExpected:Z

.field private final navigation:Lcom/google/android/youtube/videos/Navigation;

.field private player:Lcom/google/android/youtube/core/player/YouTubePlayer;

.field protected playerView:Lcom/google/android/youtube/core/player/PlayerView;

.field private preferences:Landroid/content/SharedPreferences;

.field private relatedLayout:Landroid/view/View;

.field private rootView:Landroid/view/View;

.field private rootViewPadding:[I

.field private final screenBrightnessHelper:Lcom/google/android/youtube/videos/honeycomb/WatchController$ScreenBrightnessHelper;

.field private suggestionsHelper:Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;

.field private systemUiVisibilityHelper:Lcom/google/android/youtube/coreicecream/ui/SystemUiVisibilityHelper;

.field private tabHost:Landroid/widget/TabHost;

.field private userAuth:Lcom/google/android/youtube/core/model/UserAuth;

.field private userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private watchInfo:Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/videos/VideosApplication;Landroid/app/Activity;Lcom/google/android/youtube/videos/Navigation;Landroid/os/Bundle;)V
    .registers 8
    .parameter "application"
    .parameter "activity"
    .parameter "navigation"
    .parameter "launchBundle"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 153
    invoke-virtual {p1}, Lcom/google/android/youtube/videos/VideosApplication;->getAnalytics()Lcom/google/android/youtube/videos/VideosAnalytics;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p4}, Lcom/google/android/youtube/coreicecream/Controller;-><init>(Landroid/app/Application;Lcom/google/android/youtube/core/Analytics;Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 107
    iput-boolean v2, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->isUserInteractionExpected:Z

    .line 108
    iput-boolean v2, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->isMenuVisible:Z

    .line 154
    iput-object p1, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->application:Lcom/google/android/youtube/videos/VideosApplication;

    .line 155
    iput-object p3, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->navigation:Lcom/google/android/youtube/videos/Navigation;

    .line 156
    if-eqz p4, :cond_31

    const-string v0, "authAccount"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_19
    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->accountName:Ljava/lang/String;

    .line 158
    new-instance v0, Lcom/google/android/youtube/core/utils/HdmiReceiver;

    invoke-direct {v0, p2, p0}, Lcom/google/android/youtube/core/utils/HdmiReceiver;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/utils/HdmiReceiver$HdmiListener;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->hdmiReceiver:Lcom/google/android/youtube/core/utils/HdmiReceiver;

    .line 159
    new-instance v0, Lcom/google/android/youtube/core/utils/DockReceiver;

    invoke-direct {v0, p2, p0}, Lcom/google/android/youtube/core/utils/DockReceiver;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/utils/DockReceiver$DockListener;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->dockReceiver:Lcom/google/android/youtube/core/utils/DockReceiver;

    .line 160
    new-instance v0, Lcom/google/android/youtube/videos/honeycomb/WatchController$ScreenBrightnessHelper;

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/videos/honeycomb/WatchController$ScreenBrightnessHelper;-><init>(Lcom/google/android/youtube/videos/honeycomb/WatchController;Lcom/google/android/youtube/videos/honeycomb/WatchController$1;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->screenBrightnessHelper:Lcom/google/android/youtube/videos/honeycomb/WatchController$ScreenBrightnessHelper;

    .line 161
    return-void

    :cond_31
    move-object v0, v1

    .line 156
    goto :goto_19
.end method

.method static synthetic access$400(Lcom/google/android/youtube/videos/honeycomb/WatchController;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/youtube/videos/honeycomb/WatchController;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/youtube/videos/honeycomb/WatchController;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/youtube/videos/honeycomb/WatchController;)Lcom/google/android/youtube/core/player/YouTubePlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    return-object v0
.end method

.method public static createArguments(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4
    .parameter "videoId"

    .prologue
    .line 123
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 124
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "video_id"

    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-object v0
.end method

.method public static createArguments(Ljava/lang/String;Z)Landroid/os/Bundle;
    .registers 5
    .parameter "videoId"
    .parameter "fullscreen"

    .prologue
    .line 133
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 134
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "video_id"

    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v1, "fullscreen"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 136
    return-object v0
.end method

.method public static createArgumentsForUri(Landroid/net/Uri;)Landroid/os/Bundle;
    .registers 4
    .parameter "uri"

    .prologue
    .line 143
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 144
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "intercepted_uri"

    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 145
    return-object v0
.end method


# virtual methods
.method protected abstract createWatchInfoHelper(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/videos/store/PurchaseStore;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/plus1/PlusOneClient;)Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;
.end method

.method protected getContentViewId()I
    .registers 2

    .prologue
    .line 165
    const v0, 0x7f040014

    return v0
.end method

.method protected abstract getTabLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
.end method

.method protected isFullscreen()Z
    .registers 2

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->fullscreen:Z

    return v0
.end method

.method protected abstract isFullscreenOnCreate(Landroid/os/Bundle;)Z
.end method

.method protected layoutForFullscreen()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 417
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->rootViewPadding:[I

    if-nez v0, :cond_2d

    .line 419
    const/4 v0, 0x4

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    aput v1, v0, v3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->rootViewPadding:[I

    .line 423
    :cond_2d
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->rootView:Landroid/view/View;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 424
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->relatedLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 425
    return-void
.end method

.method protected layoutForWindowed()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 428
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->rootViewPadding:[I

    if-eqz v0, :cond_20

    .line 430
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->rootView:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->rootViewPadding:[I

    aget v1, v1, v6

    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->rootViewPadding:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->rootViewPadding:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->rootViewPadding:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 432
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->rootViewPadding:[I

    .line 434
    :cond_20
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->relatedLayout:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 435
    return-void
.end method

.method public onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 9
    .parameter "userAuth"

    .prologue
    .line 283
    iput-object p1, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    .line 284
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/honeycomb/WatchController;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 285
    .local v0, args:Landroid/os/Bundle;
    const-string v5, "video_id"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 286
    .local v4, videoId:Ljava/lang/String;
    const-string v5, "intercepted_uri"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 287
    .local v1, interceptedUri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 289
    .local v3, streamParams:Ljava/lang/String;
    if-eqz v1, :cond_3b

    .line 290
    invoke-static {v1}, Lcom/google/android/youtube/core/utils/ExternalIntents;->parseYouTubeWatchUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/utils/WatchUri;

    move-result-object v2

    .line 291
    .local v2, parsed:Lcom/google/android/youtube/core/utils/WatchUri;
    if-eqz v2, :cond_30

    .line 292
    iget-object v4, v2, Lcom/google/android/youtube/core/utils/WatchUri;->videoId:Ljava/lang/String;

    .line 293
    iget-object v3, v2, Lcom/google/android/youtube/core/utils/WatchUri;->params:Ljava/lang/String;

    .line 305
    .end local v2           #parsed:Lcom/google/android/youtube/core/utils/WatchUri;
    :cond_21
    iget-object v6, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->director:Lcom/google/android/youtube/videos/player/Director;

    iget-boolean v5, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->fullscreen:Z

    if-eqz v5, :cond_48

    iget-boolean v5, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->hasBeenStopped:Z

    if-nez v5, :cond_48

    const/4 v5, 0x1

    :goto_2c
    invoke-virtual {v6, v4, p1, v3, v5}, Lcom/google/android/youtube/videos/player/Director;->initVideo(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;Z)V

    .line 306
    :goto_2f
    return-void

    .line 295
    .restart local v2       #parsed:Lcom/google/android/youtube/core/utils/WatchUri;
    :cond_30
    const-string v5, "invalid intercepted URI"

    invoke-static {v5}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V

    .line 296
    iget-object v5, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto :goto_2f

    .line 299
    .end local v2           #parsed:Lcom/google/android/youtube/core/utils/WatchUri;
    :cond_3b
    if-nez v4, :cond_21

    .line 300
    const-string v5, "invalid arguments format"

    invoke-static {v5}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V

    .line 301
    iget-object v5, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto :goto_2f

    .line 305
    :cond_48
    const/4 v5, 0x0

    goto :goto_2c
.end method

.method public onAuthenticationError(Ljava/lang/Exception;)V
    .registers 3
    .parameter "exception"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 314
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 315
    return-void
.end method

.method public onBackPressed()Z
    .registers 2

    .prologue
    .line 480
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 36
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 170
    invoke-super/range {p0 .. p2}, Lcom/google/android/youtube/coreicecream/Controller;->onCreate(Landroid/view/View;Landroid/os/Bundle;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->activity:Landroid/app/Activity;

    const v3, 0x7f0b00fa

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->application:Lcom/google/android/youtube/videos/VideosApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/videos/VideosApplication;->getRequesters()Lcom/google/android/youtube/videos/Requesters;

    move-result-object v7

    .line 176
    .local v7, requesters:Lcom/google/android/youtube/videos/Requesters;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->application:Lcom/google/android/youtube/videos/VideosApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/videos/VideosApplication;->getUserAuthorizer()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->application:Lcom/google/android/youtube/videos/VideosApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/videos/VideosApplication;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->preferences:Landroid/content/SharedPreferences;

    .line 179
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/videos/honeycomb/WatchController;->rootView:Landroid/view/View;

    .line 181
    new-instance v13, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->activity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->application:Lcom/google/android/youtube/videos/VideosApplication;

    invoke-virtual {v3}, Lcom/google/android/youtube/videos/VideosApplication;->getAnalytics()Lcom/google/android/youtube/videos/VideosAnalytics;

    move-result-object v3

    invoke-direct {v13, v2, v3}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/Analytics;)V

    .line 183
    .local v13, controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;
    const v2, 0x1020012

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->relatedLayout:Landroid/view/View;

    .line 184
    const v2, 0x7f0d003b

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/player/PlayerView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->playerView:Lcom/google/android/youtube/core/player/PlayerView;

    .line 185
    new-instance v2, Lcom/google/android/youtube/core/player/YouTubePlayer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->playerView:Lcom/google/android/youtube/core/player/PlayerView;

    invoke-direct {v2, v3}, Lcom/google/android/youtube/core/player/YouTubePlayer;-><init>(Lcom/google/android/youtube/core/player/PlayerView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    .line 186
    new-instance v2, Lcom/google/android/youtube/videos/player/Director;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->application:Lcom/google/android/youtube/videos/VideosApplication;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->activity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->application:Lcom/google/android/youtube/videos/VideosApplication;

    invoke-virtual {v8}, Lcom/google/android/youtube/videos/VideosApplication;->getSubtitlesClient()Lcom/google/android/youtube/core/client/SubtitlesClient;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->application:Lcom/google/android/youtube/videos/VideosApplication;

    invoke-virtual {v9}, Lcom/google/android/youtube/videos/VideosApplication;->getStatsClient()Lcom/google/android/youtube/core/client/StatsClient;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->application:Lcom/google/android/youtube/videos/VideosApplication;

    invoke-virtual {v10}, Lcom/google/android/youtube/videos/VideosApplication;->getPurchaseStore()Lcom/google/android/youtube/videos/store/PurchaseStore;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->application:Lcom/google/android/youtube/videos/VideosApplication;

    invoke-virtual {v11}, Lcom/google/android/youtube/videos/VideosApplication;->getDrmManager()Lcom/google/android/youtube/videos/DrmManager;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->application:Lcom/google/android/youtube/videos/VideosApplication;

    invoke-virtual {v12}, Lcom/google/android/youtube/videos/VideosApplication;->getAnalytics()Lcom/google/android/youtube/videos/VideosAnalytics;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->application:Lcom/google/android/youtube/videos/VideosApplication;

    invoke-virtual {v14}, Lcom/google/android/youtube/videos/VideosApplication;->getConfig()Lcom/google/android/youtube/videos/VideosConfig;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/youtube/videos/VideosConfig;->getVssSamplingWeight()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->application:Lcom/google/android/youtube/videos/VideosApplication;

    invoke-virtual {v14}, Lcom/google/android/youtube/videos/VideosApplication;->getConfig()Lcom/google/android/youtube/videos/VideosConfig;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/youtube/videos/VideosConfig;->getNoCountingStreamParameter()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v14, p0

    invoke-direct/range {v2 .. v16}, Lcom/google/android/youtube/videos/player/Director;-><init>(Lcom/google/android/youtube/videos/VideosApplication;Lcom/google/android/youtube/core/player/YouTubePlayer;Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/videos/Requesters;Lcom/google/android/youtube/core/client/SubtitlesClient;Lcom/google/android/youtube/core/client/StatsClient;Lcom/google/android/youtube/videos/store/PurchaseStore;Lcom/google/android/youtube/videos/DrmManager;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/player/ControllerOverlay;Lcom/google/android/youtube/videos/player/Director$Listener;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->director:Lcom/google/android/youtube/videos/player/Director;

    .line 202
    new-instance v2, Lcom/google/android/youtube/coreicecream/ui/SystemUiVisibilityHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->rootView:Landroid/view/View;

    new-instance v4, Lcom/google/android/youtube/videos/honeycomb/WatchController$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13}, Lcom/google/android/youtube/videos/honeycomb/WatchController$1;-><init>(Lcom/google/android/youtube/videos/honeycomb/WatchController;Lcom/google/android/youtube/core/player/ControllerOverlay;)V

    invoke-direct {v2, v3, v4}, Lcom/google/android/youtube/coreicecream/ui/SystemUiVisibilityHelper;-><init>(Landroid/view/View;Lcom/google/android/youtube/coreicecream/ui/SystemUiVisibilityHelper$Listener;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->systemUiVisibilityHelper:Lcom/google/android/youtube/coreicecream/ui/SystemUiVisibilityHelper;

    .line 209
    const/16 v29, 0x0

    .line 210
    .local v29, selectedTab:I
    if-eqz p2, :cond_f5

    .line 211
    const-string v2, "selected_tab_index"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v29

    .line 214
    :cond_f5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/videos/honeycomb/WatchController;->isFullscreenOnCreate(Landroid/os/Bundle;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->fullscreen:Z

    .line 216
    const v2, 0x1020012

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->tabHost:Landroid/widget/TabHost;

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->setup()V

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v28

    .line 220
    .local v28, inflater:Landroid/view/LayoutInflater;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/videos/honeycomb/WatchController;->getTabLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v31

    .line 222
    .local v31, tabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const v2, 0x1020011

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/view/ViewGroup;

    .line 223
    .local v30, tabContent:Landroid/view/ViewGroup;
    invoke-virtual/range {v30 .. v30}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v25

    .line 224
    .local v25, childCount:I
    const/16 v26, 0x0

    .local v26, i:I
    :goto_134
    move/from16 v0, v26

    move/from16 v1, v25

    if-ge v0, v1, :cond_188

    .line 225
    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 226
    .local v24, child:Landroid/view/View;
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    .line 227
    .local v32, text:Ljava/lang/String;
    const v2, 0x7f040013

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->tabHost:Landroid/widget/TabHost;

    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 228
    .local v27, indicator:Landroid/widget/TextView;
    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->tabHost:Landroid/widget/TabHost;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->tabHost:Landroid/widget/TabHost;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 232
    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    add-int/lit8 v26, v26, 0x1

    goto :goto_134

    .line 235
    .end local v24           #child:Landroid/view/View;
    .end local v27           #indicator:Landroid/widget/TextView;
    .end local v32           #text:Ljava/lang/String;
    :cond_188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->tabHost:Landroid/widget/TabHost;

    move/from16 v0, v29

    invoke-virtual {v2, v0}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 237
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->activity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->application:Lcom/google/android/youtube/videos/VideosApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/videos/VideosApplication;->getPurchaseStore()Lcom/google/android/youtube/videos/store/PurchaseStore;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->application:Lcom/google/android/youtube/videos/VideosApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/videos/VideosApplication;->getPlusOneClient()Lcom/google/android/youtube/plus1/PlusOneClient;

    move-result-object v19

    move-object/from16 v14, p0

    move-object/from16 v16, p1

    invoke-virtual/range {v14 .. v19}, Lcom/google/android/youtube/videos/honeycomb/WatchController;->createWatchInfoHelper(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/videos/store/PurchaseStore;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/plus1/PlusOneClient;)Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->watchInfo:Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;

    .line 239
    new-instance v14, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->activity:Landroid/app/Activity;

    const v2, 0x7f0d003f

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/google/android/youtube/videos/ui/MovieTableView;

    invoke-interface {v7}, Lcom/google/android/youtube/videos/Requesters;->getSuggestedMoviesRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v17

    invoke-interface {v7}, Lcom/google/android/youtube/videos/Requesters;->getPosterArtRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v18

    const v19, 0x7f040007

    const v2, 0x7f0d0040

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const v21, 0x7f0b00d9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->application:Lcom/google/android/youtube/videos/VideosApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/videos/VideosApplication;->getAnalytics()Lcom/google/android/youtube/videos/VideosAnalytics;

    move-result-object v22

    sget-object v23, Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;->Suggestions:Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;

    invoke-direct/range {v14 .. v23}, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/videos/ui/MovieTableView;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;ILandroid/view/View;ILcom/google/android/youtube/videos/VideosAnalytics;Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->suggestionsHelper:Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;

    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->audioManager:Landroid/media/AudioManager;

    .line 253
    new-instance v2, Lcom/google/android/youtube/videos/honeycomb/WatchController$AudioBecomingNoisyReceiver;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/google/android/youtube/videos/honeycomb/WatchController$AudioBecomingNoisyReceiver;-><init>(Lcom/google/android/youtube/videos/honeycomb/WatchController;Lcom/google/android/youtube/videos/honeycomb/WatchController$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->audioBecomingNoisyReceiver:Lcom/google/android/youtube/videos/honeycomb/WatchController$AudioBecomingNoisyReceiver;

    .line 254
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 5
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 439
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/coreicecream/Controller;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 440
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->application:Lcom/google/android/youtube/videos/VideosApplication;

    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/youtube/videos/VideosApplication;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;Landroid/app/Activity;)V

    .line 441
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 366
    invoke-super {p0}, Lcom/google/android/youtube/coreicecream/Controller;->onDestroy()V

    .line 367
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->director:Lcom/google/android/youtube/videos/player/Director;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/player/Director;->release()V

    .line 368
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/ActionBar;->removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 369
    return-void
.end method

.method public onDockState(I)V
    .registers 2
    .parameter "dockState"

    .prologue
    .line 499
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .registers 2
    .parameter "exception"

    .prologue
    .line 347
    return-void
.end method

.method public onHdmiPluggedState(Z)V
    .registers 3
    .parameter "plugged"

    .prologue
    .line 494
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->screenBrightnessHelper:Lcom/google/android/youtube/videos/honeycomb/WatchController$ScreenBrightnessHelper;

    #calls: Lcom/google/android/youtube/videos/honeycomb/WatchController$ScreenBrightnessHelper;->updateScreenBrightness()V
    invoke-static {v0}, Lcom/google/android/youtube/videos/honeycomb/WatchController$ScreenBrightnessHelper;->access$300(Lcom/google/android/youtube/videos/honeycomb/WatchController$ScreenBrightnessHelper;)V

    .line 495
    return-void
.end method

.method protected onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->director:Lcom/google/android/youtube/videos/player/Director;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/videos/player/Director;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 490
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->director:Lcom/google/android/youtube/videos/player/Director;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/videos/player/Director;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onMenuVisibilityChanged(Z)V
    .registers 4
    .parameter "isVisible"

    .prologue
    const/4 v1, 0x1

    .line 450
    iput-boolean p1, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->isMenuVisible:Z

    .line 451
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->fullscreen:Z

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->isUserInteractionExpected:Z

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->isMenuVisible:Z

    if-nez v0, :cond_22

    .line 452
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 453
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->systemUiVisibilityHelper:Lcom/google/android/youtube/coreicecream/ui/SystemUiVisibilityHelper;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/coreicecream/ui/SystemUiVisibilityHelper;->setSystemUiHidden(Z)V

    .line 454
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->screenBrightnessHelper:Lcom/google/android/youtube/videos/honeycomb/WatchController$ScreenBrightnessHelper;

    #calls: Lcom/google/android/youtube/videos/honeycomb/WatchController$ScreenBrightnessHelper;->setInternalScreenOffIfConnected(Z)V
    invoke-static {v0, v1}, Lcom/google/android/youtube/videos/honeycomb/WatchController$ScreenBrightnessHelper;->access$200(Lcom/google/android/youtube/videos/honeycomb/WatchController$ScreenBrightnessHelper;Z)V

    .line 456
    :cond_22
    return-void
.end method

.method public onNotAuthenticated()V
    .registers 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 310
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    .line 445
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->application:Lcom/google/android/youtube/videos/VideosApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/VideosApplication;->getAnalytics()Lcom/google/android/youtube/videos/VideosAnalytics;

    move-result-object v0

    .line 446
    .local v0, analytics:Lcom/google/android/youtube/videos/VideosAnalytics;
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->navigation:Lcom/google/android/youtube/videos/Navigation;

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/youtube/videos/VideosApplication;->onCommonOptionsItemSelected(Landroid/view/MenuItem;Landroid/app/Activity;Lcom/google/android/youtube/videos/VideosAnalytics;Lcom/google/android/youtube/videos/Navigation;)Z

    move-result v1

    return v1
.end method

.method public onOrientationChanged(Z)V
    .registers 3
    .parameter "landscape"

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->fullscreen:Z

    if-eqz v0, :cond_8

    .line 410
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/honeycomb/WatchController;->layoutForFullscreen()V

    .line 414
    :goto_7
    return-void

    .line 412
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/honeycomb/WatchController;->layoutForWindowed()V

    goto :goto_7
.end method

.method protected onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 351
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 352
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->audioBecomingNoisyReceiver:Lcom/google/android/youtube/videos/honeycomb/WatchController$AudioBecomingNoisyReceiver;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/honeycomb/WatchController$AudioBecomingNoisyReceiver;->unregister()V

    .line 353
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->director:Lcom/google/android/youtube/videos/player/Director;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/player/Director;->reset()V

    .line 354
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->blockingStopVideo()V

    .line 355
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->suggestionsHelper:Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->reset()V

    .line 356
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->hdmiReceiver:Lcom/google/android/youtube/core/utils/HdmiReceiver;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/HdmiReceiver;->unregister()V

    .line 357
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->dockReceiver:Lcom/google/android/youtube/core/utils/DockReceiver;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/DockReceiver;->unregister()V

    .line 358
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->screenBrightnessHelper:Lcom/google/android/youtube/videos/honeycomb/WatchController$ScreenBrightnessHelper;

    #calls: Lcom/google/android/youtube/videos/honeycomb/WatchController$ScreenBrightnessHelper;->setInternalScreenOffIfConnected(Z)V
    invoke-static {v0, v2}, Lcom/google/android/youtube/videos/honeycomb/WatchController$ScreenBrightnessHelper;->access$200(Lcom/google/android/youtube/videos/honeycomb/WatchController$ScreenBrightnessHelper;Z)V

    .line 359
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->systemUiVisibilityHelper:Lcom/google/android/youtube/coreicecream/ui/SystemUiVisibilityHelper;

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/coreicecream/ui/SystemUiVisibilityHelper;->setSystemUiHidden(Z)V

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->hasBeenStopped:Z

    .line 361
    invoke-super {p0}, Lcom/google/android/youtube/coreicecream/Controller;->onPause()V

    .line 362
    return-void
.end method

.method protected onResume()V
    .registers 6

    .prologue
    const/4 v4, 0x4

    .line 265
    invoke-super {p0}, Lcom/google/android/youtube/coreicecream/Controller;->onResume()V

    .line 268
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/high16 v2, -0x8000

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 270
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->audioBecomingNoisyReceiver:Lcom/google/android/youtube/videos/honeycomb/WatchController$AudioBecomingNoisyReceiver;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/honeycomb/WatchController$AudioBecomingNoisyReceiver;->register()V

    .line 272
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->hdmiReceiver:Lcom/google/android/youtube/core/utils/HdmiReceiver;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/HdmiReceiver;->register()V

    .line 273
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->dockReceiver:Lcom/google/android/youtube/core/utils/DockReceiver;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/DockReceiver;->register()V

    .line 274
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->fullscreen:Z

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/videos/honeycomb/WatchController;->setFullscreen(Z)V

    .line 276
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->peek(Ljava/lang/String;Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V

    .line 280
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 319
    invoke-super {p0, p1}, Lcom/google/android/youtube/coreicecream/Controller;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 320
    const-string v0, "selected_tab_index"

    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 321
    return-void
.end method

.method public onToggleFullscreen(Z)V
    .registers 5
    .parameter "fullscreen"

    .prologue
    const/16 v2, 0x400

    const/4 v1, 0x0

    .line 384
    iput-boolean p1, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->fullscreen:Z

    .line 386
    if-nez p1, :cond_3b

    .line 387
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->screenBrightnessHelper:Lcom/google/android/youtube/videos/honeycomb/WatchController$ScreenBrightnessHelper;

    #calls: Lcom/google/android/youtube/videos/honeycomb/WatchController$ScreenBrightnessHelper;->setInternalScreenOffIfConnected(Z)V
    invoke-static {v0, v1}, Lcom/google/android/youtube/videos/honeycomb/WatchController$ScreenBrightnessHelper;->access$200(Lcom/google/android/youtube/videos/honeycomb/WatchController$ScreenBrightnessHelper;Z)V

    .line 388
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->systemUiVisibilityHelper:Lcom/google/android/youtube/coreicecream/ui/SystemUiVisibilityHelper;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/coreicecream/ui/SystemUiVisibilityHelper;->setSystemUiHidden(Z)V

    .line 389
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 390
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->activity:Landroid/app/Activity;

    const v1, 0x7f0b00fa

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 391
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 392
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 401
    :goto_35
    if-eqz p1, :cond_62

    .line 402
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/honeycomb/WatchController;->layoutForFullscreen()V

    .line 406
    :goto_3a
    return-void

    .line 394
    :cond_3b
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 396
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->fullscreenTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 397
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_35

    .line 404
    :cond_62
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/honeycomb/WatchController;->layoutForWindowed()V

    goto :goto_3a
.end method

.method public onUserInteractionExpected()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 470
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->isUserInteractionExpected:Z

    .line 471
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->fullscreen:Z

    if-eqz v0, :cond_1b

    .line 472
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->screenBrightnessHelper:Lcom/google/android/youtube/videos/honeycomb/WatchController$ScreenBrightnessHelper;

    #calls: Lcom/google/android/youtube/videos/honeycomb/WatchController$ScreenBrightnessHelper;->setInternalScreenOffIfConnected(Z)V
    invoke-static {v0, v1}, Lcom/google/android/youtube/videos/honeycomb/WatchController$ScreenBrightnessHelper;->access$200(Lcom/google/android/youtube/videos/honeycomb/WatchController$ScreenBrightnessHelper;Z)V

    .line 473
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->systemUiVisibilityHelper:Lcom/google/android/youtube/coreicecream/ui/SystemUiVisibilityHelper;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/coreicecream/ui/SystemUiVisibilityHelper;->setSystemUiHidden(Z)V

    .line 474
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 476
    :cond_1b
    return-void
.end method

.method public onUserInteractionNotExpected()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 459
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->isUserInteractionExpected:Z

    .line 460
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->fullscreen:Z

    if-eqz v0, :cond_1f

    .line 461
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->isMenuVisible:Z

    if-nez v0, :cond_1f

    .line 462
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 463
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->systemUiVisibilityHelper:Lcom/google/android/youtube/coreicecream/ui/SystemUiVisibilityHelper;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/coreicecream/ui/SystemUiVisibilityHelper;->setSystemUiHidden(Z)V

    .line 464
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->screenBrightnessHelper:Lcom/google/android/youtube/videos/honeycomb/WatchController$ScreenBrightnessHelper;

    #calls: Lcom/google/android/youtube/videos/honeycomb/WatchController$ScreenBrightnessHelper;->setInternalScreenOffIfConnected(Z)V
    invoke-static {v0, v1}, Lcom/google/android/youtube/videos/honeycomb/WatchController$ScreenBrightnessHelper;->access$200(Lcom/google/android/youtube/videos/honeycomb/WatchController$ScreenBrightnessHelper;Z)V

    .line 467
    :cond_1f
    return-void
.end method

.method public onVideo(Lcom/google/android/youtube/core/model/Video;)V
    .registers 7
    .parameter "video"

    .prologue
    const/4 v4, 0x0

    .line 327
    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->fullscreenTitle:Ljava/lang/String;

    .line 328
    iget-boolean v1, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->fullscreen:Z

    if-eqz v1, :cond_14

    .line 329
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->fullscreenTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 332
    :cond_14
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->watchInfo:Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;

    invoke-virtual {v1, p1}, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->showVideo(Lcom/google/android/youtube/core/model/Video;)V

    .line 334
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 335
    .local v0, suggestionsTabView:Landroid/view/View;
    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->relatedUri:Landroid/net/Uri;

    if-nez v1, :cond_40

    .line 336
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->suggestionsHelper:Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->initEmpty()V

    .line 341
    :goto_2d
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 342
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 343
    return-void

    .line 338
    :cond_40
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->suggestionsHelper:Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;

    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v3, p1, Lcom/google/android/youtube/core/model/Video;->relatedUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/google/android/youtube/videos/async/GDataRequests;->getSuggestedMoviesRequest(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->init(Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/GDataRequest;)V

    goto :goto_2d
.end method

.method protected setFullscreen(Z)V
    .registers 3
    .parameter "fullscreen"

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->director:Lcom/google/android/youtube/videos/player/Director;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/videos/player/Director;->setFullscreen(Z)V

    .line 377
    return-void
.end method

.method protected setLockFullscreenMode(Z)V
    .registers 3
    .parameter "lockFullscreenMode"

    .prologue
    .line 380
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->director:Lcom/google/android/youtube/videos/player/Director;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/videos/player/Director;->setLockFullscreenMode(Z)V

    .line 381
    return-void
.end method
