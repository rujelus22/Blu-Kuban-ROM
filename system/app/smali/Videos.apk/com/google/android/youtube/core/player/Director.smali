.class public Lcom/google/android/youtube/core/player/Director;
.super Ljava/lang/Object;
.source "Director.java"

# interfaces
.implements Lcom/google/android/youtube/core/player/AdOverlay$Listener;
.implements Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;
.implements Lcom/google/android/youtube/core/player/LiveOverlay$Listener;
.implements Lcom/google/android/youtube/core/player/WarningHelper$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/player/Director$Listener;
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private ad:Lcom/google/android/youtube/core/model/VastAd;

.field private adCallback:Lcom/google/android/youtube/core/async/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/model/VastAd;",
            ">;"
        }
    .end annotation
.end field

.field private final adHelper:Lcom/google/android/youtube/core/player/AdHelper;

.field private final adOverlay:Lcom/google/android/youtube/core/player/AdOverlay;

.field private final adultContentHelper:Lcom/google/android/youtube/core/player/AdultContentHelper;

.field private final analytics:Lcom/google/android/youtube/core/Analytics;

.field private authenticate:Z

.field private final autoplayHelper:Lcom/google/android/youtube/core/player/AutoplayHelper;

.field private brandingCallback:Lcom/google/android/youtube/core/async/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Branding;",
            ">;"
        }
    .end annotation
.end field

.field private final brandingOverlay:Lcom/google/android/youtube/core/player/BrandingOverlay;

.field private final controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

.field private volatile ended:Z

.field private errorBeforePlaying:Z

.field private finishOnEnded:Z

.field private final gdataClient:Lcom/google/android/youtube/core/client/GDataClient;

.field private handler:Landroid/os/Handler;

.field private hq:Z

.field private lastBrandingRequest:Lcom/google/android/youtube/core/async/GDataRequest;

.field private final listener:Lcom/google/android/youtube/core/player/Director$Listener;

.field private liveEventCallback:Lcom/google/android/youtube/core/async/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/LiveEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final liveOverlay:Lcom/google/android/youtube/core/player/LiveOverlay;

.field private lockFullscreenMode:Z

.field private messageToast:Landroid/widget/Toast;

.field private noCountingStreamParameter:Ljava/lang/String;

.field private final player:Lcom/google/android/youtube/core/player/YouTubePlayer;

.field private final playerTracker:Lcom/google/android/youtube/core/player/Tracker;

.field private playingAd:Z

.field private playlistAuthenticatee:Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;

.field private playlistAutoSkip:Z

.field private playlistCallback:Lcom/google/android/youtube/core/async/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;"
        }
    .end annotation
.end field

.field private playlistCurrentIndex:I

.field private final playlistIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private playlistNextPageUri:Landroid/net/Uri;

.field private playlistUri:Landroid/net/Uri;

.field private final revShareClientId:Ljava/lang/String;

.field private startPosition:I

.field private stopped:Z

.field private stoppedOnAd:Z

.field private streamParams:Ljava/lang/String;

.field private final subtitleHelper:Lcom/google/android/youtube/core/player/SubtitleHelper;

.field private useVssForViewCounts:Z

.field private userAuth:Lcom/google/android/youtube/core/model/UserAuth;

.field private final userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private video:Lcom/google/android/youtube/core/model/Video;

.field private videoAuthenticatee:Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;

.field private videoCallback:Lcom/google/android/youtube/core/async/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;"
        }
    .end annotation
.end field

.field private videoId:Ljava/lang/String;

.field private videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

.field private videoStreamsCallback:Lcom/google/android/youtube/core/async/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/VideoStreams;",
            ">;"
        }
    .end annotation
.end field

