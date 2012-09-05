.class public Lcom/google/android/youtube/core/player/AdHelper;
.super Ljava/lang/Object;
.source "AdHelper.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;
.implements Lcom/google/android/youtube/core/async/Requester;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/player/AdHelper$StreamsCallback;,
        Lcom/google/android/youtube/core/player/AdHelper$VideoCallback;,
        Lcom/google/android/youtube/core/player/AdHelper$VastAdCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Requester",
        "<",
        "Ljava/lang/String;",
        "Lcom/google/android/youtube/core/model/VastAd;",
        ">;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Ljava/lang/String;",
        "Lcom/google/android/youtube/core/model/AdTag;",
        ">;"
    }
.end annotation


# instance fields
.field private final adsClient:Lcom/google/android/youtube/core/client/AdsClient;

.field private callback:Lcom/google/android/youtube/core/async/Callback;
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

.field private final clock:Lcom/google/android/youtube/core/utils/Clock;

.field private final gdataClient:Lcom/google/android/youtube/core/client/GDataClient;

.field private lastAdDelay:I

.field private lastAdTime:J

.field private newLastAdDelay:I

.field private preferHQ:Z

.field private final preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/utils/Clock;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/client/AdsClient;Lcom/google/android/youtube/core/client/GDataClient;)V
    .registers 10
    .parameter "clock"
    .parameter "preferences"
    .parameter "adsClient"
    .parameter "gdataClient"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/utils/Clock;

    iput-object v2, p0, Lcom/google/android/youtube/core/player/AdHelper;->clock:Lcom/google/android/youtube/core/utils/Clock;

    .line 59
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SharedPreferences;

    iput-object v2, p0, Lcom/google/android/youtube/core/player/AdHelper;->preferences:Landroid/content/SharedPreferences;

    .line 60
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/client/AdsClient;

    iput-object v2, p0, Lcom/google/android/youtube/core/player/AdHelper;->adsClient:Lcom/google/android/youtube/core/client/AdsClient;

    .line 61
    invoke-static {p4}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/client/GDataClient;

    iput-object v2, p0, Lcom/google/android/youtube/core/player/AdHelper;->gdataClient:Lcom/google/android/youtube/core/client/GDataClient;

    .line 62
    invoke-interface {p1}, Lcom/google/android/youtube/core/utils/Clock;->currentMillis()J

    move-result-wide v0

    .line 63
    .local v0, now:J
    const-string v2, "last_ad_time"

    invoke-interface {p2, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/youtube/core/player/AdHelper;->lastAdTime:J

    .line 64
    const v2, 0x927c0

    const-string v3, "last_ad_delay"

    const/4 v4, 0x0

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/youtube/core/player/AdHelper;->lastAdDelay:I

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/core/player/AdHelper;)Lcom/google/android/youtube/core/async/Callback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdHelper;->callback:Lcom/google/android/youtube/core/async/Callback;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/Uri;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    invoke-static {p0}, Lcom/google/android/youtube/core/player/AdHelper;->isYouTubeHostedStreamUri(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    invoke-static {p0}, Lcom/google/android/youtube/core/player/AdHelper;->getVideoIdForYouTubeStreamUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/youtube/core/player/AdHelper;)Lcom/google/android/youtube/core/client/GDataClient;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdHelper;->gdataClient:Lcom/google/android/youtube/core/client/GDataClient;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/youtube/core/player/AdHelper;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/AdHelper;->preferHQ:Z

    return v0
.end method

