.class public final Lcom/google/android/youtube/videos/DefaultRequesters;
.super Ljava/lang/Object;
.source "DefaultRequesters.java"

# interfaces
.implements Lcom/google/android/youtube/videos/Requesters;


# instance fields
.field private bitmapBytesRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "[B>;"
        }
    .end annotation
.end field

.field private final cachePath:Ljava/lang/String;

.field private final clock:Lcom/google/android/youtube/core/utils/Clock;

.field private final config:Lcom/google/android/youtube/videos/VideosConfig;

.field private final context:Landroid/content/Context;

.field private downloadStreamLengthRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private downloadStreamRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            "Lcom/google/android/youtube/core/model/Stream;",
            ">;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/Executor;

.field private gdataRequestGetConverter:Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

.field private final httpClient:Lorg/apache/http/client/HttpClient;

.field private inMemoryVideoPageCache:Lcom/google/android/youtube/core/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/cache/Cache",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/async/Timestamped",
            "<",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mostPopularVideosRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;"
        }
    .end annotation
.end field

.field private offlineStreamRequester:Lcom/google/android/youtube/core/async/Requester;
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

.field private onlineStreamsRequester:Lcom/google/android/youtube/core/async/Requester;
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

.field private persistentVideoPageCache:Lcom/google/android/youtube/core/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/cache/Cache",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/async/Timestamped",
            "<",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final platformUtil:Lcom/google/android/youtube/core/PlatformUtil;

.field private posterArtRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private syncContentLengthRequester:Lcom/google/android/youtube/core/async/Requester;
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

.field private syncMyPurchasesRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;>;"
        }
    .end annotation
.end field

.field private syncPermittedStreamsRequester:Lcom/google/android/youtube/core/async/Requester;
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

.field private uriRequestGetConverter:Lcom/google/android/youtube/core/converter/http/UriRequestConverter;

.field private final uriRewriter:Lcom/google/android/youtube/core/utils/UriRewriter;

.field private videoPageHttpRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;"
        }
    .end annotation
.end field

.field private final videosPlatformUtil:Lcom/google/android/youtube/videos/VideosPlatformUtil;

.field private videosRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;"
        }
    .end annotation
.end field

