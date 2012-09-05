.class public Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;
.super Ljava/lang/Object;
.source "OnlineStreamsRequester.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Requester;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Requester",
        "<",
        "Lcom/google/android/youtube/core/model/Purchase;",
        "Lcom/google/android/youtube/core/model/VideoStreams;",
        ">;"
    }
.end annotation


# instance fields
.field private final config:Lcom/google/android/youtube/videos/VideosConfig;

.field private final context:Landroid/content/Context;

.field private final permittedStreamsRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/youtube/core/model/Stream;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/videos/VideosConfig;Lcom/google/android/youtube/core/async/Requester;)V
    .registers 5
    .parameter "context"
    .parameter "config"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/youtube/videos/VideosConfig;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/youtube/core/model/Stream;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p3, permittedStreamsRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/model/Purchase;Ljava/util/Map<Ljava/lang/Integer;Lcom/google/android/youtube/core/model/Stream;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;->context:Landroid/content/Context;

    .line 37
    const-string v0, "config cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/videos/VideosConfig;

    iput-object v0, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;->config:Lcom/google/android/youtube/videos/VideosConfig;

    .line 38
    const-string v0, "permittedStreamsRequester cannot be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Requester;

    iput-object v0, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;->permittedStreamsRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/async/Callback;Ljava/util/Map;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;->onPermittedStreams(Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/async/Callback;Ljava/util/Map;)V

    return-void
.end method

.method private getHiQuality(Ljava/util/Map;)Lcom/google/android/youtube/core/model/Stream;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/youtube/core/model/Stream;",
            ">;)",
            "Lcom/google/android/youtube/core/model/Stream;"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, streams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/google/android/youtube/core/model/Stream;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_11

    .line 66
    iget-object v0, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;->config:Lcom/google/android/youtube/videos/VideosConfig;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/VideosConfig;->hdFormats()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/Stream;->getFirstAvailableFormat(Ljava/util/List;Ljava/util/Map;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v0

    .line 68
    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;->config:Lcom/google/android/youtube/videos/VideosConfig;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/VideosConfig;->sdFormats()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/Stream;->getFirstAvailableFormat(Ljava/util/List;Ljava/util/Map;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v0

    goto :goto_10
.end method

.method private getLoQuality(Ljava/util/Map;)Lcom/google/android/youtube/core/model/Stream;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/youtube/core/model/Stream;",
            ">;)",
            "Lcom/google/android/youtube/core/model/Stream;"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, streams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/google/android/youtube/core/model/Stream;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_19

    iget-object v0, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->isFastNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 74
    iget-object v0, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;->config:Lcom/google/android/youtube/videos/VideosConfig;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/VideosConfig;->sdFormats()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/Stream;->getFirstAvailableFormat(Ljava/util/List;Ljava/util/Map;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v0

    .line 76
    :goto_18
    return-object v0

    :cond_19
    iget-object v0, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;->config:Lcom/google/android/youtube/videos/VideosConfig;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/VideosConfig;->lqFormats()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/Stream;->getFirstAvailableFormat(Ljava/util/List;Ljava/util/Map;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v0

    goto :goto_18
.end method

.method private onPermittedStreams(Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/async/Callback;Ljava/util/Map;)V
    .registers 8
    .parameter "purchase"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/model/Purchase;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            "Lcom/google/android/youtube/core/model/VideoStreams;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/youtube/core/model/Stream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/model/VideoStreams;>;"
    .local p3, streams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/google/android/youtube/core/model/Stream;>;"
    invoke-direct {p0, p3}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;->getHiQuality(Ljava/util/Map;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v0

    .line 56
    .local v0, hi:Lcom/google/android/youtube/core/model/Stream;
    invoke-direct {p0, p3}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;->getLoQuality(Ljava/util/Map;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v1

    .line 57
    .local v1, lo:Lcom/google/android/youtube/core/model/Stream;
    if-nez v0, :cond_c

    if-eqz v1, :cond_15

    .line 58
    :cond_c
    new-instance v2, Lcom/google/android/youtube/core/model/VideoStreams;

    invoke-direct {v2, v0, v1}, Lcom/google/android/youtube/core/model/VideoStreams;-><init>(Lcom/google/android/youtube/core/model/Stream;Lcom/google/android/youtube/core/model/Stream;)V

    invoke-interface {p2, p1, v2}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    :goto_14
    return-void

    .line 60
    :cond_15
    new-instance v2, Lcom/google/android/youtube/core/player/MissingStreamException;

    const-string v3, "No valid streams"

    invoke-direct {v2, v3}, Lcom/google/android/youtube/core/player/MissingStreamException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1, v2}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_14
.end method


# virtual methods
.method public request(Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 5
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/model/Purchase;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            "Lcom/google/android/youtube/core/model/VideoStreams;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/model/VideoStreams;>;"
    iget-object v0, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;->permittedStreamsRequester:Lcom/google/android/youtube/core/async/Requester;

    new-instance v1, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$1;

    invoke-direct {v1, p0, p2}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$1;-><init>(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 51
    return-void
.end method

.method public bridge synthetic request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    check-cast p1, Lcom/google/android/youtube/core/model/Purchase;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;->request(Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/async/Callback;)V

    return-void
.end method