.method private static getVideoIdForYouTubeStreamUri(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2
    .parameter "streamUri"

    .prologue
    .line 110
    const-string v0, "v"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isYouTubeHostedStreamUri(Landroid/net/Uri;)Z
    .registers 3
    .parameter "streamUri"

    .prologue
    .line 106
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://www.youtube"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public onAdEnded()V
    .registers 5

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdHelper;->clock:Lcom/google/android/youtube/core/utils/Clock;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/Clock;->currentMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/youtube/core/player/AdHelper;->lastAdTime:J

    .line 83
    iget v0, p0, Lcom/google/android/youtube/core/player/AdHelper;->newLastAdDelay:I

    iput v0, p0, Lcom/google/android/youtube/core/player/AdHelper;->lastAdDelay:I

    .line 84
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdHelper;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_ad_time"

    iget-wide v2, p0, Lcom/google/android/youtube/core/player/AdHelper;->lastAdTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_ad_delay"

    iget v2, p0, Lcom/google/android/youtube/core/player/AdHelper;->lastAdDelay:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 88
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/player/AdHelper;->onError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 101
    const-string v0, "Error retrieving ad tag"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdHelper;->callback:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 103
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/AdTag;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/player/AdHelper;->onResponse(Ljava/lang/String;Lcom/google/android/youtube/core/model/AdTag;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/google/android/youtube/core/model/AdTag;)V
    .registers 6
    .parameter "videoId"
    .parameter "adTag"

    .prologue
    .line 91
    if-eqz p2, :cond_15

    .line 92
    iget v1, p2, Lcom/google/android/youtube/core/model/AdTag;->delay:I

    mul-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Lcom/google/android/youtube/core/player/AdHelper;->newLastAdDelay:I

    .line 93
    new-instance v0, Lcom/google/android/youtube/core/player/AdHelper$VastAdCallback;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/core/player/AdHelper$VastAdCallback;-><init>(Lcom/google/android/youtube/core/player/AdHelper;Ljava/lang/String;)V

    .line 94
    .local v0, callback:Lcom/google/android/youtube/core/player/AdHelper$VastAdCallback;
    iget-object v1, p0, Lcom/google/android/youtube/core/player/AdHelper;->adsClient:Lcom/google/android/youtube/core/client/AdsClient;

    iget-object v2, p2, Lcom/google/android/youtube/core/model/AdTag;->uri:Landroid/net/Uri;

    invoke-interface {v1, v2, v0}, Lcom/google/android/youtube/core/client/AdsClient;->requestVastAd(Landroid/net/Uri;Lcom/google/android/youtube/core/async/Callback;)V

    .line 98
    .end local v0           #callback:Lcom/google/android/youtube/core/player/AdHelper$VastAdCallback;
    :goto_14
    return-void

    .line 96
    :cond_15
    iget-object v1, p0, Lcom/google/android/youtube/core/player/AdHelper;->callback:Lcom/google/android/youtube/core/async/Callback;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_14
.end method

.method public bridge synthetic request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/player/AdHelper;->request(Ljava/lang/String;Lcom/google/android/youtube/core/async/Callback;)V

    return-void
.end method

.method public request(Ljava/lang/String;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 9
    .parameter "videoId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/model/VastAd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Ljava/lang/String;Lcom/google/android/youtube/core/model/VastAd;>;"
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Callback;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AdHelper;->callback:Lcom/google/android/youtube/core/async/Callback;

    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdHelper;->clock:Lcom/google/android/youtube/core/utils/Clock;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/Clock;->currentMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/youtube/core/player/AdHelper;->lastAdTime:J

    iget v4, p0, Lcom/google/android/youtube/core/player/AdHelper;->lastAdDelay:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1e

    .line 75
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdHelper;->adsClient:Lcom/google/android/youtube/core/client/AdsClient;

    invoke-interface {v0, p1, p0}, Lcom/google/android/youtube/core/client/AdsClient;->requestAdTag(Ljava/lang/String;Lcom/google/android/youtube/core/async/Callback;)V

    .line 79
    :goto_1d
    return-void

    .line 77
    :cond_1e
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1d
.end method

.method public setPreferHQ(Z)V
    .registers 2
    .parameter "preferHQ"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/AdHelper;->preferHQ:Z

    .line 69
    return-void
.end method
