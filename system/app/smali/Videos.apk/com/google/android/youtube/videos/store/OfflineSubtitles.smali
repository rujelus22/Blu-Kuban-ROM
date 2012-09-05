.class public Lcom/google/android/youtube/videos/store/OfflineSubtitles;
.super Lcom/google/android/youtube/core/client/BaseClient;
.source "OfflineSubtitles.java"


# instance fields
.field private final storingSubtitlesClient:Lcom/google/android/youtube/core/client/SubtitlesClient;

.field private final subtitleRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/model/SubtitleTrack;",
            "Lcom/google/android/youtube/core/model/Subtitle;",
            ">;"
        }
    .end annotation
.end field

.field private final subtitleStore:Lcom/google/android/youtube/videos/store/AbstractFileStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/videos/store/AbstractFileStore",
            "<",
            "Lcom/google/android/youtube/core/model/SubtitleTrack;",
            "Lcom/google/android/youtube/core/model/Subtitle;",
            ">;"
        }
    .end annotation
.end field

.field private final subtitleStorer:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/model/SubtitleTrack;",
            "Lcom/google/android/youtube/core/model/Subtitle;",
            ">;"
        }
    .end annotation
.end field

.field private final subtitleTracksRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/SubtitleTrack;",
            ">;>;"
        }
    .end annotation
.end field

.field private final subtitleTracksStore:Lcom/google/android/youtube/videos/store/AbstractFileStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/videos/store/AbstractFileStore",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/SubtitleTrack;",
            ">;>;"
        }
    .end annotation
.end field

.field private final subtitleTracksStorer:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/SubtitleTrack;",
            ">;>;"
        }
    .end annotation
.end field

.field private final subtitlesClient:Lcom/google/android/youtube/core/client/SubtitlesClient;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/converter/XmlParser;Ljava/lang/String;Lcom/google/android/youtube/core/utils/Clock;)V
    .registers 7
    .parameter "executor"
    .parameter "httpClient"
    .parameter "parser"
    .parameter "cachePath"
    .parameter "clock"

    .prologue
    .line 50
    invoke-direct/range {p0 .. p5}, Lcom/google/android/youtube/core/client/BaseClient;-><init>(Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/converter/XmlParser;Ljava/lang/String;Lcom/google/android/youtube/core/utils/Clock;)V

    .line 52
    invoke-direct {p0}, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->getSubtitleTracksStore()Lcom/google/android/youtube/videos/store/AbstractFileStore;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->subtitleTracksStore:Lcom/google/android/youtube/videos/store/AbstractFileStore;

    .line 53
    invoke-direct {p0}, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->createSubtitleTracksStorer()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->subtitleTracksStorer:Lcom/google/android/youtube/core/async/Requester;

    .line 54
    invoke-direct {p0}, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->createSubtitleTracksRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->subtitleTracksRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 56
    invoke-direct {p0}, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->getSubtitleStore()Lcom/google/android/youtube/videos/store/AbstractFileStore;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->subtitleStore:Lcom/google/android/youtube/videos/store/AbstractFileStore;

    .line 57
    invoke-direct {p0}, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->createSubtitleStorer()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->subtitleStorer:Lcom/google/android/youtube/core/async/Requester;

    .line 58
    invoke-direct {p0}, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->createSubtitleRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->subtitleRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 60
    invoke-direct {p0}, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->createSubtitlesClient()Lcom/google/android/youtube/core/client/SubtitlesClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->subtitlesClient:Lcom/google/android/youtube/core/client/SubtitlesClient;

    .line 61
    invoke-direct {p0}, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->createStoringSubtitlesClient()Lcom/google/android/youtube/core/client/SubtitlesClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->storingSubtitlesClient:Lcom/google/android/youtube/core/client/SubtitlesClient;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/videos/store/OfflineSubtitles;)Lcom/google/android/youtube/core/async/Requester;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->subtitleRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/youtube/videos/store/OfflineSubtitles;)Lcom/google/android/youtube/core/async/Requester;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->subtitleTracksRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/youtube/videos/store/OfflineSubtitles;)Lcom/google/android/youtube/core/async/Requester;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->subtitleStorer:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/youtube/videos/store/OfflineSubtitles;)Lcom/google/android/youtube/core/async/Requester;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->subtitleTracksStorer:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/youtube/videos/store/OfflineSubtitles;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->cachePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/youtube/videos/store/OfflineSubtitles;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->cachePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/youtube/videos/store/OfflineSubtitles;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->cachePath:Ljava/lang/String;

    return-object v0
.end method

.method private createStoringSubtitlesClient()Lcom/google/android/youtube/core/client/SubtitlesClient;
    .registers 2

    .prologue
    .line 165
    new-instance v0, Lcom/google/android/youtube/videos/store/OfflineSubtitles$2;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/videos/store/OfflineSubtitles$2;-><init>(Lcom/google/android/youtube/videos/store/OfflineSubtitles;)V

    return-object v0