.field private final xmlParser:Lcom/google/android/youtube/core/converter/XmlParser;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/utils/Clock;Lcom/google/android/youtube/core/converter/XmlParser;Lcom/google/android/youtube/core/PlatformUtil;Lcom/google/android/youtube/videos/VideosPlatformUtil;Lcom/google/android/youtube/videos/VideosConfig;)V
    .registers 11
    .parameter "context"
    .parameter "executor"
    .parameter "httpClient"
    .parameter "clock"
    .parameter "parser"
    .parameter "platformUtil"
    .parameter "videosPlatformUtil"
    .parameter "config"

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    const-string v0, "context can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->context:Landroid/content/Context;

    .line 147
    const-string v0, "executor can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->executor:Ljava/util/concurrent/Executor;

    .line 148
    const-string v0, "httpClient can\'t be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/HttpClient;

    iput-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 149
    const-string v0, "clock can\'t be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/Clock;

    iput-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->clock:Lcom/google/android/youtube/core/utils/Clock;

    .line 150
    const-string v0, "parser can\'t be null"

    invoke-static {p5, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/converter/XmlParser;

    iput-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->xmlParser:Lcom/google/android/youtube/core/converter/XmlParser;

    .line 151
    const-string v0, "platformUtil can\'t be null"

    invoke-static {p6, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/PlatformUtil;

    iput-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->platformUtil:Lcom/google/android/youtube/core/PlatformUtil;

    .line 152
    const-string v0, "videosPlatformUtil can\'t be null"

    invoke-static {p7, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/videos/VideosPlatformUtil;

    iput-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->videosPlatformUtil:Lcom/google/android/youtube/videos/VideosPlatformUtil;

    .line 154
    const-string v0, "config can\'t be null"

    invoke-static {p8, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/videos/VideosConfig;

    iput-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->config:Lcom/google/android/youtube/videos/VideosConfig;

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->cachePath:Ljava/lang/String;

    .line 156
    new-instance v0, Lcom/google/android/youtube/core/utils/UriRewriter;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/utils/UriRewriter;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->uriRewriter:Lcom/google/android/youtube/core/utils/UriRewriter;

    .line 157
    return-void
.end method

.method private createBitmapBytesRequester()Lcom/google/android/youtube/core/async/Requester;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 285
    new-instance v0, Lcom/google/android/youtube/core/converter/http/HttpToBytesResponseConverter;

    invoke-direct {v0}, Lcom/google/android/youtube/core/converter/http/HttpToBytesResponseConverter;-><init>()V

    .line 288
    .local v0, httpToBytesConverter:Lcom/google/android/youtube/core/converter/ResponseConverter;,"Lcom/google/android/youtube/core/converter/ResponseConverter<Lorg/apache/http/HttpResponse;[B>;"
    iget-object v6, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->uriRequestGetConverter:Lcom/google/android/youtube/core/converter/http/UriRequestConverter;

    invoke-direct {p0, v6, v0}, Lcom/google/android/youtube/videos/DefaultRequesters;->newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/HttpRequester;

    move-result-object v3

    .line 291
    .local v3, networkRequester:Lcom/google/android/youtube/core/async/HttpRequester;,"Lcom/google/android/youtube/core/async/HttpRequester<Landroid/net/Uri;[B>;"
    invoke-direct {p0}, Lcom/google/android/youtube/videos/DefaultRequesters;->newPersistentCache()Lcom/google/android/youtube/core/cache/PersistentCache;

    move-result-object v4

    .line 293
    .local v4, persistenceCache:Lcom/google/android/youtube/core/cache/PersistentCache;,"Lcom/google/android/youtube/core/cache/PersistentCache<Landroid/net/Uri;Lcom/google/android/youtube/core/async/Timestamped<[B>;>;"
    const-wide/32 v6, 0x48190800

    invoke-direct {p0, v4, v3, v6, v7}, Lcom/google/android/youtube/videos/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v5

    .line 296
    .local v5, persistenceRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Landroid/net/Uri;[B>;"
    iget-object v6, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->platformUtil:Lcom/google/android/youtube/core/PlatformUtil;

    iget-object v7, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->context:Landroid/content/Context;

    invoke-interface {v6, v7}, Lcom/google/android/youtube/core/PlatformUtil;->isLargeHeapAvailable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2e

    const/16 v6, 0x1f4

    :goto_22
    invoke-direct {p0, v6}, Lcom/google/android/youtube/videos/DefaultRequesters;->newInMemoryCache(I)Lcom/google/android/youtube/core/cache/InMemoryLruCache;

    move-result-object v1

    .line 300
    .local v1, memoryCache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<Landroid/net/Uri;Lcom/google/android/youtube/core/async/Timestamped<[B>;>;"
    const-wide/32 v6, 0x6ddd00

    invoke-direct {p0, v1, v5, v6, v7}, Lcom/google/android/youtube/videos/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v2

    .line 303
    .local v2, memoryRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Landroid/net/Uri;[B>;"
    return-object v2

    .line 296
    .end local v1           #memoryCache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<Landroid/net/Uri;Lcom/google/android/youtube/core/async/Timestamped<[B>;>;"
    .end local v2           #memoryRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Landroid/net/Uri;[B>;"
    :cond_2e
    const/16 v6, 0x64

    goto :goto_22
.end method

.method private createBitmapRequester(IZ)Lcom/google/android/youtube/core/async/Requester;
    .registers 7
    .parameter "desiredWidth"
    .parameter "cropToWidescreen"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    new-instance v1, Lcom/google/android/youtube/core/converter/http/BytesToBitmapResponseConverter;

    const/4 v3, 0x1

    invoke-direct {v1, p1, p2, v3}, Lcom/google/android/youtube/core/converter/http/BytesToBitmapResponseConverter;-><init>(IZZ)V

    .line 311
    .local v1, bytesToBitmapConverter:Lcom/google/android/youtube/core/converter/ResponseConverter;,"Lcom/google/android/youtube/core/converter/ResponseConverter<[BLandroid/graphics/Bitmap;>;"
    iget-object v3, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->bitmapBytesRequester:Lcom/google/android/youtube/core/async/Requester;

    invoke-static {v3, v1}, Lcom/google/android/youtube/core/async/ConvertingRequester;->create(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v2

    .line 314
    .local v2, convertingRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Landroid/net/Uri;Landroid/graphics/Bitmap;>;"
    invoke-direct {p0, v2}, Lcom/google/android/youtube/videos/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 316
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Landroid/net/Uri;Landroid/graphics/Bitmap;>;"
    return-object v0
.end method

.method private createDownloadStreamRequesters()V
    .registers 12

    .prologue
    const-wide/16 v9, 0x0

    .line 343
    new-instance v5, Lcom/google/android/youtube/videos/async/DownloadStreamRequester;

    iget-object v6, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->config:Lcom/google/android/youtube/videos/VideosConfig;

    iget-object v7, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->syncPermittedStreamsRequester:Lcom/google/android/youtube/core/async/Requester;

    iget-object v8, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->syncContentLengthRequester:Lcom/google/android/youtube/core/async/Requester;

    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/youtube/videos/async/DownloadStreamRequester;-><init>(Lcom/google/android/youtube/videos/VideosConfig;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;)V

    .line 347
    .local v5, syncStreamRequester:Lcom/google/android/youtube/videos/async/DownloadStreamRequester;
    invoke-direct {p0}, Lcom/google/android/youtube/videos/DefaultRequesters;->newPersistentCache()Lcom/google/android/youtube/core/cache/PersistentCache;

    move-result-object v3

    .line 348
    .local v3, persistentStreamCache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<Ljava/lang/String;Lcom/google/android/youtube/core/async/Timestamped<Lcom/google/android/youtube/core/model/Stream;>;>;"
    invoke-direct {p0, v3, v5, v9, v10}, Lcom/google/android/youtube/videos/DefaultRequesters;->newPurchaseRequestCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v4

    .line 351
    .local v4, persistentStreamRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/model/Stream;>;"
    invoke-direct {p0, v4}, Lcom/google/android/youtube/videos/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 354
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/model/Stream;>;"
    const/16 v6, 0x64

    invoke-direct {p0, v6}, Lcom/google/android/youtube/videos/DefaultRequesters;->newInMemoryCache(I)Lcom/google/android/youtube/core/cache/InMemoryLruCache;

    move-result-object v1

    .line 356
    .local v1, inMemoryStreamCache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<Ljava/lang/String;Lcom/google/android/youtube/core/async/Timestamped<Lcom/google/android/youtube/core/model/Stream;>;>;"
    invoke-direct {p0, v1, v0, v9, v10}, Lcom/google/android/youtube/videos/DefaultRequesters;->newPurchaseRequestCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v2

    .line 359
    .local v2, inMemoryStreamRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/model/Stream;>;"
    iput-object v2, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->downloadStreamRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 362
    const-wide/32 v6, 0x48190800

    invoke-direct {p0, v3, v5, v6, v7}, Lcom/google/android/youtube/videos/DefaultRequesters;->newPurchaseRequestCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v4

    .line 365
    invoke-direct {p0, v4}, Lcom/google/android/youtube/videos/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 368
    const-wide/32 v6, 0x6ddd00

    invoke-direct {p0, v1, v0, v6, v7}, Lcom/google/android/youtube/videos/DefaultRequesters;->newPurchaseRequestCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v2

    .line 371
    new-instance v6, Lcom/google/android/youtube/videos/DefaultRequesters$1;

    invoke-direct {v6, p0}, Lcom/google/android/youtube/videos/DefaultRequesters$1;-><init>(Lcom/google/android/youtube/videos/DefaultRequesters;)V

    invoke-static {v2, v6}, Lcom/google/android/youtube/core/async/ConvertingRequester;->create(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->downloadStreamLengthRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 383
    return-void
.end method

.method private createMostPopularVideosRequester()Lcom/google/android/youtube/core/async/Requester;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->videosRequester:Lcom/google/android/youtube/core/async/Requester;

    iget-object v1, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->videosRequester:Lcom/google/android/youtube/core/async/Requester;

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/videos/DefaultRequesters;->newFallbackRequester(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/FallbackRequester;

    move-result-object v0

    return-object v0
.end method

.method private createOfflineStreamsRequester()Lcom/google/android/youtube/core/async/Requester;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

    .prologue
    .line 332
    new-instance v0, Lcom/google/android/youtube/videos/async/OfflineStreamRequester;

    iget-object v1, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->videosPlatformUtil:Lcom/google/android/youtube/videos/VideosPlatformUtil;

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/videos/async/OfflineStreamRequester;-><init>(Landroid/content/Context;Lcom/google/android/youtube/videos/VideosPlatformUtil;)V

    invoke-direct {p0, v0}, Lcom/google/android/youtube/videos/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    return-object v0
.end method

.method private createOnlineStreamsRequester()Lcom/google/android/youtube/core/async/Requester;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            "Lcom/google/android/youtube/core/model/VideoStreams;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    new-instance v0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;

    iget-object v1, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->config:Lcom/google/android/youtube/videos/VideosConfig;

    iget-object v3, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->syncPermittedStreamsRequester:Lcom/google/android/youtube/core/async/Requester;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;-><init>(Landroid/content/Context;Lcom/google/android/youtube/videos/VideosConfig;Lcom/google/android/youtube/core/async/Requester;)V

    invoke-direct {p0, v0}, Lcom/google/android/youtube/videos/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    return-object v0
.end method

.method private createSyncContentLengthRequester()Lcom/google/android/youtube/core/async/Requester;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    new-instance v1, Lcom/google/android/youtube/core/converter/http/ContentLengthConverter;

    invoke-direct {v1}, Lcom/google/android/youtube/core/converter/http/ContentLengthConverter;-><init>()V

    .line 269
    .local v1, converter:Lcom/google/android/youtube/core/converter/http/ContentLengthConverter;
    invoke-direct {p0, v1, v1}, Lcom/google/android/youtube/videos/DefaultRequesters;->newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/HttpRequester;

    move-result-object v0

    .line 271
    .local v0, contentLengthRequester:Lcom/google/android/youtube/core/async/HttpRequester;,"Lcom/google/android/youtube/core/async/HttpRequester<Landroid/net/Uri;Ljava/lang/Long;>;"
    const/16 v4, 0x64

    invoke-direct {p0, v4}, Lcom/google/android/youtube/videos/DefaultRequesters;->newInMemoryCache(I)Lcom/google/android/youtube/core/cache/InMemoryLruCache;

    move-result-object v2

    .line 273
    .local v2, inMemoryStreamLengthCache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<Landroid/net/Uri;Lcom/google/android/youtube/core/async/Timestamped<Ljava/lang/Long;>;>;"
    const-wide/32 v4, 0x6ddd00

    invoke-direct {p0, v2, v0, v4, v5}, Lcom/google/android/youtube/videos/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    .line 276
    .local v3, memoryRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Landroid/net/Uri;Ljava/lang/Long;>;"
    return-object v3
.end method

.method private createSyncMyPurchasesRequester(Lcom/google/android/youtube/core/async/UserAuthorizer;)Lcom/google/android/youtube/core/async/Requester;
    .registers 6
    .parameter "authorizer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/UserAuthorizer;",
            ")",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 321
    new-instance v1, Lcom/google/android/youtube/core/converter/http/PurchasePageResponseConverter;

    iget-object v2, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->xmlParser:Lcom/google/android/youtube/core/converter/XmlParser;

    iget-object v3, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/youtube/core/utils/Util;->isLargeScreen(Landroid/content/Context;)Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/youtube/core/converter/http/PurchasePageResponseConverter;-><init>(Lcom/google/android/youtube/core/converter/XmlParser;Z)V

    .line 324
    .local v1, responseConverter:Lcom/google/android/youtube/core/converter/http/PurchasePageResponseConverter;
    iget-object v2, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->gdataRequestGetConverter:Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

    invoke-direct {p0, v2, v1}, Lcom/google/android/youtube/videos/DefaultRequesters;->newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/HttpRequester;

    move-result-object v0

    .line 327
    .local v0, networkRequester:Lcom/google/android/youtube/core/async/HttpRequester;,"Lcom/google/android/youtube/core/async/HttpRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Purchase;>;>;"
    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->createRetryingRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v2

    return-object v2
.end method

.method private createSyncPermittedStreamsRequester(Z)Lcom/google/android/youtube/core/async/Requester;
    .registers 9
    .parameter "canDisplay360P"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
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

    .prologue
    .line 388
    new-instance v0, Lcom/google/android/youtube/videos/converter/http/ChannelFormatsConverter;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-direct {v0, v4, v5, v6}, Lcom/google/android/youtube/videos/converter/http/ChannelFormatsConverter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    .local v0, converter:Lcom/google/android/youtube/videos/converter/http/ChannelFormatsConverter;
    invoke-direct {p0, v0, v0}, Lcom/google/android/youtube/videos/DefaultRequesters;->newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/HttpRequester;

    move-result-object v3

    .line 394
    .local v3, networkRequester:Lcom/google/android/youtube/core/async/HttpRequester;,"Lcom/google/android/youtube/core/async/HttpRequester<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/Integer;>;>;"
    const/16 v4, 0x64

    invoke-direct {p0, v4}, Lcom/google/android/youtube/videos/DefaultRequesters;->newInMemoryCache(I)Lcom/google/android/youtube/core/cache/InMemoryLruCache;

    move-result-object v1

    .line 396
    .local v1, memoryCache:Lcom/google/android/youtube/core/cache/InMemoryLruCache;,"Lcom/google/android/youtube/core/cache/InMemoryLruCache<Ljava/lang/String;Lcom/google/android/youtube/core/async/Timestamped<Ljava/util/Collection<Ljava/lang/Integer;>;>;>;"
    const-wide/32 v4, 0x6ddd00

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/google/android/youtube/videos/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v2

    .line 399
    .local v2, memoryRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/Integer;>;>;"
    new-instance v4, Lcom/google/android/youtube/videos/async/PermittedStreamsRequester;

    iget-object v5, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->videosPlatformUtil:Lcom/google/android/youtube/videos/VideosPlatformUtil;

    iget-object v6, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->context:Landroid/content/Context;

    invoke-interface {v5, v6}, Lcom/google/android/youtube/videos/VideosPlatformUtil;->isFrameworkDrmSupported(Landroid/content/Context;)Z

    move-result v5

    invoke-direct {v4, v2, p1, v5}, Lcom/google/android/youtube/videos/async/PermittedStreamsRequester;-><init>(Lcom/google/android/youtube/core/async/Requester;ZZ)V

    return-object v4
.end method

.method private createVideosRequester()Lcom/google/android/youtube/core/async/Requester;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 246
    iget-object v3, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->persistentVideoPageCache:Lcom/google/android/youtube/core/cache/Cache;

    iget-object v4, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->videoPageHttpRequester:Lcom/google/android/youtube/core/async/Requester;

    const-wide/32 v5, 0xa4cb800

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/google/android/youtube/videos/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v2

    .line 249
    .local v2, persistenceRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;>;"
    invoke-direct {p0, v2}, Lcom/google/android/youtube/videos/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 252
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;>;"
    iget-object v3, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->inMemoryVideoPageCache:Lcom/google/android/youtube/core/cache/Cache;

    const-wide/32 v4, 0x6ddd00

    invoke-direct {p0, v3, v0, v4, v5}, Lcom/google/android/youtube/videos/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v1

    .line 255
    .local v1, memoryRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;>;"
    return-object v1
.end method

.method private newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/youtube/core/async/Requester",
            "<TR;TE;>;)",
            "Lcom/google/android/youtube/core/async/AsyncRequester",
            "<TR;TE;>;"
        }
    .end annotation

    .prologue
    .line 421
    .local p1, target:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<TR;TE;>;"
    iget-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/async/AsyncRequester;->create(Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    return-object v0
.end method

.method private newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/Requester;
    .registers 6
    .parameter
    .parameter
    .parameter "timeToLive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/youtube/core/cache/Cache",
            "<TR;",
            "Lcom/google/android/youtube/core/async/Timestamped",
            "<TE;>;>;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<TR;TE;>;J)",
            "Lcom/google/android/youtube/core/async/Requester",
            "<TR;TE;>;"
        }
    .end annotation

    .prologue
    .line 431
    .local p1, cache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<TR;Lcom/google/android/youtube/core/async/Timestamped<TE;>;>;"
    .local p2, target:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<TR;TE;>;"
    iget-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->clock:Lcom/google/android/youtube/core/utils/Clock;

    invoke-static {p1, p2, v0, p3, p4}, Lcom/google/android/youtube/core/async/TimestampedCachingRequester;->create(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/utils/Clock;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v0

    return-object v0
.end method

.method private newFallbackRequester(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/FallbackRequester;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/youtube/core/async/Requester",
            "<TR;TE;>;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<TR;TE;>;)",
            "Lcom/google/android/youtube/core/async/FallbackRequester",
            "<TR;TE;>;"
        }
    .end annotation

    .prologue
    .line 448
    .local p1, firstRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<TR;TE;>;"
    .local p2, secondRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<TR;TE;>;"
    new-instance v0, Lcom/google/android/youtube/core/async/FallbackRequester;

    invoke-direct {v0, p1, p2}, Lcom/google/android/youtube/core/async/FallbackRequester;-><init>(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;)V

    return-object v0
.end method

.method private newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/HttpRequester;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/youtube/core/converter/RequestConverter",
            "<TR;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            ">;",
            "Lcom/google/android/youtube/core/converter/ResponseConverter",
            "<",
            "Lorg/apache/http/HttpResponse;",
            "TE;>;)",
            "Lcom/google/android/youtube/core/async/HttpRequester",
            "<TR;TE;>;"
        }
    .end annotation

    .prologue
    .line 417
    .local p1, requestConverter:Lcom/google/android/youtube/core/converter/RequestConverter;,"Lcom/google/android/youtube/core/converter/RequestConverter<TR;Lorg/apache/http/client/methods/HttpUriRequest;>;"
    .local p2, responseConverter:Lcom/google/android/youtube/core/converter/ResponseConverter;,"Lcom/google/android/youtube/core/converter/ResponseConverter<Lorg/apache/http/HttpResponse;TE;>;"
    new-instance v0, Lcom/google/android/youtube/core/async/HttpRequester;

    iget-object v1, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/youtube/core/async/HttpRequester;-><init>(Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)V

    return-object v0
.end method

.method private newInMemoryCache(I)Lcom/google/android/youtube/core/cache/InMemoryLruCache;
    .registers 3
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/android/youtube/core/cache/InMemoryLruCache",
            "<TK;TE;>;"
        }
    .end annotation

    .prologue
    .line 425
    new-instance v0, Lcom/google/android/youtube/core/cache/InMemoryLruCache;

    invoke-direct {v0, p1}, Lcom/google/android/youtube/core/cache/InMemoryLruCache;-><init>(I)V

    return-object v0
.end method

.method private newPersistentCache()Lcom/google/android/youtube/core/cache/PersistentCache;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "E::",
            "Ljava/io/Serializable;",
            ">()",
            "Lcom/google/android/youtube/core/cache/PersistentCache",
            "<TK;TE;>;"
        }
    .end annotation

    .prologue
    .line 452
    new-instance v0, Lcom/google/android/youtube/core/cache/PersistentCache;

    iget-object v1, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->cachePath:Ljava/lang/String;

    const-string v2, ".cache"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/cache/PersistentCache;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/cache/PersistentCache;->init(Ljava/util/concurrent/Executor;)Lcom/google/android/youtube/core/cache/PersistentCache;

    move-result-object v0

    return-object v0
.end method

.method private newPurchaseRequestCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/Requester;
    .registers 12
    .parameter
    .parameter
    .parameter "timeToLive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/youtube/core/cache/Cache",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/async/Timestamped",
            "<TE;>;>;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            "TE;>;J)",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            "TE;>;"
        }
    .end annotation

    .prologue
    .line 437
    .local p1, cache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<Ljava/lang/String;Lcom/google/android/youtube/core/async/Timestamped<TE;>;>;"
    .local p2, target:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/model/Purchase;TE;>;"
    new-instance v0, Lcom/google/android/youtube/videos/DefaultRequesters$3;

    iget-object v4, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->clock:Lcom/google/android/youtube/core/utils/Clock;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/videos/DefaultRequesters$3;-><init>(Lcom/google/android/youtube/videos/DefaultRequesters;Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/utils/Clock;J)V

    return-object v0
.end method

.method private triggerCacheShrinking(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 12
    .parameter "path"
    .parameter "suffix"
    .parameter "limit"

    .prologue
    .line 404
    iget-object v6, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->executor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/youtube/videos/DefaultRequesters$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/videos/DefaultRequesters$2;-><init>(Lcom/google/android/youtube/videos/DefaultRequesters;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 409
    return-void
.end method


# virtual methods
.method public getDownloadStreamLengthRequester()Lcom/google/android/youtube/core/async/Requester;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->downloadStreamLengthRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getDownloadStreamRequester()Lcom/google/android/youtube/core/async/Requester;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            "Lcom/google/android/youtube/core/model/Stream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->downloadStreamRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getMostPopularMoviesRequester()Lcom/google/android/youtube/core/async/Requester;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->mostPopularVideosRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getOfflineStreamRequester()Lcom/google/android/youtube/core/async/Requester;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->offlineStreamRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getOnlineStreamsRequester()Lcom/google/android/youtube/core/async/Requester;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            "Lcom/google/android/youtube/core/model/VideoStreams;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->onlineStreamsRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getPosterArtRequester()Lcom/google/android/youtube/core/async/Requester;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->posterArtRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getSuggestedMoviesRequester()Lcom/google/android/youtube/core/async/Requester;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->videosRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getSyncBitmapBytesRequester()Lcom/google/android/youtube/core/async/Requester;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->bitmapBytesRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getSyncMyPurchasesRequester()Lcom/google/android/youtube/core/async/Requester;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->syncMyPurchasesRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public init(Lcom/google/android/youtube/core/async/DeviceAuthorizer;Lcom/google/android/youtube/core/async/UserAuthorizer;)V
    .registers 13
    .parameter "deviceAuthorizer"
    .parameter "userAuthorizer"

    .prologue
    const/4 v5, 0x0

    .line 165
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v6, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->platformUtil:Lcom/google/android/youtube/core/PlatformUtil;

    iget-object v7, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->context:Landroid/content/Context;

    invoke-interface {v6, v7}, Lcom/google/android/youtube/core/PlatformUtil;->isTablet(Landroid/content/Context;)Z

    move-result v3

    .line 169
    .local v3, isTablet:Z
    iget-object v6, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/google/android/youtube/core/utils/Util;->probablyLowEndDevice(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_ac

    const/4 v1, 0x1

    .line 171
    .local v1, canDisplay360P:Z
    :goto_18
    iget-object v6, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->cachePath:Ljava/lang/String;

    const-string v7, ".cache"

    const-wide/32 v8, 0x500000

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/google/android/youtube/videos/DefaultRequesters;->triggerCacheShrinking(Ljava/lang/String;Ljava/lang/String;J)V

    .line 174
    new-instance v6, Lcom/google/android/youtube/core/converter/http/UriRequestConverter;

    sget-object v7, Lcom/google/android/youtube/core/converter/http/HttpMethod;->GET:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    invoke-direct {v6, v7}, Lcom/google/android/youtube/core/converter/http/UriRequestConverter;-><init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;)V

    iput-object v6, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->uriRequestGetConverter:Lcom/google/android/youtube/core/converter/http/UriRequestConverter;

    .line 175
    new-instance v6, Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

    sget-object v7, Lcom/google/android/youtube/core/converter/http/HttpMethod;->GET:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    iget-object v8, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->uriRewriter:Lcom/google/android/youtube/core/utils/UriRewriter;

    invoke-direct {v6, v7, p1, v8}, Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;-><init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;Lcom/google/android/youtube/core/async/DeviceAuthorizer;Lcom/google/android/youtube/core/utils/UriRewriter;)V

    iput-object v6, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->gdataRequestGetConverter:Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

    .line 177
    new-instance v2, Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

    sget-object v6, Lcom/google/android/youtube/core/converter/http/HttpMethod;->POST:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    const-string v7, "application/atom+xml"

    iget-object v8, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->uriRewriter:Lcom/google/android/youtube/core/utils/UriRewriter;

    invoke-direct {v2, v6, v7, p1, v8}, Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;-><init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;Ljava/lang/String;Lcom/google/android/youtube/core/async/DeviceAuthorizer;Lcom/google/android/youtube/core/utils/UriRewriter;)V

    .line 180
    .local v2, gdataRequestPostConverter:Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;
    invoke-direct {p0}, Lcom/google/android/youtube/videos/DefaultRequesters;->createBitmapBytesRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->bitmapBytesRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 181
    iget-object v6, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0024

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 182
    .local v0, bitmapWidth:I
    invoke-direct {p0, v0, v5}, Lcom/google/android/youtube/videos/DefaultRequesters;->createBitmapRequester(IZ)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->posterArtRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 184
    const/16 v5, 0x32

    invoke-direct {p0, v5}, Lcom/google/android/youtube/videos/DefaultRequesters;->newInMemoryCache(I)Lcom/google/android/youtube/core/cache/InMemoryLruCache;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->inMemoryVideoPageCache:Lcom/google/android/youtube/core/cache/Cache;

    .line 185
    invoke-direct {p0}, Lcom/google/android/youtube/videos/DefaultRequesters;->newPersistentCache()Lcom/google/android/youtube/core/cache/PersistentCache;

    move-result-object v4

    .line 187
    .local v4, syncPersistentVideoPageCache:Lcom/google/android/youtube/core/cache/PersistentCache;,"Lcom/google/android/youtube/core/cache/PersistentCache<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Timestamped<Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;>;>;"
    new-instance v5, Lcom/google/android/youtube/core/cache/AsyncCache;

    iget-object v6, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->executor:Ljava/util/concurrent/Executor;

    invoke-direct {v5, v6, v4}, Lcom/google/android/youtube/core/cache/AsyncCache;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/cache/Cache;)V

    iput-object v5, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->persistentVideoPageCache:Lcom/google/android/youtube/core/cache/Cache;

    .line 190
    iget-object v5, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->gdataRequestGetConverter:Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

    new-instance v6, Lcom/google/android/youtube/core/converter/http/VideoPageResponseConverter;

    iget-object v7, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->xmlParser:Lcom/google/android/youtube/core/converter/XmlParser;

    invoke-direct {v6, v7, v3}, Lcom/google/android/youtube/core/converter/http/VideoPageResponseConverter;-><init>(Lcom/google/android/youtube/core/converter/XmlParser;Z)V

    invoke-direct {p0, v5, v6}, Lcom/google/android/youtube/videos/DefaultRequesters;->newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/HttpRequester;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->videoPageHttpRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 194
    invoke-direct {p0}, Lcom/google/android/youtube/videos/DefaultRequesters;->createVideosRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->videosRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 195
    invoke-direct {p0}, Lcom/google/android/youtube/videos/DefaultRequesters;->createMostPopularVideosRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->mostPopularVideosRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 197
    invoke-direct {p0, p2}, Lcom/google/android/youtube/videos/DefaultRequesters;->createSyncMyPurchasesRequester(Lcom/google/android/youtube/core/async/UserAuthorizer;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->syncMyPurchasesRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 199
    invoke-direct {p0}, Lcom/google/android/youtube/videos/DefaultRequesters;->createSyncContentLengthRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->syncContentLengthRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 200
    invoke-direct {p0, v1}, Lcom/google/android/youtube/videos/DefaultRequesters;->createSyncPermittedStreamsRequester(Z)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->syncPermittedStreamsRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 202
    invoke-direct {p0}, Lcom/google/android/youtube/videos/DefaultRequesters;->createOfflineStreamsRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->offlineStreamRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 203
    invoke-direct {p0}, Lcom/google/android/youtube/videos/DefaultRequesters;->createOnlineStreamsRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->onlineStreamsRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 204
    invoke-direct {p0}, Lcom/google/android/youtube/videos/DefaultRequesters;->createDownloadStreamRequesters()V

    .line 205
    return-void

    .end local v0           #bitmapWidth:I
    .end local v1           #canDisplay360P:Z
    .end local v2           #gdataRequestPostConverter:Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;
    .end local v4           #syncPersistentVideoPageCache:Lcom/google/android/youtube/core/cache/PersistentCache;,"Lcom/google/android/youtube/core/cache/PersistentCache<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Timestamped<Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;>;>;"
    :cond_ac
    move v1, v5

    .line 169
    goto/16 :goto_18
.end method
