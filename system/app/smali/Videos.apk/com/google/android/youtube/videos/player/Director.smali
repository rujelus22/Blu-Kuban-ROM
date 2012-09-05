.class public Lcom/google/android/youtube/videos/player/Director;
.super Ljava/lang/Object;
.source "Director.java"

# interfaces
.implements Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;
.implements Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerFactory;
.implements Lcom/google/android/youtube/videos/player/DownloadProgressNotifier$Listener;
.implements Lcom/google/android/youtube/videos/ui/StreamingWarningHelper$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/player/Director$10;,
        Lcom/google/android/youtube/videos/player/Director$DrmCallback;,
        Lcom/google/android/youtube/videos/player/Director$Listener;,
        Lcom/google/android/youtube/videos/player/Director$State;
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private alreadyDroppedQuality:Z

.field private final analytics:Lcom/google/android/youtube/core/Analytics;

.field private final application:Lcom/google/android/youtube/videos/VideosApplication;

.field private bufferingCount:I

.field private cancellableCallback:Lcom/google/android/youtube/core/async/CancellableCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/CancellableCallback",
            "<**>;"
        }
    .end annotation
.end field

.field private final controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

.field private controlsHiddenForDialog:Z

.field private downloadProgressNotifier:Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;

.field private drmIdentifiers:Lcom/google/android/youtube/videos/DrmManager$Identifiers;

.field private final drmManager:Lcom/google/android/youtube/videos/DrmManager;

.field private hq:Z

.field private final listener:Lcom/google/android/youtube/videos/player/Director$Listener;

.field private lockFullscreenMode:Z

.field private maybeShowShortClockConfirmation:Z

.field private noCountingStreamParameter:Ljava/lang/String;

.field private final offlineStreamRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            "Lcom/google/android/youtube/core/model/UserAuth;",
            ">;",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/youtube/core/model/Stream;",
            "Lcom/google/android/youtube/videos/DrmManager$Identifiers;",
            ">;>;"
        }
    .end annotation
.end field

.field private offlineVideoStreamsCallback:Lcom/google/android/youtube/core/async/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            "Lcom/google/android/youtube/core/model/UserAuth;",
            ">;",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/youtube/core/model/Stream;",
            "Lcom/google/android/youtube/videos/DrmManager$Identifiers;",
            ">;>;"
        }
    .end annotation
.end field

.field private final onlineStreamsRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            "Lcom/google/android/youtube/core/model/VideoStreams;",
            ">;"
        }
    .end annotation
.end field

.field private onlineVideoStreamsCallback:Lcom/google/android/youtube/core/async/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            "Lcom/google/android/youtube/core/model/VideoStreams;",
            ">;"
        }
    .end annotation
.end field

.field private playWhenInitialized:Z

.field private playWhenSeekEnds:Z

.field private final player:Lcom/google/android/youtube/core/player/YouTubePlayer;

.field private playerHandler:Landroid/os/Handler;

.field private final playerTracker:Lcom/google/android/youtube/core/player/Tracker;

.field private purchase:Lcom/google/android/youtube/core/model/Purchase;

.field private final purchaseStore:Lcom/google/android/youtube/videos/store/PurchaseStore;

.field private remotePurchaseCallback:Lcom/google/android/youtube/core/async/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/youtube/core/model/UserAuth;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;"
        }
    .end annotation
.end field

.field private resumeTime:I

.field private selectedStream:Lcom/google/android/youtube/core/model/Stream;

.field private state:Lcom/google/android/youtube/videos/player/Director$State;

.field private storedPurchaseCallback:Lcom/google/android/youtube/core/async/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/youtube/core/model/UserAuth;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;"
        }
    .end annotation
.end field

.field private streamParams:Ljava/lang/String;

.field private final streamingWarningHelper:Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;

.field private final subtitleHelper:Lcom/google/android/youtube/core/player/SubtitleHelper;

.field private trackingSessionStarted:Z

.field private useVssForViewCounts:Z

.field private userAuth:Lcom/google/android/youtube/core/model/UserAuth;

.field private userConfirmedShortClockActivation:Z

.field private userPrefs:Landroid/content/SharedPreferences;

.field private video:Lcom/google/android/youtube/core/model/Video;

.field private videoId:Ljava/lang/String;

