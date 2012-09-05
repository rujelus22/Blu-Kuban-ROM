.class public Lcom/google/android/youtube/videos/async/DownloadStreamRequester;
.super Ljava/lang/Object;
.source "DownloadStreamRequester.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Requester;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/async/DownloadStreamRequester$StreamLengthCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Requester",
        "<",
        "Lcom/google/android/youtube/core/model/Purchase;",
        "Lcom/google/android/youtube/core/model/Stream;",
        ">;"
    }
.end annotation


# instance fields
.field private final config:Lcom/google/android/youtube/videos/VideosConfig;

.field private final contentLengthRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Lcom/google/android/youtube/videos/VideosConfig;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;)V
    .registers 5
    .parameter "config"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/videos/VideosConfig;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/youtube/core/model/Stream;",
            ">;>;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, permittedStreamsRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/model/Purchase;Ljava/util/Map<Ljava/lang/Integer;Lcom/google/android/youtube/core/model/Stream;>;>;"
    .local p3, contentLengthRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Landroid/net/Uri;Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/videos/VideosConfig;

    iput-object v0, p0, Lcom/google/android/youtube/videos/async/DownloadStreamRequester;->config:Lcom/google/android/youtube/videos/VideosConfig;

    .line 36
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Requester;

    iput-object v0, p0, Lcom/google/android/youtube/videos/async/DownloadStreamRequester;->permittedStreamsRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 37
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Requester;

    iput-object v0, p0, Lcom/google/android/youtube/videos/async/DownloadStreamRequester;->contentLengthRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/videos/async/DownloadStreamRequester;Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/async/Callback;Ljava/util/Map;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/youtube/videos/async/DownloadStreamRequester;->onPermittedStreams(Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/async/Callback;Ljava/util/Map;)V

    return-void
.end method

.method private onPermittedStreams(Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/async/Callback;Ljava/util/Map;)V
    .registers 9
    .parameter "request"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/model/Purchase;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            "Lcom/google/android/youtube/core/model/Stream;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/youtube/core/model/Stream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/model/Stream;>;"
    .local p3, streams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/google/android/youtube/core/model/Stream;>;"
    iget-object v2, p0, Lcom/google/android/youtube/videos/async/DownloadStreamRequester;->config:Lcom/google/android/youtube/videos/VideosConfig;

    invoke-virtual {v2}, Lcom/google/android/youtube/videos/VideosConfig;->downloadFormats()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/google/android/youtube/core/model/Stream;->getFirstAvailableFormat(Ljava/util/List;Ljava/util/Map;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v0

    .line 55
    .local v0, downloadStream:Lcom/google/android/youtube/core/model/Stream;
    if-nez v0, :cond_17

    .line 56
    new-instance v2, Lcom/google/android/youtube/core/player/MissingStreamException;

    const-string v3, "No valid download stream"

    invoke-direct {v2, v3}, Lcom/google/android/youtube/core/player/MissingStreamException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1, v2}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 64
    :goto_16
    return-void

    .line 60
    :cond_17
    iget-object v2, p1, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v2, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    .line 61
    .local v1, videoId:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/youtube/videos/async/DownloadStreamRequester;->contentLengthRequester:Lcom/google/android/youtube/core/async/Requester;

    iget-object v3, v0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    new-instance v4, Lcom/google/android/youtube/videos/async/DownloadStreamRequester$StreamLengthCallback;

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/google/android/youtube/videos/async/DownloadStreamRequester$StreamLengthCallback;-><init>(Lcom/google/android/youtube/videos/async/DownloadStreamRequester;Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/async/Callback;Lcom/google/android/youtube/core/model/Stream;)V

    invoke-interface {v2, v3, v4}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    goto :goto_16
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
            "Lcom/google/android/youtube/core/model/Stream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/model/Stream;>;"
    iget-object v0, p0, Lcom/google/android/youtube/videos/async/DownloadStreamRequester;->permittedStreamsRequester:Lcom/google/android/youtube/core/async/Requester;

    new-instance v1, Lcom/google/android/youtube/videos/async/DownloadStreamRequester$1;

    invoke-direct {v1, p0, p2}, Lcom/google/android/youtube/videos/async/DownloadStreamRequester$1;-><init>(Lcom/google/android/youtube/videos/async/DownloadStreamRequester;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 49
    return-void
.end method

.method public bridge synthetic request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    check-cast p1, Lcom/google/android/youtube/core/model/Purchase;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/async/DownloadStreamRequester;->request(Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/async/Callback;)V

    return-void
.end method