.field private final warningHelper:Lcom/google/android/youtube/core/player/WarningHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/player/YouTubePlayer;Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/client/GDataClient;Lcom/google/android/youtube/core/client/AdsClient;Lcom/google/android/youtube/core/client/StatsClient;Lcom/google/android/youtube/core/client/SubtitlesClient;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/Analytics;Ljava/lang/String;Lcom/google/android/youtube/core/player/Director$Listener;Lcom/google/android/youtube/core/player/ControllerOverlay;Lcom/google/android/youtube/core/player/BrandingOverlay;)V
    .registers 30
    .parameter "player"
    .parameter "activity"
    .parameter "preferences"
    .parameter "gdataClient"
    .parameter "adsClient"
    .parameter "statsClient"
    .parameter "subtitlesClient"
    .parameter "userAuthorizer"
    .parameter "analytics"
    .parameter "revShareClientId"
    .parameter "listener"
    .parameter "controllerOverlay"
    .parameter "brandingOverlay"

    .prologue
    .line 237
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    invoke-direct/range {v0 .. v15}, Lcom/google/android/youtube/core/player/Director;-><init>(Lcom/google/android/youtube/core/player/YouTubePlayer;Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/client/GDataClient;Lcom/google/android/youtube/core/client/AdsClient;Lcom/google/android/youtube/core/client/StatsClient;Lcom/google/android/youtube/core/client/SubtitlesClient;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/Analytics;Ljava/lang/String;Lcom/google/android/youtube/core/player/Director$Listener;Lcom/google/android/youtube/core/player/ControllerOverlay;Lcom/google/android/youtube/core/player/BrandingOverlay;ILjava/lang/String;)V

    .line 240
    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/core/player/YouTubePlayer;Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/client/GDataClient;Lcom/google/android/youtube/core/client/AdsClient;Lcom/google/android/youtube/core/client/StatsClient;Lcom/google/android/youtube/core/client/SubtitlesClient;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/Analytics;Ljava/lang/String;Lcom/google/android/youtube/core/player/Director$Listener;Lcom/google/android/youtube/core/player/ControllerOverlay;Lcom/google/android/youtube/core/player/BrandingOverlay;ILjava/lang/String;)V
    .registers 31
    .parameter "player"
    .parameter "activity"
    .parameter "preferences"
    .parameter "gdataClient"
    .parameter "adsClient"
    .parameter "statsClient"
    .parameter "subtitlesClient"
    .parameter "userAuthorizer"
    .parameter "analytics"
    .parameter "revShareClientId"
    .parameter "listener"
    .parameter "controllerOverlay"
    .parameter "brandingOverlay"
    .parameter "vssSamplingWeight"
    .parameter "noCountingStreamParameter"

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/google/android/youtube/core/player/Director;->activity:Landroid/app/Activity;

    .line 162
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/google/android/youtube/core/player/Director;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 163
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/google/android/youtube/core/player/Director;->analytics:Lcom/google/android/youtube/core/Analytics;

    .line 164
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/android/youtube/core/player/Director;->listener:Lcom/google/android/youtube/core/player/Director$Listener;

    .line 165
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/youtube/core/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    .line 166
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/android/youtube/core/player/Director;->revShareClientId:Ljava/lang/String;

    .line 167
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/youtube/core/player/Director;->playlistAutoSkip:Z

    .line 168
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/google/android/youtube/core/player/Director;->gdataClient:Lcom/google/android/youtube/core/client/GDataClient;

    .line 169
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/google/android/youtube/core/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    .line 170
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/youtube/core/player/Director;->noCountingStreamParameter:Ljava/lang/String;

    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->getPlayerView()Lcom/google/android/youtube/core/player/PlayerView;

    move-result-object v14

    .line 174
    .local v14, playerView:Lcom/google/android/youtube/core/player/PlayerView;
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/youtube/core/player/Director;->brandingOverlay:Lcom/google/android/youtube/core/player/BrandingOverlay;

    .line 175
    if-eqz p13, :cond_3b

    .line 176
    invoke-interface/range {p13 .. p13}, Lcom/google/android/youtube/core/player/BrandingOverlay;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/google/android/youtube/core/player/PlayerView;->addView(Landroid/view/View;)V

    .line 178
    :cond_3b
    new-instance v7, Lcom/google/android/youtube/core/player/SubtitleOverlay;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Lcom/google/android/youtube/core/player/SubtitleOverlay;-><init>(Landroid/app/Activity;)V

    .line 179
    .local v7, subtitleOverlay:Lcom/google/android/youtube/core/player/SubtitleOverlay;
    invoke-virtual {v14, v7}, Lcom/google/android/youtube/core/player/PlayerView;->addView(Landroid/view/View;)V

    .line 181
    move-object/from16 v0, p12

    invoke-interface {v0, p0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setListener(Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;)V

    .line 182
    invoke-interface/range {p12 .. p12}, Lcom/google/android/youtube/core/player/ControllerOverlay;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/google/android/youtube/core/player/PlayerView;->addView(Landroid/view/View;)V

    .line 183
    new-instance v3, Lcom/google/android/youtube/core/player/AdOverlay;

    move-object/from16 v0, p2

    invoke-direct {v3, v0, p0}, Lcom/google/android/youtube/core/player/AdOverlay;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/player/AdOverlay$Listener;)V

    iput-object v3, p0, Lcom/google/android/youtube/core/player/Director;->adOverlay:Lcom/google/android/youtube/core/player/AdOverlay;

    .line 184
    iget-object v3, p0, Lcom/google/android/youtube/core/player/Director;->adOverlay:Lcom/google/android/youtube/core/player/AdOverlay;

    invoke-virtual {v14, v3}, Lcom/google/android/youtube/core/player/PlayerView;->addView(Landroid/view/View;)V

    .line 186
    const-string v3, "default_hq"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_115

    const/4 v3, 0x1

    :goto_6b
    iput-boolean v3, p0, Lcom/google/android/youtube/core/player/Director;->hq:Z

    .line 189
    iget-boolean v3, p0, Lcom/google/android/youtube/core/player/Director;->hq:Z

    move-object/from16 v0, p12

    invoke-interface {v0, v3}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setHQ(Z)V

    .line 191
    new-instance v3, Lcom/google/android/youtube/core/player/SubtitleHelper;

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    move-object/from16 v8, p12

    move-object/from16 v9, p7

    invoke-direct/range {v3 .. v9}, Lcom/google/android/youtube/core/player/SubtitleHelper;-><init>(Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/player/YouTubePlayer;Lcom/google/android/youtube/core/player/SubtitleOverlay;Lcom/google/android/youtube/core/player/SubtitleHelper$Listener;Lcom/google/android/youtube/core/client/SubtitlesClient;)V

    iput-object v3, p0, Lcom/google/android/youtube/core/player/Director;->subtitleHelper:Lcom/google/android/youtube/core/player/SubtitleHelper;

    .line 193
    new-instance v8, Lcom/google/android/youtube/core/player/AdultContentHelper;

    move-object/from16 v9, p2

    move-object v10, p0

    move-object/from16 v11, p3

    move-object/from16 v12, p8

    move-object/from16 v13, p4

    invoke-direct/range {v8 .. v13}, Lcom/google/android/youtube/core/player/AdultContentHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/player/Director;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/client/GDataClient;)V

    iput-object v8, p0, Lcom/google/android/youtube/core/player/Director;->adultContentHelper:Lcom/google/android/youtube/core/player/AdultContentHelper;

    .line 195
    new-instance v3, Lcom/google/android/youtube/core/player/WarningHelper;

    const-string v4, "warning_3d"

    const v5, 0x7f0b001c

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-direct {v3, v0, p0, v4, v5}, Lcom/google/android/youtube/core/player/WarningHelper;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/player/WarningHelper$Listener;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/android/youtube/core/player/Director;->warningHelper:Lcom/google/android/youtube/core/player/WarningHelper;

    .line 198
    new-instance v11, Lcom/google/android/youtube/core/utils/SystemClock;

    invoke-direct {v11}, Lcom/google/android/youtube/core/utils/SystemClock;-><init>()V

    .line 200
    .local v11, clock:Lcom/google/android/youtube/core/utils/Clock;
    new-instance v3, Lcom/google/android/youtube/core/player/LiveOverlay;

    move-object/from16 v0, p2

    invoke-direct {v3, v0, v11, p0}, Lcom/google/android/youtube/core/player/LiveOverlay;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/utils/Clock;Lcom/google/android/youtube/core/player/LiveOverlay$Listener;)V

    iput-object v3, p0, Lcom/google/android/youtube/core/player/Director;->liveOverlay:Lcom/google/android/youtube/core/player/LiveOverlay;

    .line 201
    iget-object v3, p0, Lcom/google/android/youtube/core/player/Director;->liveOverlay:Lcom/google/android/youtube/core/player/LiveOverlay;

    invoke-virtual {v14, v3}, Lcom/google/android/youtube/core/player/PlayerView;->addView(Landroid/view/View;)V

    .line 203
    new-instance v3, Lcom/google/android/youtube/core/player/AdHelper;

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    move-object/from16 v2, p4

    invoke-direct {v3, v11, v0, v1, v2}, Lcom/google/android/youtube/core/player/AdHelper;-><init>(Lcom/google/android/youtube/core/utils/Clock;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/client/AdsClient;Lcom/google/android/youtube/core/client/GDataClient;)V

    iput-object v3, p0, Lcom/google/android/youtube/core/player/Director;->adHelper:Lcom/google/android/youtube/core/player/AdHelper;

    .line 207
    invoke-static/range {p15 .. p15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12d

    const/16 v3, 0xa

    move/from16 v0, p14

    if-ne v0, v3, :cond_12d

    const/4 v3, 0x1

    :goto_d6
    iput-boolean v3, p0, Lcom/google/android/youtube/core/player/Director;->useVssForViewCounts:Z

    .line 209
    iget-boolean v13, p0, Lcom/google/android/youtube/core/player/Director;->useVssForViewCounts:Z

    move-object/from16 v8, p2

    move-object/from16 v9, p9

    move-object/from16 v10, p6

    move/from16 v12, p14

    invoke-static/range {v8 .. v13}, Lcom/google/android/youtube/core/player/Tracker;->newInstance(Landroid/content/Context;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/client/StatsClient;Lcom/google/android/youtube/core/utils/Clock;IZ)Lcom/google/android/youtube/core/player/Tracker;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/core/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    .line 211
    iget-object v3, p0, Lcom/google/android/youtube/core/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/player/YouTubePlayer;->addListener(Landroid/os/Handler;)V

    .line 213
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/google/android/youtube/core/player/Director;->playlistIds:Ljava/util/List;

    .line 215
    new-instance v3, Lcom/google/android/youtube/core/player/AutoplayHelper;

    move-object/from16 v0, p2

    invoke-direct {v3, v0, v11}, Lcom/google/android/youtube/core/player/AutoplayHelper;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/utils/Clock;)V

    iput-object v3, p0, Lcom/google/android/youtube/core/player/Director;->autoplayHelper:Lcom/google/android/youtube/core/player/AutoplayHelper;

    .line 217
    const-string v3, ""

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/core/player/Director;->messageToast:Landroid/widget/Toast;

    .line 219
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->initCallbacks()V

    .line 220
    iget-object v3, p0, Lcom/google/android/youtube/core/player/Director;->handler:Landroid/os/Handler;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/player/YouTubePlayer;->addListener(Landroid/os/Handler;)V

    .line 221
    return-void

    .line 186
    .end local v11           #clock:Lcom/google/android/youtube/core/utils/Clock;
    :cond_115
    invoke-static/range {p2 .. p2}, Lcom/google/android/youtube/core/utils/Util;->isFastNetwork(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_12a

    invoke-static/range {p2 .. p2}, Lcom/google/android/youtube/core/utils/Util;->probablyLowEndDevice(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_12a

    invoke-static/range {p2 .. p2}, Lcom/google/android/youtube/core/utils/Util;->isChargeableNetwork(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_12a

    const/4 v3, 0x1

    goto/16 :goto_6b

    :cond_12a
    const/4 v3, 0x0

    goto/16 :goto_6b

    .line 207
    .restart local v11       #clock:Lcom/google/android/youtube/core/utils/Clock;
    :cond_12d
    const/4 v3, 0x0

    goto :goto_d6
.end method

.method static synthetic access$000(Lcom/google/android/youtube/core/player/Director;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->stopped:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/youtube/core/player/Director;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->onNextInternal()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/youtube/core/player/Director;Ljava/lang/Exception;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/Director;->onInitError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/youtube/core/player/Director;Ljava/lang/Exception;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/Director;->onVideoStreamsError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/youtube/core/player/Director;Ljava/lang/String;Lcom/google/android/youtube/core/model/VastAd;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/player/Director;->onAdResponse(Ljava/lang/String;Lcom/google/android/youtube/core/model/VastAd;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/youtube/core/player/Director;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->getPlaylistUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/async/Callback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->playlistCallback:Lcom/google/android/youtube/core/async/Callback;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/youtube/core/player/Director;Lcom/google/android/youtube/core/model/Page;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/Director;->onPlaylistPageResponse(Lcom/google/android/youtube/core/model/Page;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->lastBrandingRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/google/android/youtube/core/player/Director;Lcom/google/android/youtube/core/async/GDataRequest;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/android/youtube/core/player/Director;->lastBrandingRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/player/Director$Listener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->listener:Lcom/google/android/youtube/core/player/Director$Listener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/youtube/core/player/Director;Lcom/google/android/youtube/core/model/LiveEvent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/Director;->onLiveEventResponse(Lcom/google/android/youtube/core/model/LiveEvent;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/android/youtube/core/player/Director;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->onLiveEventError()V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/player/ControllerOverlay;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/youtube/core/player/Director;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/model/UserAuth;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/android/youtube/core/player/Director;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/google/android/youtube/core/player/Director;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->errorBeforePlaying:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/google/android/youtube/core/player/Director;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->onVideoStarted()V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/android/youtube/core/player/Director;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->playingAd:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/google/android/youtube/core/player/Director;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/Director;->onAdEnded(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/android/youtube/core/player/Director;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->onVideoEnded()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/youtube/core/player/Director;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/async/Callback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->videoCallback:Lcom/google/android/youtube/core/async/Callback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/client/GDataClient;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->gdataClient:Lcom/google/android/youtube/core/client/GDataClient;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/youtube/core/player/Director;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/youtube/core/player/Director;Lcom/google/android/youtube/core/model/Video;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/Director;->onVideoResponse(Lcom/google/android/youtube/core/model/Video;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/model/Video;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/Analytics;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->analytics:Lcom/google/android/youtube/core/Analytics;

    return-object v0
.end method

.method private getPlaylistUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->playlistNextPageUri:Landroid/net/Uri;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->playlistNextPageUri:Landroid/net/Uri;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->playlistUri:Landroid/net/Uri;

    goto :goto_6
.end method

.method private hasNext()Z
    .registers 3

    .prologue
    .line 672
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->playlistUri:Landroid/net/Uri;

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/google/android/youtube/core/player/Director;->playlistCurrentIndex:I

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->playlistIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_14

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->playlistNextPageUri:Landroid/net/Uri;

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private hasPrevious()Z
    .registers 2

    .prologue
    .line 677
    iget v0, p0, Lcom/google/android/youtube/core/player/Director;->playlistCurrentIndex:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private initCallbacks()V
    .registers 4

    .prologue
    .line 896
    new-instance v0, Lcom/google/android/youtube/core/player/Director$2;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/player/Director$2;-><init>(Lcom/google/android/youtube/core/player/Director;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/Director;->videoAuthenticatee:Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;

    .line 913
    new-instance v0, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/core/player/Director$3;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/player/Director$3;-><init>(Lcom/google/android/youtube/core/player/Director;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/Director;->videoCallback:Lcom/google/android/youtube/core/async/Callback;

    .line 926
    new-instance v0, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/core/player/Director$4;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/player/Director$4;-><init>(Lcom/google/android/youtube/core/player/Director;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/Director;->videoStreamsCallback:Lcom/google/android/youtube/core/async/Callback;

    .line 938
    new-instance v0, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/core/player/Director$5;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/player/Director$5;-><init>(Lcom/google/android/youtube/core/player/Director;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/Director;->adCallback:Lcom/google/android/youtube/core/async/Callback;

    .line 950
    new-instance v0, Lcom/google/android/youtube/core/player/Director$6;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/player/Director$6;-><init>(Lcom/google/android/youtube/core/player/Director;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/Director;->playlistAuthenticatee:Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;

    .line 967
    new-instance v0, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/core/player/Director$7;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/player/Director$7;-><init>(Lcom/google/android/youtube/core/player/Director;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/Director;->playlistCallback:Lcom/google/android/youtube/core/async/Callback;

    .line 979
    new-instance v0, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/core/player/Director$8;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/player/Director$8;-><init>(Lcom/google/android/youtube/core/player/Director;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/Director;->brandingCallback:Lcom/google/android/youtube/core/async/Callback;

    .line 997
    new-instance v0, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/core/player/Director$9;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/player/Director$9;-><init>(Lcom/google/android/youtube/core/player/Director;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/Director;->liveEventCallback:Lcom/google/android/youtube/core/async/Callback;

    .line 1008
    new-instance v0, Lcom/google/android/youtube/core/player/Director$10;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/player/Director$10;-><init>(Lcom/google/android/youtube/core/player/Director;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/Director;->handler:Landroid/os/Handler;

    .line 1101
    return-void
.end method

.method private makePlaylistPageRequest()V
    .registers 4

    .prologue
    .line 645
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->authenticate:Z

    if-eqz v0, :cond_e

    .line 646
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->playlistAuthenticatee:Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->authenticate(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V

    .line 652
    :goto_d
    return-void

    .line 648
    :cond_e
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->gdataClient:Lcom/google/android/youtube/core/client/GDataClient;

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->getPlaylistUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/async/GDataRequests;->getPlaylistVideosRequest(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->playlistCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/client/GDataClient;->requestPlaylistVideos(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Callback;)V

    goto :goto_d
.end method

.method private makeStreamsRequest()V
    .registers 4

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    if-eqz v0, :cond_a

    .line 376
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/Director;->onVideoStreamsResponse(Lcom/google/android/youtube/core/model/VideoStreams;)V

    .line 385
    :goto_9
    return-void

    .line 378
    :cond_a
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->authenticate:Z

    if-eqz v0, :cond_20

    .line 379
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->gdataClient:Lcom/google/android/youtube/core/client/GDataClient;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/async/GDataRequests;->getMyStreamsRequest(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->videoStreamsCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/client/GDataClient;->requestMyStreams(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Callback;)V

    goto :goto_9

    .line 382
    :cond_20
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->gdataClient:Lcom/google/android/youtube/core/client/GDataClient;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/youtube/core/async/GDataRequests;->getStreamsRequest(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->videoStreamsCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/client/GDataClient;->requestStreams(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Callback;)V

    goto :goto_9
.end method

.method private makeVideoRequest()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 289
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->videoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 293
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/Director;->onVideoResponse(Lcom/google/android/youtube/core/model/Video;)V

    .line 304
    :goto_16
    return-void

    .line 295
    :cond_17
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showLoading()V

    .line 296
    iput-object v2, p0, Lcom/google/android/youtube/core/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    .line 297
    iput-object v2, p0, Lcom/google/android/youtube/core/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    .line 298
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->authenticate:Z

    if-eqz v0, :cond_2e

    .line 299
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->videoAuthenticatee:Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->authenticate(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V

    goto :goto_16

    .line 301
    :cond_2e
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->gdataClient:Lcom/google/android/youtube/core/client/GDataClient;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->videoId:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/youtube/core/async/GDataRequests;->getVideoRequest(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->videoCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/client/GDataClient;->requestVideo(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Callback;)V

    goto :goto_16
.end method

.method private maybeSkipVideo()V
    .registers 3

    .prologue
    .line 681
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->playlistAutoSkip:Z

    if-eqz v0, :cond_27

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 682
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->messageToast:Landroid/widget/Toast;

    const v1, 0x7f0b0065

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 683
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->messageToast:Landroid/widget/Toast;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 684
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->messageToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 694
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/youtube/core/player/Director$1;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/core/player/Director$1;-><init>(Lcom/google/android/youtube/core/player/Director;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 702
    :cond_27
    return-void
.end method

.method private onAdEnded(Z)V
    .registers 3
    .parameter "stopped"

    .prologue
    .line 442
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->playingAd:Z

    .line 443
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/Director;->stoppedOnAd:Z

    .line 444
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->adOverlay:Lcom/google/android/youtube/core/player/AdOverlay;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/AdOverlay;->hide()V

    .line 445
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->resetTime()V

    .line 446
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->setControllerStyle()V

    .line 447
    if-nez p1, :cond_21

    .line 448
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->adHelper:Lcom/google/android/youtube/core/player/AdHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/AdHelper;->onAdEnded()V

    .line 449
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Tracker;->trackVideoInit()V

    .line 450
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->playVideo()V

    .line 452
    :cond_21
    return-void
.end method

.method private onAdResponse(Ljava/lang/String;Lcom/google/android/youtube/core/model/VastAd;)V
    .registers 4
    .parameter "videoId"
    .parameter "ad"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 413
    if-eqz p2, :cond_23

    invoke-virtual {p2}, Lcom/google/android/youtube/core/model/VastAd;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_14
    invoke-static {v0}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V

    .line 414
    iput-object p2, p0, Lcom/google/android/youtube/core/player/Director;->ad:Lcom/google/android/youtube/core/model/VastAd;

    .line 415
    if-eqz p2, :cond_25

    iget-object v0, p2, Lcom/google/android/youtube/core/model/VastAd;->streamUri:Landroid/net/Uri;

    if-eqz v0, :cond_25

    .line 416
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->playAd()V

    .line 423
    :goto_22
    return-void

    .line 413
    :cond_23
    const/4 v0, 0x0

    goto :goto_14

    .line 418
    :cond_25
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->playVideo()V

    goto :goto_22

    .line 421
    :cond_29
    const-string v0, "ignoring late ad response"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    goto :goto_22
.end method

.method private onInitError(Ljava/lang/Exception;)V
    .registers 3
    .parameter "exception"

    .prologue
    .line 616
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->listener:Lcom/google/android/youtube/core/player/Director$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/player/Director$Listener;->onError(Ljava/lang/Exception;)V

    .line 617
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->hide()V

    .line 618
    return-void
.end method

.method private onLiveEventError()V
    .registers 1

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->makeStreamsRequest()V

    .line 368
    return-void
.end method

.method private onLiveEventResponse(Lcom/google/android/youtube/core/model/LiveEvent;)V
    .registers 3
    .parameter "liveEvent"

    .prologue
    .line 358
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/LiveEvent;->isUpcoming()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 359
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->hide()V

    .line 360
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->liveOverlay:Lcom/google/android/youtube/core/player/LiveOverlay;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/player/LiveOverlay;->init(Lcom/google/android/youtube/core/model/LiveEvent;)V

    .line 364
    :goto_10
    return-void

    .line 362
    :cond_11
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->makeStreamsRequest()V

    goto :goto_10
.end method

.method private onNextInternal()V
    .registers 3

    .prologue
    .line 745
    iget v0, p0, Lcom/google/android/youtube/core/player/Director;->playlistCurrentIndex:I

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->playlistIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2c

    .line 746
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "Next"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->trackEvent(Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->resetTime()V

    .line 748
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->playlistIds:Ljava/util/List;

    iget v1, p0, Lcom/google/android/youtube/core/player/Director;->playlistCurrentIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/youtube/core/player/Director;->playlistCurrentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/Director;->authenticate:Z

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/player/Director;->initVideo(Ljava/lang/String;Z)V

    .line 754
    :cond_2b
    :goto_2b
    return-void

    .line 749
    :cond_2c
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->playlistNextPageUri:Landroid/net/Uri;

    if-eqz v0, :cond_2b

    .line 750
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "Next"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->trackEvent(Ljava/lang/String;)V

    .line 751
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->resetTime()V

    .line 752
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->makePlaylistPageRequest()V

    goto :goto_2b
.end method

.method private onPlaylistPageResponse(Lcom/google/android/youtube/core/model/Page;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 655
    .local p1, page:Lcom/google/android/youtube/core/model/Page;,"Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;"
    iget-object v2, p1, Lcom/google/android/youtube/core/model/Page;->nextUri:Landroid/net/Uri;

    iput-object v2, p0, Lcom/google/android/youtube/core/player/Director;->playlistNextPageUri:Landroid/net/Uri;

    .line 656
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/Page;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Video;

    .line 657
    .local v1, video:Lcom/google/android/youtube/core/model/Video;
    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->playlistIds:Ljava/util/List;

    iget-object v3, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 659
    .end local v1           #video:Lcom/google/android/youtube/core/model/Video;
    :cond_1c
    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->playlistIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_48

    .line 660
    iget v2, p0, Lcom/google/android/youtube/core/player/Director;->playlistCurrentIndex:I

    iget-object v3, p0, Lcom/google/android/youtube/core/player/Director;->playlistIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_44

    .line 661
    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->playlistIds:Ljava/util/List;

    iget v3, p0, Lcom/google/android/youtube/core/player/Director;->playlistCurrentIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/youtube/core/player/Director;->playlistCurrentIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/android/youtube/core/player/Director;->authenticate:Z

    invoke-virtual {p0, v2, v3}, Lcom/google/android/youtube/core/player/Director;->initVideo(Ljava/lang/String;Z)V

    .line 669
    :goto_43
    return-void

    .line 663
    :cond_44
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->makePlaylistPageRequest()V

    goto :goto_43

    .line 667
    :cond_48
    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_43
.end method

.method private onVideoEnded()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 523
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/Director;->ended:Z

    .line 525
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->finishOnEnded:Z

    if-eqz v0, :cond_d

    .line 526
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 548
    :cond_c
    :goto_c
    return-void

    .line 530
    :cond_d
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 531
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->autoplayHelper:Lcom/google/android/youtube/core/player/AutoplayHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/AutoplayHelper;->autoplayAllowed()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 532
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/Director;->playlistAutoSkip:Z

    .line 533
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->onNextInternal()V

    goto :goto_c

    .line 535
    :cond_21
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->autoplayHelper:Lcom/google/android/youtube/core/player/AutoplayHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/AutoplayHelper;->showReasonToast()V

    .line 536
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_c

    .line 539
    :cond_2c
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Video;->isLive()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 540
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showPaused()V

    .line 544
    :goto_39
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->lockFullscreenMode:Z

    if-nez v0, :cond_c

    .line 545
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/Director;->setFullscreen(Z)V

    goto :goto_c

    .line 542
    :cond_42
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showEnded()V

    goto :goto_39
.end method

.method private onVideoResponse(Lcom/google/android/youtube/core/model/Video;)V
    .registers 6
    .parameter "video"

    .prologue
    const/4 v3, 0x0

    .line 307
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/Video;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V

    .line 309
    iput-object p1, p0, Lcom/google/android/youtube/core/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    .line 310
    const/4 v0, 0x0

    .line 312
    .local v0, skip:Z
    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v2, Lcom/google/android/youtube/core/model/Video$State;->PLAYABLE:Lcom/google/android/youtube/core/model/Video$State;

    if-eq v1, v2, :cond_4c

    .line 313
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v2, "PlayCannotProceeed"

    invoke-virtual {v1, v2, p1, v3}, Lcom/google/android/youtube/core/Analytics;->trackPlaybackEvent(Ljava/lang/String;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/Stream$Quality;)V

    .line 314
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    iget v2, v2, Lcom/google/android/youtube/core/model/Video$State;->explanationId:I

    invoke-interface {v1, v2}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showErrorMessage(I)V

    .line 315
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/Director;->errorBeforePlaying:Z

    .line 316
    const/4 v0, 0x1

    .line 331
    :goto_25
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->listener:Lcom/google/android/youtube/core/player/Director$Listener;

    invoke-interface {v1, p1}, Lcom/google/android/youtube/core/player/Director$Listener;->onVideo(Lcom/google/android/youtube/core/model/Video;)V

    .line 332
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->subtitleHelper:Lcom/google/android/youtube/core/player/SubtitleHelper;

    invoke-virtual {v1, p1}, Lcom/google/android/youtube/core/player/SubtitleHelper;->init(Lcom/google/android/youtube/core/model/Video;)V

    .line 334
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/Video;->couldHaveBranding()Z

    move-result v1

    if-eqz v1, :cond_80

    .line 335
    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->owner:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/youtube/core/async/GDataRequests;->getBrandingRequest(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/player/Director;->lastBrandingRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 336
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->gdataClient:Lcom/google/android/youtube/core/client/GDataClient;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->lastBrandingRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v3, p0, Lcom/google/android/youtube/core/player/Director;->brandingCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {v1, v2, v3}, Lcom/google/android/youtube/core/client/GDataClient;->requestBranding(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Callback;)V

    .line 341
    :goto_46
    if-eqz v0, :cond_4b

    .line 342
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->maybeSkipVideo()V

    .line 344
    :cond_4b
    return-void

    .line 317
    :cond_4c
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/Director;->stopped:Z

    if-eqz v1, :cond_60

    .line 318
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/Director;->ended:Z

    if-eqz v1, :cond_5a

    .line 319
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showEnded()V

    goto :goto_25

    .line 321
    :cond_5a
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showPaused()V

    goto :goto_25

    .line 323
    :cond_60
    iget-boolean v1, p1, Lcom/google/android/youtube/core/model/Video;->is3d:Z

    if-eqz v1, :cond_72

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->isFastNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_72

    .line 324
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->warningHelper:Lcom/google/android/youtube/core/player/WarningHelper;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/WarningHelper;->maybeShowWarning()V

    goto :goto_25

    .line 325
    :cond_72
    iget-boolean v1, p1, Lcom/google/android/youtube/core/model/Video;->adultContent:Z

    if-eqz v1, :cond_7c

    .line 326
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->adultContentHelper:Lcom/google/android/youtube/core/player/AdultContentHelper;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/AdultContentHelper;->init()V

    goto :goto_25

    .line 328
    :cond_7c
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/Director;->startVideo()V

    goto :goto_25

    .line 338
    :cond_80
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->listener:Lcom/google/android/youtube/core/player/Director$Listener;

    invoke-interface {v1, v3}, Lcom/google/android/youtube/core/player/Director$Listener;->onBranding(Lcom/google/android/youtube/core/model/Branding;)V

    goto :goto_46
.end method

.method private onVideoStarted()V
    .registers 3

    .prologue
    .line 519
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->autoplayHelper:Lcom/google/android/youtube/core/player/AutoplayHelper;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/AutoplayHelper;->track(Lcom/google/android/youtube/core/model/Video;)V

    .line 520
    return-void
.end method

.method private onVideoStreamsError(Ljava/lang/Exception;)V
    .registers 5
    .parameter "exception"

    .prologue
    .line 403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->errorBeforePlaying:Z

    .line 404
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->activity:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/google/android/youtube/core/ErrorHelper;->humanize(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showErrorMessage(Ljava/lang/String;Z)V

    .line 405
    return-void
.end method

.method private playAd()V
    .registers 5

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->ad:Lcom/google/android/youtube/core/model/VastAd;

    sget-object v3, Lcom/google/android/youtube/core/model/Stream$Quality;->UNKNOWN:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/youtube/core/player/Tracker;->reset(Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/VastAd;Lcom/google/android/youtube/core/model/Stream$Quality;)V

    .line 427
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 428
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->playingAd:Z

    .line 429
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    sget-object v1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->AD:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setStyle(Lcom/google/android/youtube/core/player/ControllerOverlay$Style;)V

    .line 430
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->adOverlay:Lcom/google/android/youtube/core/player/AdOverlay;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->ad:Lcom/google/android/youtube/core/model/VastAd;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/AdOverlay;->setAd(Lcom/google/android/youtube/core/model/VastAd;)V

    .line 432
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->ad:Lcom/google/android/youtube/core/model/VastAd;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/VastAd;->streamUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/Tracker;->trackVideoPrepare(Landroid/net/Uri;)V

    .line 434
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    new-instance v1, Lcom/google/android/youtube/core/model/Stream;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->ad:Lcom/google/android/youtube/core/model/VastAd;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/VastAd;->streamUri:Landroid/net/Uri;

    sget-object v3, Lcom/google/android/youtube/core/model/Stream$Quality;->UNKNOWN:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-direct {v1, v2, v3}, Lcom/google/android/youtube/core/model/Stream;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/Stream$Quality;)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->loadVideo(Lcom/google/android/youtube/core/model/Stream;)V

    .line 435
    return-void
.end method

.method private playVideo()V
    .registers 7

    .prologue
    .line 465
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 467
    iget-boolean v2, p0, Lcom/google/android/youtube/core/player/Director;->hq:Z

    if-eqz v2, :cond_b5

    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    iget-object v0, v2, Lcom/google/android/youtube/core/model/VideoStreams;->hi:Lcom/google/android/youtube/core/model/Stream;

    .line 469
    .local v0, stream:Lcom/google/android/youtube/core/model/Stream;
    :goto_b
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/youtube/core/player/Director;->ad:Lcom/google/android/youtube/core/model/VastAd;

    .line 470
    if-eqz v0, :cond_bb

    .line 471
    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    iget-object v3, p0, Lcom/google/android/youtube/core/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v4, p0, Lcom/google/android/youtube/core/player/Director;->ad:Lcom/google/android/youtube/core/model/VastAd;

    iget-object v5, v0, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/youtube/core/player/Tracker;->reset(Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/VastAd;Lcom/google/android/youtube/core/model/Stream$Quality;)V

    .line 472
    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->revShareClientId:Ljava/lang/String;

    if-eqz v2, :cond_3d

    .line 473
    iget-object v2, v0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "androidcid"

    iget-object v4, p0, Lcom/google/android/youtube/core/player/Director;->revShareClientId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 475
    .local v1, streamUri:Landroid/net/Uri;
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Stream;->buildUpon()Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/youtube/core/model/Stream$Builder;->uri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/youtube/core/model/Stream$Builder;->build()Lcom/google/android/youtube/core/model/Stream;

    move-result-object v0

    .line 477
    .end local v1           #streamUri:Landroid/net/Uri;
    :cond_3d
    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->streamParams:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_74

    .line 478
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/core/player/Director;->streamParams:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 479
    .restart local v1       #streamUri:Landroid/net/Uri;
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Stream;->buildUpon()Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/youtube/core/model/Stream$Builder;->uri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/youtube/core/model/Stream$Builder;->build()Lcom/google/android/youtube/core/model/Stream;

    move-result-object v0

    .line 481
    .end local v1           #streamUri:Landroid/net/Uri;
    :cond_74
    iget-boolean v2, p0, Lcom/google/android/youtube/core/player/Director;->useVssForViewCounts:Z

    if-eqz v2, :cond_96

    .line 482
    iget-object v2, v0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/core/player/Director;->noCountingStreamParameter:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 485
    .restart local v1       #streamUri:Landroid/net/Uri;
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Stream;->buildUpon()Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/youtube/core/model/Stream$Builder;->uri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/youtube/core/model/Stream$Builder;->build()Lcom/google/android/youtube/core/model/Stream;

    move-result-object v0

    .line 489
    .end local v1           #streamUri:Landroid/net/Uri;
    :cond_96
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->setControllerStyle()V

    .line 490
    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/model/Video;->isLive()Z

    move-result v2

    if-nez v2, :cond_b1

    .line 491
    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    iget-object v3, p0, Lcom/google/android/youtube/core/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    iget-boolean v3, v3, Lcom/google/android/youtube/core/model/VideoStreams;->supportsQualityToggle:Z

    invoke-interface {v2, v3}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setSupportsQualityToggle(Z)V

    .line 492
    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    iget-boolean v3, p0, Lcom/google/android/youtube/core/player/Director;->hq:Z

    invoke-interface {v2, v3}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setHQ(Z)V

    .line 494
    :cond_b1
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/Director;->playerLoad(Lcom/google/android/youtube/core/model/Stream;)V

    .line 501
    :goto_b4
    return-void

    .line 467
    .end local v0           #stream:Lcom/google/android/youtube/core/model/Stream;
    :cond_b5
    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    iget-object v0, v2, Lcom/google/android/youtube/core/model/VideoStreams;->lo:Lcom/google/android/youtube/core/model/Stream;

    goto/16 :goto_b

    .line 496
    .restart local v0       #stream:Lcom/google/android/youtube/core/model/Stream;
    :cond_bb
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/youtube/core/player/Director;->errorBeforePlaying:Z

    .line 497
    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v3, "PlayErrorNoStream"

    iget-object v4, p0, Lcom/google/android/youtube/core/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    sget-object v5, Lcom/google/android/youtube/core/model/Stream$Quality;->UNKNOWN:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/youtube/core/Analytics;->trackPlaybackEvent(Ljava/lang/String;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/Stream$Quality;)V

    .line 498
    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    const v3, 0x7f0b0045

    invoke-interface {v2, v3}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showErrorMessage(I)V

    .line 499
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->maybeSkipVideo()V

    goto :goto_b4
.end method

.method private playerLoad(Lcom/google/android/youtube/core/model/Stream;)V
    .registers 4
    .parameter "stream"

    .prologue
    .line 504
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/Tracker;->trackVideoPrepare(Landroid/net/Uri;)V

    .line 505
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->playlistUri:Landroid/net/Uri;

    if-eqz v0, :cond_12

    .line 508
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->loadVideo(Lcom/google/android/youtube/core/model/Stream;I)V

    .line 516
    :goto_11
    return-void

    .line 509
    :cond_12
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Video;->isLive()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 510
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->loadLiveVideo(Lcom/google/android/youtube/core/model/Stream;)V

    goto :goto_11

    .line 511
    :cond_20
    iget v0, p0, Lcom/google/android/youtube/core/player/Director;->startPosition:I

    if-lez v0, :cond_2c

    .line 512
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    iget v1, p0, Lcom/google/android/youtube/core/player/Director;->startPosition:I

    invoke-virtual {v0, p1, v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->loadVideo(Lcom/google/android/youtube/core/model/Stream;I)V

    goto :goto_11

    .line 514
    :cond_2c
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->loadVideo(Lcom/google/android/youtube/core/model/Stream;)V

    goto :goto_11
.end method

.method private setControllerStyle()V
    .registers 3

    .prologue
    .line 455
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Video;->isLive()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 456
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    sget-object v1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->LIVE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setStyle(Lcom/google/android/youtube/core/player/ControllerOverlay$Style;)V

    .line 462
    :goto_f
    return-void

    .line 457
    :cond_10
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Video;->isMovie()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 458
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    sget-object v1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->MOVIE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setStyle(Lcom/google/android/youtube/core/player/ControllerOverlay$Style;)V

    goto :goto_f

    .line 460
    :cond_20
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    sget-object v1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->YOUTUBE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setStyle(Lcom/google/android/youtube/core/player/ControllerOverlay$Style;)V

    goto :goto_f
.end method


# virtual methods
.method public initVideo(Ljava/lang/String;)V
    .registers 4
    .parameter "videoId"

    .prologue
    const/4 v1, 0x0

    .line 254
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/google/android/youtube/core/player/Director;->initVideo(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 255
    return-void
.end method

.method public initVideo(Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 8
    .parameter "videoId"
    .parameter "streamParams"
    .parameter "startPosition"
    .parameter "authenticate"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 263
    invoke-static {p1}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->videoId:Ljava/lang/String;

    .line 265
    .local v0, oldVideoId:Ljava/lang/String;
    iput-object p1, p0, Lcom/google/android/youtube/core/player/Director;->videoId:Ljava/lang/String;

    .line 266
    iput p3, p0, Lcom/google/android/youtube/core/player/Director;->startPosition:I

    .line 267
    iput-boolean p4, p0, Lcom/google/android/youtube/core/player/Director;->authenticate:Z

    .line 268
    iput-object p2, p0, Lcom/google/android/youtube/core/player/Director;->streamParams:Ljava/lang/String;

    .line 269
    iput-object v2, p0, Lcom/google/android/youtube/core/player/Director;->lastBrandingRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 270
    iput-object v2, p0, Lcom/google/android/youtube/core/player/Director;->ad:Lcom/google/android/youtube/core/model/VastAd;

    .line 271
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/Director;->playingAd:Z

    .line 272
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/Director;->errorBeforePlaying:Z

    .line 273
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->stopVideo()V

    .line 274
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->brandingOverlay:Lcom/google/android/youtube/core/player/BrandingOverlay;

    if-eqz v1, :cond_25

    .line 275
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->brandingOverlay:Lcom/google/android/youtube/core/player/BrandingOverlay;

    invoke-interface {v1}, Lcom/google/android/youtube/core/player/BrandingOverlay;->hide()V

    .line 277
    :cond_25
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->adOverlay:Lcom/google/android/youtube/core/player/AdOverlay;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/AdOverlay;->hide()V

    .line 278
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->liveOverlay:Lcom/google/android/youtube/core/player/LiveOverlay;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/LiveOverlay;->hide()V

    .line 279
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->listener:Lcom/google/android/youtube/core/player/Director$Listener;

    invoke-interface {v1}, Lcom/google/android/youtube/core/player/Director$Listener;->onReset()V

    .line 280
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->hasNext()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setHasNext(Z)V

    .line 281
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->hasPrevious()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setHasPrevious(Z)V

    .line 282
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    .line 283
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/Tracker;->trackVideoInit()V

    .line 285
    :cond_51
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->makeVideoRequest()V

    .line 286
    return-void
.end method

.method public initVideo(Ljava/lang/String;Z)V
    .registers 5
    .parameter "videoId"
    .parameter "authenticate"

    .prologue
    .line 258
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/youtube/core/player/Director;->initVideo(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 259
    return-void
.end method

.method public onAdClickthrough()V
    .registers 3

    .prologue
    .line 785
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->ad:Lcom/google/android/youtube/core/model/VastAd;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/VastAd;->clickthroughUri:Landroid/net/Uri;

    if-eqz v0, :cond_19

    .line 786
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->adHelper:Lcom/google/android/youtube/core/player/AdHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/AdHelper;->onAdEnded()V

    .line 787
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Tracker;->pingClickthrough()V

    .line 788
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->ad:Lcom/google/android/youtube/core/model/VastAd;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/VastAd;->clickthroughUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/ExternalIntents;->viewUri(Landroid/content/Context;Landroid/net/Uri;)V

    .line 790
    :cond_19
    return-void
.end method

.method public onCC()V
    .registers 3

    .prologue
    .line 776
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "CC"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->trackEvent(Ljava/lang/String;)V

    .line 777
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->subtitleHelper:Lcom/google/android/youtube/core/player/SubtitleHelper;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/SubtitleHelper;->showTrackSelector(Ljava/lang/String;)V

    .line 778
    return-void
.end method

.method public onHQ()V
    .registers 4

    .prologue
    .line 767
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->hq:Z

    if-nez v0, :cond_36

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->hq:Z

    .line 768
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v2, "HQ"

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->hq:Z

    if-eqz v0, :cond_38

    const-string v0, "On"

    :goto_11
    invoke-virtual {v1, v2, v0}, Lcom/google/android/youtube/core/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->hq:Z

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/VideoStreams;->hi:Lcom/google/android/youtube/core/model/Stream;

    .line 770
    :goto_1c
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/player/Tracker;->trackVideoPrepare(Landroid/net/Uri;)V

    .line 771
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->loadVideo(Lcom/google/android/youtube/core/model/Stream;I)V

    .line 772
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/Director;->hq:Z

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setHQ(Z)V

    .line 773
    return-void

    .line 767
    :cond_36
    const/4 v0, 0x0

    goto :goto_5

    .line 768
    :cond_38
    const-string v0, "Off"

    goto :goto_11

    .line 769
    :cond_3b
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/VideoStreams;->lo:Lcom/google/android/youtube/core/model/Stream;

    goto :goto_1c
.end method

.method public onHidden()V
    .registers 2

    .prologue
    .line 793
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->listener:Lcom/google/android/youtube/core/player/Director$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/Director$Listener;->onControllerHidden()V

    .line 794
    return-void
.end method

.method public onNext()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 739
    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->playlistAutoSkip:Z

    .line 740
    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->stopped:Z

    .line 741
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->onNextInternal()V

    .line 742
    return-void
.end method

.method public onPlayLive()V
    .registers 1

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->makeStreamsRequest()V

    .line 372
    return-void
.end method

.method public onPlayPause()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 707
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->stoppedOnAd:Z

    if-eqz v0, :cond_1b

    .line 708
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->ad:Lcom/google/android/youtube/core/model/VastAd;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->ad:Lcom/google/android/youtube/core/model/VastAd;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/VastAd;->streamUri:Landroid/net/Uri;

    if-eqz v0, :cond_17

    .line 709
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->playAd()V

    .line 725
    :goto_12
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/Director;->stopped:Z

    .line 726
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/Director;->stoppedOnAd:Z

    .line 727
    return-void

    .line 711
    :cond_17
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/Director;->startVideo()V

    goto :goto_12

    .line 713
    :cond_1b
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->stopped:Z

    if-eqz v0, :cond_30

    .line 714
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Tracker;->trackRestored()V

    .line 715
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    if-nez v0, :cond_2c

    .line 716
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/Director;->startVideo()V

    goto :goto_12

    .line 718
    :cond_2c
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->playVideo()V

    goto :goto_12

    .line 720
    :cond_30
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 721
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->pauseVideo()V

    goto :goto_12

    .line 723
    :cond_3e
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->playVideo()V

    goto :goto_12
.end method

.method public onPrevious()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 757
    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->playlistAutoSkip:Z

    .line 758
    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->stopped:Z

    .line 759
    iget v0, p0, Lcom/google/android/youtube/core/player/Director;->playlistCurrentIndex:I

    if-lez v0, :cond_28

    .line 760
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "Previous"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->trackEvent(Ljava/lang/String;)V

    .line 761
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->resetTime()V

    .line 762
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->playlistIds:Ljava/util/List;

    iget v1, p0, Lcom/google/android/youtube/core/player/Director;->playlistCurrentIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/youtube/core/player/Director;->playlistCurrentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/Director;->authenticate:Z

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/player/Director;->initVideo(Ljava/lang/String;Z)V

    .line 764
    :cond_28
    return-void
.end method

.method public onReplay()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 559
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 560
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->resetTime()V

    .line 561
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/Director;->ended:Z

    .line 562
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->stopped:Z

    if-eqz v0, :cond_1a

    .line 563
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Tracker;->trackRestored()V

    .line 564
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/Director;->stopped:Z

    .line 565
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->playVideo()V

    .line 570
    :goto_19
    return-void

    .line 567
    :cond_1a
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Tracker;->trackStarted()V

    .line 568
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->playVideo()V

    goto :goto_19
.end method

.method public onRetry()V
    .registers 2

    .prologue
    .line 551
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    if-nez v0, :cond_8

    .line 552
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/Director;->startVideo()V

    .line 556
    :goto_7
    return-void

    .line 554
    :cond_8
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->playVideo()V

    goto :goto_7
.end method

.method public onSeekEnd(I)V
    .registers 3
    .parameter "time"

    .prologue
    .line 734
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->seekTo(I)V

    .line 735
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->playVideo()V

    .line 736
    return-void
.end method

.method public onSeekStart()V
    .registers 2

    .prologue
    .line 730
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->pauseVideo()V

    .line 731
    return-void
.end method

.method public onShown()V
    .registers 2

    .prologue
    .line 797
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->listener:Lcom/google/android/youtube/core/player/Director$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/Director$Listener;->onControllerShown()V

    .line 798
    return-void
.end method

.method public onToggleFullscreen(Z)V
    .registers 3
    .parameter "fullscreen"

    .prologue
    .line 781
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->listener:Lcom/google/android/youtube/core/player/Director$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/player/Director$Listener;->onToggleFullscreen(Z)V

    .line 782
    return-void
.end method

.method public onVideoStreamsResponse(Lcom/google/android/youtube/core/model/VideoStreams;)V
    .registers 5
    .parameter "response"

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    if-nez v0, :cond_5

    .line 400
    :goto_4
    return-void

    .line 393
    :cond_5
    iput-object p1, p0, Lcom/google/android/youtube/core/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    .line 394
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->adHelper:Lcom/google/android/youtube/core/player/AdHelper;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->getSystemCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video;->isMonetized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 395
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->adHelper:Lcom/google/android/youtube/core/player/AdHelper;

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/Director;->hq:Z

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/AdHelper;->setPreferHQ(Z)V

    .line 396
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->adHelper:Lcom/google/android/youtube/core/player/AdHelper;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->adCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/player/AdHelper;->request(Ljava/lang/String;Lcom/google/android/youtube/core/async/Callback;)V

    goto :goto_4

    .line 398
    :cond_2c
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/core/player/Director;->onAdResponse(Ljava/lang/String;Lcom/google/android/youtube/core/model/VastAd;)V

    goto :goto_4
.end method

.method public onWarningAccepted(Lcom/google/android/youtube/core/player/WarningHelper;)V
    .registers 3
    .parameter "helper"

    .prologue
    .line 825
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget-boolean v0, v0, Lcom/google/android/youtube/core/model/Video;->adultContent:Z

    if-eqz v0, :cond_c

    .line 826
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->adultContentHelper:Lcom/google/android/youtube/core/player/AdultContentHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/AdultContentHelper;->init()V

    .line 830
    :goto_b
    return-void

    .line 828
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/Director;->startVideo()V

    goto :goto_b
.end method

.method public onWarningDeclined(Lcom/google/android/youtube/core/player/WarningHelper;)V
    .registers 3
    .parameter "helper"

    .prologue
    .line 833
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 834
    return-void
.end method

.method public release()V
    .registers 2

    .prologue
    .line 845
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->release()V

    .line 846
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Tracker;->release()V

    .line 847
    return-void
.end method

.method public setFullscreen(Z)V
    .registers 3
    .parameter "fullscreen"

    .prologue
    .line 856
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setFullscreen(Z)V

    .line 857
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/player/Director;->onToggleFullscreen(Z)V

    .line 858
    return-void
.end method

.method public setStopped()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 837
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/Director;->stopped:Z

    .line 838
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->playingAd:Z

    if-eqz v0, :cond_9

    .line 839
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/Director;->stoppedOnAd:Z

    .line 841
    :cond_9
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Tracker;->trackStopped()V

    .line 842
    return-void
.end method

.method public startVideo()V
    .registers 4

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showLoading()V

    .line 348
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Video;->isLive()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 349
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->gdataClient:Lcom/google/android/youtube/core/client/GDataClient;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->liveEventUri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/google/android/youtube/core/async/GDataRequests;->getLiveEventRequest(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->liveEventCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/client/GDataClient;->requestLiveEvent(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Callback;)V

    .line 355
    :goto_1c
    return-void

    .line 353
    :cond_1d
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->makeStreamsRequest()V

    goto :goto_1c
.end method