.field private videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/videos/VideosApplication;Lcom/google/android/youtube/core/player/YouTubePlayer;Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/videos/Requesters;Lcom/google/android/youtube/core/client/SubtitlesClient;Lcom/google/android/youtube/core/client/StatsClient;Lcom/google/android/youtube/videos/store/PurchaseStore;Lcom/google/android/youtube/videos/DrmManager;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/player/ControllerOverlay;Lcom/google/android/youtube/videos/player/Director$Listener;ILjava/lang/String;)V
    .registers 29
    .parameter "application"
    .parameter "player"
    .parameter "activity"
    .parameter "preferences"
    .parameter "requesters"
    .parameter "subtitlesClient"
    .parameter "statsClient"
    .parameter "purchaseStore"
    .parameter "drmManager"
    .parameter "analytics"
    .parameter "controllerOverlay"
    .parameter "listener"
    .parameter "vssSamplingWeight"
    .parameter "noCountingVssParameter"

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    const-string v2, "player cannot be null"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/player/YouTubePlayer;

    iput-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    .line 174
    const-string v2, "application cannot be null"

    invoke-static {p1, v2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/videos/VideosApplication;

    iput-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->application:Lcom/google/android/youtube/videos/VideosApplication;

    .line 175
    const-string v2, "activity cannot be null"

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    iput-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->activity:Landroid/app/Activity;

    .line 176
    const-string v2, "analytics cannot be null"

    move-object/from16 v0, p10

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/Analytics;

    iput-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->analytics:Lcom/google/android/youtube/core/Analytics;

    .line 177
    const-string v2, "listener cannot be null"

    move-object/from16 v0, p12

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/videos/player/Director$Listener;

    iput-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->listener:Lcom/google/android/youtube/videos/player/Director$Listener;

    .line 178
    const-string v2, "purchaseStore cannot be null"

    move-object/from16 v0, p8

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/videos/store/PurchaseStore;

    iput-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->purchaseStore:Lcom/google/android/youtube/videos/store/PurchaseStore;

    .line 179
    const-string v2, "controllerOverlay cannot be null"

    move-object/from16 v0, p11

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/player/ControllerOverlay;

    iput-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    .line 182
    const-string v2, "requesters cannot be null"

    move-object/from16 v0, p5

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-interface/range {p5 .. p5}, Lcom/google/android/youtube/videos/Requesters;->getOfflineStreamRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->offlineStreamRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 184
    invoke-interface/range {p5 .. p5}, Lcom/google/android/youtube/videos/Requesters;->getOnlineStreamsRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->onlineStreamsRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 185
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->drmManager:Lcom/google/android/youtube/videos/DrmManager;

    .line 187
    new-instance v3, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;

    invoke-virtual/range {p3 .. p3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/videos/VideosApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/videos/VideosApplication;->mobileStreamingEnabled()Z

    move-result v2

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v3, v0, v1, p0, v2}, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;-><init>(Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/videos/ui/StreamingWarningHelper$Listener;Z)V

    iput-object v3, p0, Lcom/google/android/youtube/videos/player/Director;->streamingWarningHelper:Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;

    .line 190
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->getPlayerView()Lcom/google/android/youtube/core/player/PlayerView;

    move-result-object v13

    .line 192
    .local v13, playerView:Lcom/google/android/youtube/core/player/PlayerView;
    new-instance v6, Lcom/google/android/youtube/core/player/SubtitleOverlay;

    move-object/from16 v0, p3

    invoke-direct {v6, v0}, Lcom/google/android/youtube/core/player/SubtitleOverlay;-><init>(Landroid/app/Activity;)V

    .line 193
    .local v6, subtitleOverlay:Lcom/google/android/youtube/core/player/SubtitleOverlay;
    invoke-virtual {v13, v6}, Lcom/google/android/youtube/core/player/PlayerView;->addView(Landroid/view/View;)V

    .line 194
    sget-object v2, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->MOVIE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    move-object/from16 v0, p11

    invoke-interface {v0, v2}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setStyle(Lcom/google/android/youtube/core/player/ControllerOverlay$Style;)V

    .line 195
    move-object/from16 v0, p11

    invoke-interface {v0, p0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setListener(Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;)V

    .line 196
    invoke-interface/range {p11 .. p11}, Lcom/google/android/youtube/core/player/ControllerOverlay;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/google/android/youtube/core/player/PlayerView;->addView(Landroid/view/View;)V

    .line 198
    const-string v2, "default_hq"

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_109

    const/4 v2, 0x1

    :goto_ae
    iput-boolean v2, p0, Lcom/google/android/youtube/videos/player/Director;->hq:Z

    .line 202
    iget-boolean v2, p0, Lcom/google/android/youtube/videos/player/Director;->hq:Z

    move-object/from16 v0, p11

    invoke-interface {v0, v2}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setHQ(Z)V

    .line 204
    new-instance v2, Lcom/google/android/youtube/core/player/SubtitleHelper;

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p2

    move-object/from16 v7, p11

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/google/android/youtube/core/player/SubtitleHelper;-><init>(Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/player/YouTubePlayer;Lcom/google/android/youtube/core/player/SubtitleOverlay;Lcom/google/android/youtube/core/player/SubtitleHelper$Listener;Lcom/google/android/youtube/core/client/SubtitlesClient;)V

    iput-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->subtitleHelper:Lcom/google/android/youtube/core/player/SubtitleHelper;

    .line 207
    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->noCountingStreamParameter:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11f

    const/16 v2, 0xa

    move/from16 v0, p13

    if-ne v0, v2, :cond_11f

    const/4 v2, 0x1

    :goto_d7
    iput-boolean v2, p0, Lcom/google/android/youtube/videos/player/Director;->useVssForViewCounts:Z

    .line 209
    new-instance v10, Lcom/google/android/youtube/core/utils/SystemClock;

    invoke-direct {v10}, Lcom/google/android/youtube/core/utils/SystemClock;-><init>()V

    iget-boolean v12, p0, Lcom/google/android/youtube/videos/player/Director;->useVssForViewCounts:Z

    move-object/from16 v7, p3

    move-object/from16 v8, p10

    move-object/from16 v9, p7

    move/from16 v11, p13

    invoke-static/range {v7 .. v12}, Lcom/google/android/youtube/core/player/Tracker;->newInstance(Landroid/content/Context;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/client/StatsClient;Lcom/google/android/youtube/core/utils/Clock;IZ)Lcom/google/android/youtube/core/player/Tracker;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    .line 211
    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->addListener(Landroid/os/Handler;)V

    .line 213
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/Director;->initCallbacks()V

    .line 214
    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->playerHandler:Landroid/os/Handler;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->addListener(Landroid/os/Handler;)V

    .line 215
    move-object/from16 v0, p2

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->setMediaPlayerFactory(Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerFactory;)V

    .line 217
    sget-object v2, Lcom/google/android/youtube/videos/player/Director$State;->UNINITIALIZED:Lcom/google/android/youtube/videos/player/Director$State;

    iput-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->state:Lcom/google/android/youtube/videos/player/Director$State;

    .line 218
    return-void

    .line 198
    :cond_109
    invoke-static/range {p3 .. p3}, Lcom/google/android/youtube/core/utils/Util;->isFastNetwork(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_11d

    invoke-static/range {p3 .. p3}, Lcom/google/android/youtube/core/utils/Util;->probablyLowEndDevice(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_11d

    invoke-static/range {p3 .. p3}, Lcom/google/android/youtube/core/utils/Util;->isChargeableNetwork(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_11d

    const/4 v2, 0x1

    goto :goto_ae

    :cond_11d
    const/4 v2, 0x0

    goto :goto_ae

    .line 207
    :cond_11f
    const/4 v2, 0x0

    goto :goto_d7
.end method

.method static synthetic access$000(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/model/Video;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/youtube/videos/player/Director;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/google/android/youtube/videos/player/Director;->resumeTime:I

    return v0
.end method

.method static synthetic access$1000(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/async/Callback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->remotePurchaseCallback:Lcom/google/android/youtube/core/async/Callback;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/youtube/videos/player/Director;Lcom/google/android/youtube/core/async/Callback;)Lcom/google/android/youtube/core/async/Callback;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/player/Director;->decorateCallback(Lcom/google/android/youtube/core/async/Callback;)Lcom/google/android/youtube/core/async/Callback;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/videos/store/PurchaseStore;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->purchaseStore:Lcom/google/android/youtube/videos/store/PurchaseStore;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/youtube/videos/player/Director;Ljava/lang/Exception;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/player/Director;->onVideoStreamsError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/videos/player/Director$State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->state:Lcom/google/android/youtube/videos/player/Director$State;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/google/android/youtube/videos/player/Director;Lcom/google/android/youtube/videos/player/Director$State;)Lcom/google/android/youtube/videos/player/Director$State;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/youtube/videos/player/Director;->state:Lcom/google/android/youtube/videos/player/Director$State;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->streamingWarningHelper:Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/youtube/videos/player/Director;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/player/Director;->lockFullscreenMode:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/google/android/youtube/videos/player/Director;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/player/Director;->alreadyDroppedQuality:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/google/android/youtube/videos/player/Director;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/google/android/youtube/videos/player/Director;->alreadyDroppedQuality:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/model/VideoStreams;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/youtube/videos/player/Director;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/player/Director;->hq:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/player/ControllerOverlay;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    return-object v0
.end method

.method static synthetic access$2004(Lcom/google/android/youtube/videos/player/Director;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/google/android/youtube/videos/player/Director;->bufferingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/videos/player/Director;->bufferingCount:I

    return v0
.end method

.method static synthetic access$2100(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/player/YouTubePlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/android/youtube/videos/player/Director;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/google/android/youtube/videos/player/Director;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/google/android/youtube/videos/player/Director;->userConfirmedShortClockActivation:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/google/android/youtube/videos/player/Director;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/Director;->warnAndPlayVideo()V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/android/youtube/videos/player/Director;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/player/Director;->onLicensesResponse(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/android/youtube/videos/player/Director;IZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/videos/player/Director;->onLicensesError(IZ)V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/android/youtube/videos/player/Director;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/player/Director;->playWhenInitialized:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/Analytics;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->analytics:Lcom/google/android/youtube/core/Analytics;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/youtube/videos/player/Director;Lcom/google/android/youtube/core/model/Purchase;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/player/Director;->onRemotePurchaseResponse(Lcom/google/android/youtube/core/model/Purchase;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/youtube/videos/player/Director;Ljava/lang/Exception;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/player/Director;->onRemotePurchaseError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/youtube/videos/player/Director;Lcom/google/android/youtube/core/model/Purchase;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/player/Director;->onStoredPurchaseResponse(Lcom/google/android/youtube/core/model/Purchase;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/youtube/videos/player/Director;Ljava/lang/Exception;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/player/Director;->onStoredPurchaseError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$702(Lcom/google/android/youtube/videos/player/Director;Lcom/google/android/youtube/videos/DrmManager$Identifiers;)Lcom/google/android/youtube/videos/DrmManager$Identifiers;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/youtube/videos/player/Director;->drmIdentifiers:Lcom/google/android/youtube/videos/DrmManager$Identifiers;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/model/UserAuth;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/youtube/videos/player/Director;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method private acquireLicenses()V
    .registers 9

    .prologue
    .line 428
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/16 v7, 0x10

    invoke-static {v5, v6, v7}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v4

    .line 429
    .local v4, playbackId:Ljava/lang/String;
    new-instance v0, Lcom/google/android/youtube/videos/player/Director$DrmCallback;

    iget-object v5, p0, Lcom/google/android/youtube/videos/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    iget-boolean v5, v5, Lcom/google/android/youtube/core/model/VideoStreams;->supportsQualityToggle:Z

    if-eqz v5, :cond_32

    const/4 v5, 0x2

    :goto_13
    iget-object v6, p0, Lcom/google/android/youtube/videos/player/Director;->purchase:Lcom/google/android/youtube/core/model/Purchase;

    iget-boolean v6, v6, Lcom/google/android/youtube/core/model/Purchase;->streamable:Z

    invoke-direct {v0, p0, v5, v6}, Lcom/google/android/youtube/videos/player/Director$DrmCallback;-><init>(Lcom/google/android/youtube/videos/player/Director;IZ)V

    .line 431
    .local v0, callback:Lcom/google/android/youtube/videos/player/Director$DrmCallback;
    invoke-direct {p0, v0}, Lcom/google/android/youtube/videos/player/Director;->decorateCallback(Lcom/google/android/youtube/core/async/Callback;)Lcom/google/android/youtube/core/async/Callback;

    move-result-object v1

    .line 432
    .local v1, decoratedCallback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;>;"
    iget-object v5, p0, Lcom/google/android/youtube/videos/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    iget-object v5, v5, Lcom/google/android/youtube/core/model/VideoStreams;->hi:Lcom/google/android/youtube/core/model/Stream;

    invoke-direct {p0, v5, v4}, Lcom/google/android/youtube/videos/player/Director;->createDrmRequest(Lcom/google/android/youtube/core/model/Stream;Ljava/lang/String;)Lcom/google/android/youtube/videos/DrmRequest;

    move-result-object v2

    .line 433
    .local v2, hiRequest:Lcom/google/android/youtube/videos/DrmRequest;
    iget-object v5, p0, Lcom/google/android/youtube/videos/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    iget-boolean v5, v5, Lcom/google/android/youtube/core/model/VideoStreams;->supportsQualityToggle:Z

    if-nez v5, :cond_34

    .line 434
    iget-object v5, p0, Lcom/google/android/youtube/videos/player/Director;->drmManager:Lcom/google/android/youtube/videos/DrmManager;

    invoke-virtual {v5, v2, v1}, Lcom/google/android/youtube/videos/DrmManager;->request(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V

    .line 441
    :goto_31
    return-void

    .line 429
    .end local v0           #callback:Lcom/google/android/youtube/videos/player/Director$DrmCallback;
    .end local v1           #decoratedCallback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;>;"
    .end local v2           #hiRequest:Lcom/google/android/youtube/videos/DrmRequest;
    :cond_32
    const/4 v5, 0x1

    goto :goto_13

    .line 436
    .restart local v0       #callback:Lcom/google/android/youtube/videos/player/Director$DrmCallback;
    .restart local v1       #decoratedCallback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;>;"
    .restart local v2       #hiRequest:Lcom/google/android/youtube/videos/DrmRequest;
    :cond_34
    iget-object v5, p0, Lcom/google/android/youtube/videos/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    iget-object v5, v5, Lcom/google/android/youtube/core/model/VideoStreams;->lo:Lcom/google/android/youtube/core/model/Stream;

    invoke-direct {p0, v5, v4}, Lcom/google/android/youtube/videos/player/Director;->createDrmRequest(Lcom/google/android/youtube/core/model/Stream;Ljava/lang/String;)Lcom/google/android/youtube/videos/DrmRequest;

    move-result-object v3

    .line 438
    .local v3, loRequest:Lcom/google/android/youtube/videos/DrmRequest;
    iget-object v6, p0, Lcom/google/android/youtube/videos/player/Director;->drmManager:Lcom/google/android/youtube/videos/DrmManager;

    iget-boolean v5, p0, Lcom/google/android/youtube/videos/player/Director;->hq:Z

    if-eqz v5, :cond_50

    move-object v5, v2

    :goto_43
    invoke-virtual {v6, v5, v1}, Lcom/google/android/youtube/videos/DrmManager;->request(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V

    .line 439
    iget-object v5, p0, Lcom/google/android/youtube/videos/player/Director;->drmManager:Lcom/google/android/youtube/videos/DrmManager;

    iget-boolean v6, p0, Lcom/google/android/youtube/videos/player/Director;->hq:Z

    if-eqz v6, :cond_52

    .end local v3           #loRequest:Lcom/google/android/youtube/videos/DrmRequest;
    :goto_4c
    invoke-virtual {v5, v3, v1}, Lcom/google/android/youtube/videos/DrmManager;->request(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V

    goto :goto_31

    .restart local v3       #loRequest:Lcom/google/android/youtube/videos/DrmRequest;
    :cond_50
    move-object v5, v3

    .line 438
    goto :goto_43

    :cond_52
    move-object v3, v2

    .line 439
    goto :goto_4c
.end method

.method private createDrmRequest(Lcom/google/android/youtube/core/model/Stream;Ljava/lang/String;)Lcom/google/android/youtube/videos/DrmRequest;
    .registers 6
    .parameter "stream"
    .parameter "playbackId"

    .prologue
    .line 444
    iget-boolean v0, p1, Lcom/google/android/youtube/core/model/Stream;->isOffline:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->drmIdentifiers:Lcom/google/android/youtube/videos/DrmManager$Identifiers;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/youtube/videos/DrmRequest;->createOfflineRequest(Lcom/google/android/youtube/core/model/Stream;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/videos/DrmManager$Identifiers;)Lcom/google/android/youtube/videos/DrmRequest;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-static {p1, v0, p2, v1}, Lcom/google/android/youtube/videos/DrmRequest;->createStreamingRequest(Lcom/google/android/youtube/core/model/Stream;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/videos/DrmRequest;

    move-result-object v0

    goto :goto_10
.end method

.method private decorateCallback(Lcom/google/android/youtube/core/async/Callback;)Lcom/google/android/youtube/core/async/Callback;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/youtube/core/async/Callback",
            "<TR;TE;>;)",
            "Lcom/google/android/youtube/core/async/Callback",
            "<TR;TE;>;"
        }
    .end annotation

    .prologue
    .line 991
    .local p1, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<TR;TE;>;"
    invoke-static {p1}, Lcom/google/android/youtube/core/async/CancellableCallback;->create(Lcom/google/android/youtube/core/async/Callback;)Lcom/google/android/youtube/core/async/CancellableCallback;

    move-result-object v0

    .line 992
    .local v0, cancellableCallback:Lcom/google/android/youtube/core/async/CancellableCallback;,"Lcom/google/android/youtube/core/async/CancellableCallback<TR;TE;>;"
    iput-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->cancellableCallback:Lcom/google/android/youtube/core/async/CancellableCallback;

    .line 993
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->activity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/async/ActivityCallback;->create(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)Lcom/google/android/youtube/core/async/ActivityCallback;

    move-result-object v1

    return-object v1
.end method

.method private hideControlsForDialog()V
    .registers 2

    .prologue
    .line 997
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->listener:Lcom/google/android/youtube/videos/player/Director$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/videos/player/Director$Listener;->onUserInteractionExpected()V

    .line 998
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/videos/player/Director;->controlsHiddenForDialog:Z

    .line 999
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->hide()V

    .line 1000
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/videos/player/Director;->controlsHiddenForDialog:Z

    .line 1001
    return-void
.end method

.method private initCallbacks()V
    .registers 2

    .prologue
    .line 798
    new-instance v0, Lcom/google/android/youtube/videos/player/Director$2;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/videos/player/Director$2;-><init>(Lcom/google/android/youtube/videos/player/Director;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->remotePurchaseCallback:Lcom/google/android/youtube/core/async/Callback;

    .line 808
    new-instance v0, Lcom/google/android/youtube/videos/player/Director$3;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/videos/player/Director$3;-><init>(Lcom/google/android/youtube/videos/player/Director;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->storedPurchaseCallback:Lcom/google/android/youtube/core/async/Callback;

    .line 818
    new-instance v0, Lcom/google/android/youtube/videos/player/Director$4;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/videos/player/Director$4;-><init>(Lcom/google/android/youtube/videos/player/Director;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->offlineVideoStreamsCallback:Lcom/google/android/youtube/core/async/Callback;

    .line 837
    new-instance v0, Lcom/google/android/youtube/videos/player/Director$5;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/videos/player/Director$5;-><init>(Lcom/google/android/youtube/videos/player/Director;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->onlineVideoStreamsCallback:Lcom/google/android/youtube/core/async/Callback;

    .line 848
    new-instance v0, Lcom/google/android/youtube/videos/player/Director$6;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/videos/player/Director$6;-><init>(Lcom/google/android/youtube/videos/player/Director;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->playerHandler:Landroid/os/Handler;

    .line 988
    return-void
.end method

.method private initVideoInternal()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 271
    sget-object v0, Lcom/google/android/youtube/videos/player/Director$State;->INITIALIZING:Lcom/google/android/youtube/videos/player/Director$State;

    iput-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->state:Lcom/google/android/youtube/videos/player/Director$State;

    .line 272
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/player/Director;->playWhenInitialized:Z

    if-eqz v0, :cond_3b

    .line 273
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showLoading()V

    .line 274
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->setKeepScreenOn(Z)V

    .line 279
    :goto_14
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->downloadProgressNotifier:Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;

    if-eqz v0, :cond_1f

    .line 280
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->downloadProgressNotifier:Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;->stop()V

    .line 281
    iput-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->downloadProgressNotifier:Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;

    .line 284
    :cond_1f
    iput-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    .line 285
    iput-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    .line 286
    iput-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->drmIdentifiers:Lcom/google/android/youtube/videos/DrmManager$Identifiers;

    .line 287
    iput-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->purchase:Lcom/google/android/youtube/core/model/Purchase;

    .line 288
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->purchaseStore:Lcom/google/android/youtube/videos/store/PurchaseStore;

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->videoId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->storedPurchaseCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-direct {p0, v2}, Lcom/google/android/youtube/videos/player/Director;->decorateCallback(Lcom/google/android/youtube/core/async/Callback;)Lcom/google/android/youtube/core/async/Callback;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/videos/store/PurchaseStore;->getActivePurchaseForVideo(Landroid/util/Pair;Lcom/google/android/youtube/core/async/Callback;)V

    .line 290
    return-void

    .line 276
    :cond_3b
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showPaused()V

    goto :goto_14
.end method

.method private isMediaKey(I)Z
    .registers 3
    .parameter "keyCode"

    .prologue
    .line 592
    const/16 v0, 0x4f

    if-eq p1, v0, :cond_18

    const/16 v0, 0x58

    if-eq p1, v0, :cond_18

    const/16 v0, 0x57

    if-eq p1, v0, :cond_18

    const/16 v0, 0x55

    if-eq p1, v0, :cond_18

    const/16 v0, 0x7f

    if-eq p1, v0, :cond_18

    const/16 v0, 0x7e

    if-ne p1, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private onLicensesError(IZ)V
    .registers 5
    .parameter "error"
    .parameter "canRetry"

    .prologue
    .line 458
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/player/Director;->playWhenInitialized:Z

    if-eqz v0, :cond_9

    .line 459
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showErrorMessage(IZ)V

    .line 461
    :cond_9
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->setKeepScreenOn(Z)V

    .line 462
    sget-object v0, Lcom/google/android/youtube/videos/player/Director$State;->INITIALIZED_ERROR:Lcom/google/android/youtube/videos/player/Director$State;

    iput-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->state:Lcom/google/android/youtube/videos/player/Director$State;

    .line 463
    return-void
.end method

.method private onLicensesResponse(Z)V
    .registers 3
    .parameter "maybeShowShortClockConfirmation"

    .prologue
    .line 450
    sget-object v0, Lcom/google/android/youtube/videos/player/Director$State;->INITIALIZED_OK:Lcom/google/android/youtube/videos/player/Director$State;

    iput-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->state:Lcom/google/android/youtube/videos/player/Director$State;

    .line 451
    iput-boolean p1, p0, Lcom/google/android/youtube/videos/player/Director;->maybeShowShortClockConfirmation:Z

    .line 452
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/player/Director;->playWhenInitialized:Z

    if-eqz v0, :cond_d

    .line 453
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/Director;->warnAndPlayVideo()V

    .line 455
    :cond_d
    return-void
.end method

.method private onRemotePurchaseError(Ljava/lang/Exception;)V
    .registers 10
    .parameter "exception"

    .prologue
    .line 333
    iget-object v5, p0, Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    if-nez v5, :cond_16

    .line 334
    instance-of v5, p1, Lcom/google/android/youtube/videos/store/PurchaseStore$NoActivePurchaseException;

    if-eqz v5, :cond_48

    move-object v4, p1

    .line 335
    check-cast v4, Lcom/google/android/youtube/videos/store/PurchaseStore$NoActivePurchaseException;

    .line 336
    .local v4, purchaseException:Lcom/google/android/youtube/videos/store/PurchaseStore$NoActivePurchaseException;
    iget-object v5, v4, Lcom/google/android/youtube/videos/store/PurchaseStore$NoActivePurchaseException;->inactivePurchase:Lcom/google/android/youtube/core/model/Purchase;

    if-eqz v5, :cond_42

    .line 337
    iget-object v5, v4, Lcom/google/android/youtube/videos/store/PurchaseStore$NoActivePurchaseException;->inactivePurchase:Lcom/google/android/youtube/core/model/Purchase;

    iget-object v5, v5, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    invoke-direct {p0, v5}, Lcom/google/android/youtube/videos/player/Director;->onVideo(Lcom/google/android/youtube/core/model/Video;)V

    .line 347
    .end local v4           #purchaseException:Lcom/google/android/youtube/videos/store/PurchaseStore$NoActivePurchaseException;
    :cond_16
    :goto_16
    const/4 v2, 0x0

    .line 348
    .local v2, errorStringId:I
    const/4 v1, 0x0

    .line 349
    .local v1, canRetry:Z
    instance-of v5, p1, Lcom/google/android/youtube/videos/store/PurchaseStore$NoActivePurchaseException;

    if-eqz v5, :cond_5f

    move-object v0, p1

    .line 350
    check-cast v0, Lcom/google/android/youtube/videos/store/PurchaseStore$NoActivePurchaseException;

    .line 351
    .local v0, activePurchaseException:Lcom/google/android/youtube/videos/store/PurchaseStore$NoActivePurchaseException;
    iget-object v3, v0, Lcom/google/android/youtube/videos/store/PurchaseStore$NoActivePurchaseException;->inactivePurchase:Lcom/google/android/youtube/core/model/Purchase;

    .line 352
    .local v3, purchase:Lcom/google/android/youtube/core/model/Purchase;
    if-eqz v3, :cond_5b

    .line 353
    sget-object v5, Lcom/google/android/youtube/videos/player/Director$10;->$SwitchMap$com$google$android$youtube$core$model$Purchase$Status:[I

    iget-object v6, v3, Lcom/google/android/youtube/core/model/Purchase;->status:Lcom/google/android/youtube/core/model/Purchase$Status;

    invoke-virtual {v6}, Lcom/google/android/youtube/core/model/Purchase$Status;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_7a

    .line 373
    .end local v0           #activePurchaseException:Lcom/google/android/youtube/videos/store/PurchaseStore$NoActivePurchaseException;
    .end local v3           #purchase:Lcom/google/android/youtube/core/model/Purchase;
    :cond_30
    :goto_30
    if-eqz v2, :cond_6c

    .line 374
    iget-object v5, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v5, v2, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showErrorMessage(IZ)V

    .line 379
    :goto_37
    iget-object v5, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/youtube/core/player/YouTubePlayer;->setKeepScreenOn(Z)V

    .line 380
    sget-object v5, Lcom/google/android/youtube/videos/player/Director$State;->INITIALIZED_ERROR:Lcom/google/android/youtube/videos/player/Director$State;

    iput-object v5, p0, Lcom/google/android/youtube/videos/player/Director;->state:Lcom/google/android/youtube/videos/player/Director$State;

    .line 381
    return-void

    .line 339
    .end local v1           #canRetry:Z
    .end local v2           #errorStringId:I
    .restart local v4       #purchaseException:Lcom/google/android/youtube/videos/store/PurchaseStore$NoActivePurchaseException;
    :cond_42
    iget-object v5, p0, Lcom/google/android/youtube/videos/player/Director;->listener:Lcom/google/android/youtube/videos/player/Director$Listener;

    invoke-interface {v5, p1}, Lcom/google/android/youtube/videos/player/Director$Listener;->onError(Ljava/lang/Exception;)V

    goto :goto_16

    .line 342
    .end local v4           #purchaseException:Lcom/google/android/youtube/videos/store/PurchaseStore$NoActivePurchaseException;
    :cond_48
    iget-object v5, p0, Lcom/google/android/youtube/videos/player/Director;->listener:Lcom/google/android/youtube/videos/player/Director$Listener;

    invoke-interface {v5, p1}, Lcom/google/android/youtube/videos/player/Director$Listener;->onError(Ljava/lang/Exception;)V

    goto :goto_16

    .line 355
    .restart local v0       #activePurchaseException:Lcom/google/android/youtube/videos/store/PurchaseStore$NoActivePurchaseException;
    .restart local v1       #canRetry:Z
    .restart local v2       #errorStringId:I
    .restart local v3       #purchase:Lcom/google/android/youtube/core/model/Purchase;
    :pswitch_4e
    const v2, 0x7f0b00de

    .line 356
    const/4 v1, 0x1

    .line 357
    goto :goto_30

    .line 360
    :pswitch_53
    const v2, 0x7f0b00e4

    .line 361
    goto :goto_30

    .line 363
    :pswitch_57
    const v2, 0x7f0b00dd

    goto :goto_30

    .line 366
    :cond_5b
    const v2, 0x7f0b00df

    goto :goto_30

    .line 368
    .end local v0           #activePurchaseException:Lcom/google/android/youtube/videos/store/PurchaseStore$NoActivePurchaseException;
    .end local v3           #purchase:Lcom/google/android/youtube/core/model/Purchase;
    :cond_5f
    iget-object v5, p0, Lcom/google/android/youtube/videos/player/Director;->activity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/google/android/youtube/core/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_30

    .line 369
    const v2, 0x7f0b0019

    .line 370
    const/4 v1, 0x1

    goto :goto_30

    .line 376
    :cond_6c
    iget-object v5, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    iget-object v6, p0, Lcom/google/android/youtube/videos/player/Director;->activity:Landroid/app/Activity;

    invoke-static {v6, p1}, Lcom/google/android/youtube/core/ErrorHelper;->humanize(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showErrorMessage(Ljava/lang/String;Z)V

    goto :goto_37

    .line 353
    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_53
        :pswitch_53
        :pswitch_57
    .end packed-switch
.end method

.method private onRemotePurchaseResponse(Lcom/google/android/youtube/core/model/Purchase;)V
    .registers 6
    .parameter "purchase"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    if-nez v0, :cond_9

    .line 315
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/videos/player/Director;->onVideo(Lcom/google/android/youtube/core/model/Video;)V

    .line 318
    :cond_9
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v1, Lcom/google/android/youtube/core/model/Video$State;->PLAYABLE:Lcom/google/android/youtube/core/model/Video$State;

    if-eq v0, v1, :cond_35

    .line 319
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/player/Director;->playWhenInitialized:Z

    if-eqz v0, :cond_30

    .line 320
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "PlayCannotProceeed"

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/youtube/core/Analytics;->trackPlaybackEvent(Ljava/lang/String;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/Stream$Quality;)V

    .line 321
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    iget v1, v1, Lcom/google/android/youtube/core/model/Video$State;->explanationId:I

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showErrorMessage(I)V

    .line 322
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->setKeepScreenOn(Z)V

    .line 324
    :cond_30
    sget-object v0, Lcom/google/android/youtube/videos/player/Director$State;->INITIALIZED_ERROR:Lcom/google/android/youtube/videos/player/Director$State;

    iput-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->state:Lcom/google/android/youtube/videos/player/Director$State;

    .line 330
    :goto_34
    return-void

    .line 329
    :cond_35
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->onlineStreamsRequester:Lcom/google/android/youtube/core/async/Requester;

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->onlineVideoStreamsCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-direct {p0, v1}, Lcom/google/android/youtube/videos/player/Director;->decorateCallback(Lcom/google/android/youtube/core/async/Callback;)Lcom/google/android/youtube/core/async/Callback;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    goto :goto_34
.end method

.method private onStoredPurchaseError(Ljava/lang/Exception;)V
    .registers 6
    .parameter "exception"

    .prologue
    .line 300
    instance-of v1, p1, Lcom/google/android/youtube/videos/store/PurchaseStore$NoActivePurchaseException;

    if-eqz v1, :cond_12

    move-object v0, p1

    .line 301
    check-cast v0, Lcom/google/android/youtube/videos/store/PurchaseStore$NoActivePurchaseException;

    .line 302
    .local v0, purchaseException:Lcom/google/android/youtube/videos/store/PurchaseStore$NoActivePurchaseException;
    iget-object v1, v0, Lcom/google/android/youtube/videos/store/PurchaseStore$NoActivePurchaseException;->inactivePurchase:Lcom/google/android/youtube/core/model/Purchase;

    if-eqz v1, :cond_12

    .line 303
    iget-object v1, v0, Lcom/google/android/youtube/videos/store/PurchaseStore$NoActivePurchaseException;->inactivePurchase:Lcom/google/android/youtube/core/model/Purchase;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    invoke-direct {p0, v1}, Lcom/google/android/youtube/videos/player/Director;->onVideo(Lcom/google/android/youtube/core/model/Video;)V

    .line 309
    .end local v0           #purchaseException:Lcom/google/android/youtube/videos/store/PurchaseStore$NoActivePurchaseException;
    :cond_12
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->purchaseStore:Lcom/google/android/youtube/videos/store/PurchaseStore;

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v3, p0, Lcom/google/android/youtube/videos/player/Director;->videoId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/videos/player/Director;->remotePurchaseCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-direct {p0, v3}, Lcom/google/android/youtube/videos/player/Director;->decorateCallback(Lcom/google/android/youtube/core/async/Callback;)Lcom/google/android/youtube/core/async/Callback;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/videos/store/PurchaseStore;->syncActivePurchaseForVideo(Landroid/util/Pair;Lcom/google/android/youtube/core/async/Callback;)V

    .line 311
    return-void
.end method

.method private onStoredPurchaseResponse(Lcom/google/android/youtube/core/model/Purchase;)V
    .registers 5
    .parameter "purchase"

    .prologue
    .line 293
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/videos/player/Director;->onVideo(Lcom/google/android/youtube/core/model/Video;)V

    .line 295
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->offlineStreamRequester:Lcom/google/android/youtube/core/async/Requester;

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-static {p1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->offlineVideoStreamsCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-direct {p0, v2}, Lcom/google/android/youtube/videos/player/Director;->decorateCallback(Lcom/google/android/youtube/core/async/Callback;)Lcom/google/android/youtube/core/async/Callback;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 297
    return-void
.end method

.method private onVideo(Lcom/google/android/youtube/core/model/Video;)V
    .registers 3
    .parameter "video"

    .prologue
    .line 384
    iput-object p1, p0, Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    .line 385
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->listener:Lcom/google/android/youtube/videos/player/Director$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/videos/player/Director$Listener;->onVideo(Lcom/google/android/youtube/core/model/Video;)V

    .line 386
    return-void
.end method

.method private onVideoStreamsError(Ljava/lang/Exception;)V
    .registers 7
    .parameter "exception"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 412
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/player/Director;->playWhenInitialized:Z

    if-eqz v0, :cond_12

    .line 413
    instance-of v0, p1, Lcom/google/android/youtube/videos/async/DownloadNotStartedException;

    if-eqz v0, :cond_1c

    .line 414
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    const v1, 0x7f0b00e7

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showErrorMessage(IZ)V

    .line 422
    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0, v4}, Lcom/google/android/youtube/core/player/YouTubePlayer;->setKeepScreenOn(Z)V

    .line 423
    sget-object v0, Lcom/google/android/youtube/videos/player/Director$State;->INITIALIZED_ERROR:Lcom/google/android/youtube/videos/player/Director$State;

    iput-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->state:Lcom/google/android/youtube/videos/player/Director$State;

    .line 424
    return-void

    .line 415
    :cond_1c
    instance-of v0, p1, Lcom/google/android/youtube/core/player/MissingStreamException;

    if-eqz v0, :cond_33

    .line 416
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "PlayErrorNoStream"

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/youtube/core/Analytics;->trackPlaybackEvent(Ljava/lang/String;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/Stream$Quality;)V

    .line 417
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    const v1, 0x7f0b004a

    invoke-interface {v0, v1, v4}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showErrorMessage(IZ)V

    goto :goto_12

    .line 419
    :cond_33
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->activity:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/google/android/youtube/core/ErrorHelper;->humanize(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showErrorMessage(Ljava/lang/String;Z)V

    goto :goto_12
.end method

.method private playVideo()V
    .registers 2

    .prologue
    .line 482
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/player/Director;->hq:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/VideoStreams;->hi:Lcom/google/android/youtube/core/model/Stream;

    :goto_8
    iput-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->selectedStream:Lcom/google/android/youtube/core/model/Stream;

    .line 483
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->selectedStream:Lcom/google/android/youtube/core/model/Stream;

    iget-boolean v0, v0, Lcom/google/android/youtube/core/model/Stream;->isOffline:Z

    if-eqz v0, :cond_19

    .line 484
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/Director;->playVideoInternal()V

    .line 489
    :goto_13
    return-void

    .line 482
    :cond_14
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/VideoStreams;->lo:Lcom/google/android/youtube/core/model/Stream;

    goto :goto_8

    .line 486
    :cond_19
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->hide()V

    .line 487
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->streamingWarningHelper:Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->onPlaybackStarted()V

    goto :goto_13
.end method

.method private playVideoInternal()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 496
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showLoading()V

    .line 497
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->state:Lcom/google/android/youtube/videos/player/Director$State;

    sget-object v2, Lcom/google/android/youtube/videos/player/Director$State;->PLAYER_LOADED:Lcom/google/android/youtube/videos/player/Director$State;

    if-ne v1, v2, :cond_1f

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->getStream()Lcom/google/android/youtube/core/model/Stream;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->selectedStream:Lcom/google/android/youtube/core/model/Stream;

    if-ne v1, v2, :cond_1f

    .line 498
    iput v4, p0, Lcom/google/android/youtube/videos/player/Director;->bufferingCount:I

    .line 499
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->playVideo()V

    .line 535
    :cond_1e
    :goto_1e
    return-void

    .line 501
    :cond_1f
    iget-boolean v1, p0, Lcom/google/android/youtube/videos/player/Director;->trackingSessionStarted:Z

    if-nez v1, :cond_cd

    .line 502
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/Tracker;->trackVideoInit()V

    .line 503
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v3, p0, Lcom/google/android/youtube/videos/player/Director;->selectedStream:Lcom/google/android/youtube/core/model/Stream;

    iget-object v3, v3, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-virtual {v1, v2, v5, v3}, Lcom/google/android/youtube/core/player/Tracker;->reset(Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/VastAd;Lcom/google/android/youtube/core/model/Stream$Quality;)V

    .line 504
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    iget v2, p0, Lcom/google/android/youtube/videos/player/Director;->resumeTime:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/core/player/Tracker;->setPlaybackPosition(J)V

    .line 505
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/youtube/videos/player/Director;->trackingSessionStarted:Z

    .line 510
    :goto_40
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->streamParams:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7d

    .line 511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->selectedStream:Lcom/google/android/youtube/core/model/Stream;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->streamParams:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 512
    .local v0, streamUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->selectedStream:Lcom/google/android/youtube/core/model/Stream;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Stream;->buildUpon()Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/model/Stream$Builder;->uri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Stream$Builder;->build()Lcom/google/android/youtube/core/model/Stream;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->selectedStream:Lcom/google/android/youtube/core/model/Stream;

    .line 515
    .end local v0           #streamUri:Landroid/net/Uri;
    :cond_7d
    iget-boolean v1, p0, Lcom/google/android/youtube/videos/player/Director;->useVssForViewCounts:Z

    if-eqz v1, :cond_a5

    .line 516
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->selectedStream:Lcom/google/android/youtube/core/model/Stream;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->noCountingStreamParameter:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 519
    .restart local v0       #streamUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->selectedStream:Lcom/google/android/youtube/core/model/Stream;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Stream;->buildUpon()Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/model/Stream$Builder;->uri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Stream$Builder;->build()Lcom/google/android/youtube/core/model/Stream;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->selectedStream:Lcom/google/android/youtube/core/model/Stream;

    .line 524
    .end local v0           #streamUri:Landroid/net/Uri;
    :cond_a5
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->selectedStream:Lcom/google/android/youtube/core/model/Stream;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/player/Tracker;->trackVideoPrepare(Landroid/net/Uri;)V

    .line 526
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->selectedStream:Lcom/google/android/youtube/core/model/Stream;

    iget v3, p0, Lcom/google/android/youtube/videos/player/Director;->resumeTime:I

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/core/player/YouTubePlayer;->loadVideo(Lcom/google/android/youtube/core/model/Stream;I)V

    .line 527
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v1, v4}, Lcom/google/android/youtube/core/player/YouTubePlayer;->setKeepScreenOn(Z)V

    .line 528
    sget-object v1, Lcom/google/android/youtube/videos/player/Director$State;->PLAYER_LOADED:Lcom/google/android/youtube/videos/player/Director$State;

    iput-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->state:Lcom/google/android/youtube/videos/player/Director$State;

    .line 529
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->downloadProgressNotifier:Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;

    if-eqz v1, :cond_1e

    .line 531
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->downloadProgressNotifier:Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;->stop()V

    .line 532
    iput-object v5, p0, Lcom/google/android/youtube/videos/player/Director;->downloadProgressNotifier:Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;

    goto/16 :goto_1e

    .line 507
    :cond_cd
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/Tracker;->trackRestored()V

    goto/16 :goto_40
.end method

.method private showShortClockConfirmationDialog()V
    .registers 7

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 1005
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/Director;->hideControlsForDialog()V

    .line 1006
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->activity:Landroid/app/Activity;

    const v2, 0x7f0b0104

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/youtube/videos/player/Director;->purchase:Lcom/google/android/youtube/core/model/Purchase;

    iget-object v5, v5, Lcom/google/android/youtube/core/model/Purchase;->pricePaid:Lcom/google/android/youtube/core/model/PricingStructure;

    iget-object v5, v5, Lcom/google/android/youtube/core/model/PricingStructure;->duration:Lcom/google/android/youtube/core/model/Duration;

    invoke-virtual {v5}, Lcom/google/android/youtube/core/model/Duration;->inHours()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/google/android/youtube/videos/player/Director$9;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/videos/player/Director$9;-><init>(Lcom/google/android/youtube/videos/player/Director;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    new-instance v2, Lcom/google/android/youtube/videos/player/Director$8;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/videos/player/Director$8;-><init>(Lcom/google/android/youtube/videos/player/Director;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/youtube/videos/player/Director$7;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/videos/player/Director$7;-><init>(Lcom/google/android/youtube/videos/player/Director;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1039
    :cond_5b
    return-void
.end method

.method private warnAndPlayVideo()V
    .registers 4

    .prologue
    .line 466
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 468
    iget-boolean v1, p0, Lcom/google/android/youtube/videos/player/Director;->userConfirmedShortClockActivation:Z

    if-nez v1, :cond_3a

    iget-boolean v1, p0, Lcom/google/android/youtube/videos/player/Director;->maybeShowShortClockConfirmation:Z

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->purchase:Lcom/google/android/youtube/core/model/Purchase;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Purchase;->expirationDate:Ljava/util/Date;

    if-eqz v1, :cond_3a

    .line 470
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 471
    .local v0, activationEnd:Ljava/util/Calendar;
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->purchase:Lcom/google/android/youtube/core/model/Purchase;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Purchase;->pricePaid:Lcom/google/android/youtube/core/model/PricingStructure;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/PricingStructure;->duration:Lcom/google/android/youtube/core/model/Duration;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/model/Duration;->inHours()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 472
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->purchase:Lcom/google/android/youtube/core/model/Purchase;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Purchase;->expirationDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_3a

    iget v1, p0, Lcom/google/android/youtube/videos/player/Director;->resumeTime:I

    if-nez v1, :cond_3a

    .line 473
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/Director;->showShortClockConfirmationDialog()V

    .line 479
    .end local v0           #activationEnd:Ljava/util/Calendar;
    :goto_39
    return-void

    .line 478
    :cond_3a
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/Director;->playVideo()V

    goto :goto_39
.end method


# virtual methods
.method public initVideo(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;Z)V
    .registers 13
    .parameter "videoId"
    .parameter "userAuth"
    .parameter "streamParams"
    .parameter "autoPlay"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 231
    invoke-static {p1}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V

    .line 233
    iget-object v3, p0, Lcom/google/android/youtube/videos/player/Director;->cancellableCallback:Lcom/google/android/youtube/core/async/CancellableCallback;

    if-eqz v3, :cond_10

    .line 234
    iget-object v3, p0, Lcom/google/android/youtube/videos/player/Director;->cancellableCallback:Lcom/google/android/youtube/core/async/CancellableCallback;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/async/CancellableCallback;->cancel()V

    .line 235
    iput-object v5, p0, Lcom/google/android/youtube/videos/player/Director;->cancellableCallback:Lcom/google/android/youtube/core/async/CancellableCallback;

    .line 239
    :cond_10
    iget-object v3, p0, Lcom/google/android/youtube/videos/player/Director;->application:Lcom/google/android/youtube/videos/VideosApplication;

    invoke-virtual {v3}, Lcom/google/android/youtube/videos/VideosApplication;->isSystemClockWrong()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 240
    sget-object v3, Lcom/google/android/youtube/videos/player/Director$State;->INITIALIZED_ERROR:Lcom/google/android/youtube/videos/player/Director$State;

    iput-object v3, p0, Lcom/google/android/youtube/videos/player/Director;->state:Lcom/google/android/youtube/videos/player/Director$State;

    .line 241
    iget-object v3, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    const v4, 0x7f0b00f0

    invoke-interface {v3, v4, v7}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showErrorMessage(IZ)V

    .line 268
    :goto_24
    return-void

    .line 245
    :cond_25
    iget-object v3, p0, Lcom/google/android/youtube/videos/player/Director;->videoId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 246
    iput-boolean v7, p0, Lcom/google/android/youtube/videos/player/Director;->trackingSessionStarted:Z

    .line 248
    :cond_2f
    iput-boolean p4, p0, Lcom/google/android/youtube/videos/player/Director;->playWhenInitialized:Z

    .line 249
    iput-object p3, p0, Lcom/google/android/youtube/videos/player/Director;->streamParams:Ljava/lang/String;

    .line 250
    iput-object p1, p0, Lcom/google/android/youtube/videos/player/Director;->videoId:Ljava/lang/String;

    .line 251
    const-string v3, "userAuth can\'t be null"

    invoke-static {p2, v3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/model/UserAuth;

    iput-object v3, p0, Lcom/google/android/youtube/videos/player/Director;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    .line 252
    iget-object v3, p0, Lcom/google/android/youtube/videos/player/Director;->activity:Landroid/app/Activity;

    iget-object v4, p2, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    invoke-virtual {v3, v4, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/videos/player/Director;->userPrefs:Landroid/content/SharedPreferences;

    .line 253
    iput-boolean v7, p0, Lcom/google/android/youtube/videos/player/Director;->alreadyDroppedQuality:Z

    .line 254
    iput-object v5, p0, Lcom/google/android/youtube/videos/player/Director;->selectedStream:Lcom/google/android/youtube/core/model/Stream;

    .line 256
    iget-object v3, p0, Lcom/google/android/youtube/videos/player/Director;->streamingWarningHelper:Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;

    invoke-virtual {v3}, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->register()V

    .line 258
    iget-object v3, p0, Lcom/google/android/youtube/videos/player/Director;->userPrefs:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resume_time_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 259
    .local v0, candidateResumeTime:I
    iget-object v3, p0, Lcom/google/android/youtube/videos/player/Director;->userPrefs:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "last_watched_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 260
    .local v1, lastWatchedTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/32 v5, 0x14997000

    cmp-long v3, v3, v5

    if-gez v3, :cond_b7

    .line 261
    iput v0, p0, Lcom/google/android/youtube/videos/player/Director;->resumeTime:I

    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restored resume time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/youtube/videos/player/Director;->resumeTime:I

    div-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Lcom/google/android/youtube/core/utils/Util;->secondsToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 267
    :goto_b2
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/Director;->initVideoInternal()V

    goto/16 :goto_24

    .line 264
    :cond_b7
    iput v7, p0, Lcom/google/android/youtube/videos/player/Director;->resumeTime:I

    goto :goto_b2
.end method

.method public newMediaPlayer(Lcom/google/android/youtube/core/model/Stream;)Landroid/media/MediaPlayer;
    .registers 7
    .parameter "stream"

    .prologue
    .line 221
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-boolean v1, p1, Lcom/google/android/youtube/core/model/Stream;->isOffline:Z

    if-eqz v1, :cond_13

    .line 223
    new-instance v0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->drmManager:Lcom/google/android/youtube/videos/DrmManager;

    iget-wide v3, p1, Lcom/google/android/youtube/core/model/Stream;->sizeInBytes:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;-><init>(Landroid/content/Context;Lcom/google/android/youtube/videos/DrmManager;J)V

    .line 226
    :goto_12
    return-object v0

    :cond_13
    new-instance v0, Lcom/google/android/youtube/videos/player/DrmMediaPlayer;

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->drmManager:Lcom/google/android/youtube/videos/DrmManager;

    invoke-direct {v0, v1}, Lcom/google/android/youtube/videos/player/DrmMediaPlayer;-><init>(Lcom/google/android/youtube/videos/DrmManager;)V

    goto :goto_12
.end method

.method public onCC()V
    .registers 3

    .prologue
    .line 717
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "CC"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->trackEvent(Ljava/lang/String;)V

    .line 718
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->subtitleHelper:Lcom/google/android/youtube/core/player/SubtitleHelper;

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/SubtitleHelper;->showTrackSelector(Ljava/lang/String;)V

    .line 719
    return-void
.end method

.method public onDownloadProgress(JJI)V
    .registers 8
    .parameter "currentFileSize"
    .parameter "totalFileSize"
    .parameter "percentDownloaded"

    .prologue
    .line 602
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/youtube/videos/player/Director$1;

    invoke-direct {v1, p0, p5}, Lcom/google/android/youtube/videos/player/Director$1;-><init>(Lcom/google/android/youtube/videos/player/Director;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 610
    return-void
.end method

.method public onHQ()V
    .registers 4

    .prologue
    .line 707
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/player/Director;->hq:Z

    if-nez v0, :cond_35

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/google/android/youtube/videos/player/Director;->hq:Z

    .line 708
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v2, "HQ"

    iget-boolean v0, p0, Lcom/google/android/youtube/videos/player/Director;->hq:Z

    if-eqz v0, :cond_37

    const-string v0, "On"

    :goto_11
    invoke-virtual {v1, v2, v0}, Lcom/google/android/youtube/core/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    iget-boolean v1, p0, Lcom/google/android/youtube/videos/player/Director;->hq:Z

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setHQ(Z)V

    .line 710
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->state:Lcom/google/android/youtube/videos/player/Director$State;

    sget-object v1, Lcom/google/android/youtube/videos/player/Director$State;->PLAYER_LOADED:Lcom/google/android/youtube/videos/player/Director$State;

    if-ne v0, v1, :cond_34

    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 711
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/videos/player/Director;->resumeTime:I

    .line 712
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/Director;->playVideo()V

    .line 714
    :cond_34
    return-void

    .line 707
    :cond_35
    const/4 v0, 0x0

    goto :goto_5

    .line 708
    :cond_37
    const-string v0, "Off"

    goto :goto_11
.end method

.method public onHidden()V
    .registers 2

    .prologue
    .line 726
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/player/Director;->controlsHiddenForDialog:Z

    if-nez v0, :cond_9

    .line 727
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->listener:Lcom/google/android/youtube/videos/player/Director$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/videos/player/Director$Listener;->onUserInteractionNotExpected()V

    .line 729
    :cond_9
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 556
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-lez v1, :cond_c

    .line 557
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/player/Director;->isMediaKey(I)Z

    move-result v0

    .line 584
    :cond_b
    :goto_b
    :sswitch_b
    return v0

    .line 560
    :cond_c
    sparse-switch p1, :sswitch_data_3e

    .line 584
    const/4 v0, 0x0

    goto :goto_b

    .line 563
    :sswitch_11
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 564
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->pauseVideo()V

    goto :goto_b

    .line 566
    :cond_1f
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/Director;->playVideo()V

    goto :goto_b

    .line 570
    :sswitch_23
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_b

    .line 571
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/Director;->playVideo()V

    goto :goto_b

    .line 575
    :sswitch_2f
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 576
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->pauseVideo()V

    goto :goto_b

    .line 560
    nop

    :sswitch_data_3e
    .sparse-switch
        0x4f -> :sswitch_11
        0x55 -> :sswitch_11
        0x57 -> :sswitch_b
        0x58 -> :sswitch_b
        0x7e -> :sswitch_2f
        0x7f -> :sswitch_23
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 588
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/player/Director;->isMediaKey(I)Z

    move-result v0

    return v0
.end method

.method public onNext()V
    .registers 1

    .prologue
    .line 700
    return-void
.end method

.method public onPlayPause()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 615
    sget-object v0, Lcom/google/android/youtube/videos/player/Director$10;->$SwitchMap$com$google$android$youtube$videos$player$Director$State:[I

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->state:Lcom/google/android/youtube/videos/player/Director$State;

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/player/Director$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5e

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayPause called in unexpected state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->state:Lcom/google/android/youtube/videos/player/Director$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V

    .line 644
    :goto_26
    return-void

    .line 617
    :pswitch_27
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 618
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->pauseVideo()V

    goto :goto_26

    .line 620
    :cond_35
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/Director;->playVideo()V

    goto :goto_26

    .line 624
    :pswitch_39
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/Director;->playVideo()V

    goto :goto_26

    .line 627
    :pswitch_3d
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showLoading()V

    .line 628
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->setKeepScreenOn(Z)V

    .line 629
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/Director;->warnAndPlayVideo()V

    goto :goto_26

    .line 632
    :pswitch_4b
    iput-boolean v2, p0, Lcom/google/android/youtube/videos/player/Director;->playWhenInitialized:Z

    .line 633
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showLoading()V

    .line 634
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->setKeepScreenOn(Z)V

    goto :goto_26

    .line 637
    :pswitch_58
    iput-boolean v2, p0, Lcom/google/android/youtube/videos/player/Director;->playWhenInitialized:Z

    .line 638
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/Director;->initVideoInternal()V

    goto :goto_26

    .line 615
    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_27
        :pswitch_39
        :pswitch_3d
        :pswitch_4b
        :pswitch_58
    .end packed-switch
.end method

.method public onPrevious()V
    .registers 1

    .prologue
    .line 704
    return-void
.end method

.method public onReplay()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 647
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 648
    iput v2, p0, Lcom/google/android/youtube/videos/player/Director;->resumeTime:I

    .line 649
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget v1, v1, Lcom/google/android/youtube/core/model/Video;->duration:I

    mul-int/lit16 v1, v1, 0x3e8

    invoke-interface {v0, v2, v1, v2}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setTimes(III)V

    .line 650
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/Director;->warnAndPlayVideo()V

    .line 651
    return-void
.end method

.method public onRetry()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 654
    iput-boolean v2, p0, Lcom/google/android/youtube/videos/player/Director;->playWhenInitialized:Z

    .line 655
    sget-object v0, Lcom/google/android/youtube/videos/player/Director$10;->$SwitchMap$com$google$android$youtube$videos$player$Director$State:[I

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->state:Lcom/google/android/youtube/videos/player/Director$State;

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/player/Director$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2c

    .line 668
    :goto_10
    return-void

    .line 657
    :pswitch_11
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/videos/player/Director;->resumeTime:I

    .line 658
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showLoading()V

    .line 659
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->setKeepScreenOn(Z)V

    .line 660
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/Director;->acquireLicenses()V

    goto :goto_10

    .line 663
    :pswitch_27
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/Director;->initVideoInternal()V

    goto :goto_10

    .line 655
    nop

    :pswitch_data_2c
    .packed-switch 0x5
        :pswitch_27
        :pswitch_11
    .end packed-switch
.end method

.method public onSeekEnd(I)V
    .registers 7
    .parameter "time"

    .prologue
    .line 680
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->state:Lcom/google/android/youtube/videos/player/Director$State;

    sget-object v2, Lcom/google/android/youtube/videos/player/Director$State;->PLAYER_LOADED:Lcom/google/android/youtube/videos/player/Director$State;

    if-ne v1, v2, :cond_13

    .line 681
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v1, p1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->seekTo(I)V

    .line 682
    iget-boolean v1, p0, Lcom/google/android/youtube/videos/player/Director;->playWhenSeekEnds:Z

    if-eqz v1, :cond_12

    .line 683
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/Director;->playVideo()V

    .line 696
    :cond_12
    :goto_12
    return-void

    .line 685
    :cond_13
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    if-eqz v1, :cond_12

    .line 686
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->downloadProgressNotifier:Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->downloadProgressNotifier:Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;->getPercentDownloaded()I

    move-result v0

    .line 688
    .local v0, percentDownloaded:I
    :goto_21
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->downloadProgressNotifier:Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget v1, v1, Lcom/google/android/youtube/core/model/Video;->duration:I

    mul-int/lit16 v1, v1, 0x3e8

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->downloadProgressNotifier:Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;

    invoke-virtual {v2}, Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;->getPercentDownloaded()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->allowSeekTo(III)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 691
    :cond_37
    iput p1, p0, Lcom/google/android/youtube/videos/player/Director;->resumeTime:I

    .line 693
    :cond_39
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    iget v2, p0, Lcom/google/android/youtube/videos/player/Director;->resumeTime:I

    iget-object v3, p0, Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget v3, v3, Lcom/google/android/youtube/core/model/Video;->duration:I

    mul-int/lit16 v3, v3, 0x3e8

    iget-object v4, p0, Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget v4, v4, Lcom/google/android/youtube/core/model/Video;->duration:I

    mul-int/lit16 v4, v4, 0x3e8

    invoke-static {v4, v0}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->getSeekToPercent(II)I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setTimes(III)V

    goto :goto_12

    .line 686
    .end local v0           #percentDownloaded:I
    :cond_51
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public onSeekStart()V
    .registers 3

    .prologue
    .line 671
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/videos/player/Director;->playWhenSeekEnds:Z

    .line 672
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 673
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->pauseVideo()V

    .line 677
    :cond_15
    :goto_15
    return-void

    .line 674
    :cond_16
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->state:Lcom/google/android/youtube/videos/player/Director$State;

    sget-object v1, Lcom/google/android/youtube/videos/player/Director$State;->PLAYER_ENDED:Lcom/google/android/youtube/videos/player/Director$State;

    if-ne v0, v1, :cond_15

    .line 675
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showPaused()V

    goto :goto_15
.end method

.method public onShown()V
    .registers 2

    .prologue
    .line 732
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->listener:Lcom/google/android/youtube/videos/player/Director$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/videos/player/Director$Listener;->onUserInteractionExpected()V

    .line 733
    return-void
.end method

.method public onStreamingAccepted()V
    .registers 1

    .prologue
    .line 492
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/Director;->playVideoInternal()V

    .line 493
    return-void
.end method

.method public onStreamingDeclined()V
    .registers 3

    .prologue
    .line 538
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showPaused()V

    .line 539
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->setKeepScreenOn(Z)V

    .line 540
    return-void
.end method

.method public onToggleFullscreen(Z)V
    .registers 3
    .parameter "fullscreen"

    .prologue
    .line 722
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->listener:Lcom/google/android/youtube/videos/player/Director$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/videos/player/Director$Listener;->onToggleFullscreen(Z)V

    .line 723
    return-void
.end method

.method public onVideoStreamsResponse(Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/model/VideoStreams;)V
    .registers 8
    .parameter "purchase"
    .parameter "videoStreams"

    .prologue
    .line 390
    iput-object p1, p0, Lcom/google/android/youtube/videos/player/Director;->purchase:Lcom/google/android/youtube/core/model/Purchase;

    .line 391
    iput-object p2, p0, Lcom/google/android/youtube/videos/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    .line 392
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->subtitleHelper:Lcom/google/android/youtube/core/player/SubtitleHelper;

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/player/SubtitleHelper;->init(Lcom/google/android/youtube/core/model/Video;)V

    .line 394
    iget-object v1, p2, Lcom/google/android/youtube/core/model/VideoStreams;->hi:Lcom/google/android/youtube/core/model/Stream;

    iget-boolean v1, v1, Lcom/google/android/youtube/core/model/Stream;->isOffline:Z

    if-eqz v1, :cond_40

    .line 395
    new-instance v1, Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;

    iget-object v2, p2, Lcom/google/android/youtube/core/model/VideoStreams;->hi:Lcom/google/android/youtube/core/model/Stream;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    iget-object v3, p2, Lcom/google/android/youtube/core/model/VideoStreams;->hi:Lcom/google/android/youtube/core/model/Stream;

    iget-wide v3, v3, Lcom/google/android/youtube/core/model/Stream;->sizeInBytes:J

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;-><init>(Landroid/net/Uri;JLcom/google/android/youtube/videos/player/DownloadProgressNotifier$Listener;)V

    iput-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->downloadProgressNotifier:Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;

    .line 397
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->downloadProgressNotifier:Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;->getPercentDownloaded()I

    move-result v0

    .line 398
    .local v0, percentDownloaded:I
    iget v1, p0, Lcom/google/android/youtube/videos/player/Director;->resumeTime:I

    if-lez v1, :cond_3b

    iget v1, p0, Lcom/google/android/youtube/videos/player/Director;->resumeTime:I

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget v2, v2, Lcom/google/android/youtube/core/model/Video;->duration:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-static {v1, v2, v0}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->allowSeekTo(III)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 400
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/youtube/videos/player/Director;->resumeTime:I

    .line 402
    :cond_3b
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->downloadProgressNotifier:Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;->start()V

    .line 405
    .end local v0           #percentDownloaded:I
    :cond_40
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    iget-boolean v2, p2, Lcom/google/android/youtube/core/model/VideoStreams;->supportsQualityToggle:Z

    invoke-interface {v1, v2}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setSupportsQualityToggle(Z)V

    .line 406
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    iget-boolean v2, p0, Lcom/google/android/youtube/videos/player/Director;->hq:Z

    invoke-interface {v1, v2}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setHQ(Z)V

    .line 408
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/Director;->acquireLicenses()V

    .line 409
    return-void
.end method

.method public onWifiConnected()V
    .registers 1

    .prologue
    .line 550
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/Director;->playVideoInternal()V

    .line 551
    return-void
.end method

.method public onWifiDisconnected()V
    .registers 2

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/Director;->hideControlsForDialog()V

    .line 544
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 545
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->pauseVideo()V

    .line 547
    :cond_10
    return-void
.end method

.method public release()V
    .registers 2

    .prologue
    .line 775
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->release()V

    .line 776
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Tracker;->release()V

    .line 777
    return-void
.end method

.method public reset()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 742
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->streamingWarningHelper:Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->unregister()V

    .line 744
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->cancellableCallback:Lcom/google/android/youtube/core/async/CancellableCallback;

    if-eqz v0, :cond_12

    .line 745
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->cancellableCallback:Lcom/google/android/youtube/core/async/CancellableCallback;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/CancellableCallback;->cancel()V

    .line 746
    iput-object v5, p0, Lcom/google/android/youtube/videos/player/Director;->cancellableCallback:Lcom/google/android/youtube/core/async/CancellableCallback;

    .line 749
    :cond_12
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->userPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_63

    .line 750
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->userPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 751
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->state:Lcom/google/android/youtube/videos/player/Director$State;

    sget-object v2, Lcom/google/android/youtube/videos/player/Director$State;->PLAYER_ENDED:Lcom/google/android/youtube/videos/player/Director$State;

    if-ne v1, v2, :cond_7d

    .line 752
    iput v4, p0, Lcom/google/android/youtube/videos/player/Director;->resumeTime:I

    .line 753
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume_time_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 759
    :cond_42
    :goto_42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last_watched_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 760
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 763
    :cond_63
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->downloadProgressNotifier:Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;

    if-eqz v0, :cond_6e

    .line 764
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->downloadProgressNotifier:Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;->stop()V

    .line 765
    iput-object v5, p0, Lcom/google/android/youtube/videos/player/Director;->downloadProgressNotifier:Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;

    .line 768
    :cond_6e
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0, v4}, Lcom/google/android/youtube/core/player/YouTubePlayer;->setKeepScreenOn(Z)V

    .line 769
    sget-object v0, Lcom/google/android/youtube/videos/player/Director$State;->UNINITIALIZED:Lcom/google/android/youtube/videos/player/Director$State;

    iput-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->state:Lcom/google/android/youtube/videos/player/Director$State;

    .line 771
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Tracker;->trackStopped()V

    .line 772
    return-void

    .line 754
    :cond_7d
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->state:Lcom/google/android/youtube/videos/player/Director$State;

    sget-object v2, Lcom/google/android/youtube/videos/player/Director$State;->PLAYER_LOADED:Lcom/google/android/youtube/videos/player/Director$State;

    if-eq v1, v2, :cond_89

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->state:Lcom/google/android/youtube/videos/player/Director$State;

    sget-object v2, Lcom/google/android/youtube/videos/player/Director$State;->PLAYER_ERROR:Lcom/google/android/youtube/videos/player/Director$State;

    if-ne v1, v2, :cond_42

    .line 755
    :cond_89
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->getCurrentPosition()I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/videos/player/Director;->resumeTime:I

    .line 756
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume_time_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/youtube/videos/player/Director;->resumeTime:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 757
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saved resume time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/youtube/videos/player/Director;->resumeTime:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Lcom/google/android/youtube/core/utils/Util;->secondsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    goto/16 :goto_42
.end method

.method public setFullscreen(Z)V
    .registers 3
    .parameter "fullscreen"

    .prologue
    .line 780
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setFullscreen(Z)V

    .line 781
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/player/Director;->onToggleFullscreen(Z)V

    .line 782
    return-void
.end method

.method public setLockFullscreenMode(Z)V
    .registers 4
    .parameter "lockFullscreenMode"

    .prologue
    .line 785
    iput-boolean p1, p0, Lcom/google/android/youtube/videos/player/Director;->lockFullscreenMode:Z

    .line 786
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    if-nez p1, :cond_b

    const/4 v0, 0x1

    :goto_7
    invoke-interface {v1, v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setShowFullscreen(Z)V

    .line 787
    return-void

    .line 786
    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method