.end method

.method private createSubtitleRequester()Lcom/google/android/youtube/core/async/Requester;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/model/SubtitleTrack;",
            "Lcom/google/android/youtube/core/model/Subtitle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v1, Lcom/google/android/youtube/core/converter/http/SubtitleConverter;

    iget-object v4, p0, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->xmlParser:Lcom/google/android/youtube/core/converter/XmlParser;

    invoke-direct {v1, v4}, Lcom/google/android/youtube/core/converter/http/SubtitleConverter;-><init>(Lcom/google/android/youtube/core/converter/XmlParser;)V

    .line 93
    .local v1, converter:Lcom/google/android/youtube/core/converter/http/SubtitleConverter;
    invoke-virtual {p0, v1, v1}, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/HttpRequester;

    move-result-object v3

    .line 97
    .local v3, networkRequester:Lcom/google/android/youtube/core/async/HttpRequester;,"Lcom/google/android/youtube/core/async/HttpRequester<Lcom/google/android/youtube/core/model/SubtitleTrack;Lcom/google/android/youtube/core/model/Subtitle;>;"
    new-instance v2, Lcom/google/android/youtube/core/async/FallbackRequester;

    iget-object v4, p0, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->subtitleStore:Lcom/google/android/youtube/videos/store/AbstractFileStore;

    invoke-direct {v2, v4, v3}, Lcom/google/android/youtube/core/async/FallbackRequester;-><init>(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;)V

    .line 100
    .local v2, fallbackRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/model/SubtitleTrack;Lcom/google/android/youtube/core/model/Subtitle;>;"
    invoke-virtual {p0, v2}, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 103
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Lcom/google/android/youtube/core/model/SubtitleTrack;Lcom/google/android/youtube/core/model/Subtitle;>;"
    return-object v0
.end method

.method private createSubtitleStorer()Lcom/google/android/youtube/core/async/Requester;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/model/SubtitleTrack;",
            "Lcom/google/android/youtube/core/model/Subtitle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    new-instance v1, Lcom/google/android/youtube/core/converter/http/SubtitleConverter;

    iget-object v5, p0, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->xmlParser:Lcom/google/android/youtube/core/converter/XmlParser;

    invoke-direct {v1, v5}, Lcom/google/android/youtube/core/converter/http/SubtitleConverter;-><init>(Lcom/google/android/youtube/core/converter/XmlParser;)V

    .line 110
    .local v1, converter:Lcom/google/android/youtube/core/converter/http/SubtitleConverter;
    invoke-virtual {p0, v1, v1}, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/HttpRequester;

    move-result-object v3

    .line 114
    .local v3, networkRequester:Lcom/google/android/youtube/core/async/HttpRequester;,"Lcom/google/android/youtube/core/async/HttpRequester<Lcom/google/android/youtube/core/model/SubtitleTrack;Lcom/google/android/youtube/core/model/Subtitle;>;"
    iget-object v5, p0, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->subtitleStore:Lcom/google/android/youtube/videos/store/AbstractFileStore;

    invoke-static {v3, v5}, Lcom/google/android/youtube/videos/async/CallbackChainingRequester;->create(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Callback;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v4

    .line 118
    .local v4, storingRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/model/SubtitleTrack;Lcom/google/android/youtube/core/model/Subtitle;>;"
    new-instance v2, Lcom/google/android/youtube/core/async/FallbackRequester;

    iget-object v5, p0, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->subtitleStore:Lcom/google/android/youtube/videos/store/AbstractFileStore;

    invoke-direct {v2, v5, v4}, Lcom/google/android/youtube/core/async/FallbackRequester;-><init>(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;)V

    .line 121
    .local v2, fallbackRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/model/SubtitleTrack;Lcom/google/android/youtube/core/model/Subtitle;>;"
    invoke-virtual {p0, v2}, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 124
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Lcom/google/android/youtube/core/model/SubtitleTrack;Lcom/google/android/youtube/core/model/Subtitle;>;"
    return-object v0
.end method

.method private createSubtitleTracksRequester()Lcom/google/android/youtube/core/async/Requester;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/SubtitleTrack;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v1, Lcom/google/android/youtube/core/converter/http/SubtitleTracksConverter;

    invoke-direct {v1}, Lcom/google/android/youtube/core/converter/http/SubtitleTracksConverter;-><init>()V

    .line 76
    .local v1, converter:Lcom/google/android/youtube/core/converter/http/SubtitleTracksConverter;
    invoke-virtual {p0, v1, v1}, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/HttpRequester;

    move-result-object v3

    .line 80
    .local v3, networkRequester:Lcom/google/android/youtube/core/async/HttpRequester;,"Lcom/google/android/youtube/core/async/HttpRequester<Ljava/lang/String;Ljava/util/List<Lcom/google/android/youtube/core/model/SubtitleTrack;>;>;"
    new-instance v2, Lcom/google/android/youtube/core/async/FallbackRequester;

    iget-object v4, p0, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->subtitleTracksStore:Lcom/google/android/youtube/videos/store/AbstractFileStore;

    invoke-direct {v2, v4, v3}, Lcom/google/android/youtube/core/async/FallbackRequester;-><init>(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;)V

    .line 83
    .local v2, fallbackRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Ljava/lang/String;Ljava/util/List<Lcom/google/android/youtube/core/model/SubtitleTrack;>;>;"
    invoke-virtual {p0, v2}, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 86
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Ljava/lang/String;Ljava/util/List<Lcom/google/android/youtube/core/model/SubtitleTrack;>;>;"
    return-object v0
.end method

.method private createSubtitleTracksStorer()Lcom/google/android/youtube/core/async/Requester;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/SubtitleTrack;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 128
    new-instance v1, Lcom/google/android/youtube/core/converter/http/SubtitleTracksConverter;

    invoke-direct {v1}, Lcom/google/android/youtube/core/converter/http/SubtitleTracksConverter;-><init>()V

    .line 131
    .local v1, converter:Lcom/google/android/youtube/core/converter/http/SubtitleTracksConverter;
    invoke-virtual {p0, v1, v1}, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/HttpRequester;

    move-result-object v3

    .line 135
    .local v3, networkRequester:Lcom/google/android/youtube/core/async/HttpRequester;,"Lcom/google/android/youtube/core/async/HttpRequester<Ljava/lang/String;Ljava/util/List<Lcom/google/android/youtube/core/model/SubtitleTrack;>;>;"
    iget-object v5, p0, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->subtitleTracksStore:Lcom/google/android/youtube/videos/store/AbstractFileStore;

    invoke-static {v3, v5}, Lcom/google/android/youtube/videos/async/CallbackChainingRequester;->create(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Callback;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v4

    .line 139
    .local v4, storingRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Ljava/lang/String;Ljava/util/List<Lcom/google/android/youtube/core/model/SubtitleTrack;>;>;"
    new-instance v2, Lcom/google/android/youtube/core/async/FallbackRequester;

    iget-object v5, p0, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->subtitleTracksStore:Lcom/google/android/youtube/videos/store/AbstractFileStore;

    invoke-direct {v2, v5, v4}, Lcom/google/android/youtube/core/async/FallbackRequester;-><init>(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;)V

    .line 142
    .local v2, fallbackRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Ljava/lang/String;Ljava/util/List<Lcom/google/android/youtube/core/model/SubtitleTrack;>;>;"
    invoke-virtual {p0, v2}, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 145
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Ljava/lang/String;Ljava/util/List<Lcom/google/android/youtube/core/model/SubtitleTrack;>;>;"
    return-object v0
.end method

.method private createSubtitlesClient()Lcom/google/android/youtube/core/client/SubtitlesClient;
    .registers 2

    .prologue
    .line 151
    new-instance v0, Lcom/google/android/youtube/videos/store/OfflineSubtitles$1;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/videos/store/OfflineSubtitles$1;-><init>(Lcom/google/android/youtube/videos/store/OfflineSubtitles;)V

    return-object v0
.end method

.method private getSubtitleStore()Lcom/google/android/youtube/videos/store/AbstractFileStore;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/videos/store/AbstractFileStore",
            "<",
            "Lcom/google/android/youtube/core/model/SubtitleTrack;",
            "Lcom/google/android/youtube/core/model/Subtitle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    new-instance v0, Lcom/google/android/youtube/videos/store/OfflineSubtitles$4;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/videos/store/OfflineSubtitles$4;-><init>(Lcom/google/android/youtube/videos/store/OfflineSubtitles;)V

    return-object v0
.end method

.method private getSubtitleTracksStore()Lcom/google/android/youtube/videos/store/AbstractFileStore;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/videos/store/AbstractFileStore",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/SubtitleTrack;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 179
    new-instance v0, Lcom/google/android/youtube/videos/store/OfflineSubtitles$3;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/videos/store/OfflineSubtitles$3;-><init>(Lcom/google/android/youtube/videos/store/OfflineSubtitles;)V

    return-object v0
.end method


# virtual methods
.method public getStoringSubtitlesClient()Lcom/google/android/youtube/core/client/SubtitlesClient;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->storingSubtitlesClient:Lcom/google/android/youtube/core/client/SubtitlesClient;

    return-object v0
.end method

.method public getSubtitlesClient()Lcom/google/android/youtube/core/client/SubtitlesClient;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->subtitlesClient:Lcom/google/android/youtube/core/client/SubtitlesClient;

    return-object v0
.end method
