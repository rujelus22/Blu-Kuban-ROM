.class public Lcom/google/android/apps/unveil/history/SearchHistoryEngine;
.super Ljava/lang/Object;
.source "SearchHistoryEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/history/SearchHistoryEngine$ResponseHandler;,
        Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;
    }
.end annotation


# static fields
.field public static final SEARCH_PATH:Ljava/lang/String; = "/goggles/a/api/json/moments/"

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private final application:Lcom/google/android/apps/unveil/UnveilContext;

.field private final connector:Lcom/google/android/apps/unveil/network/AbstractConnector;

.field private final manualAuthenticationProvider:Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$HeaderProvider;

.field private final requestFactory:Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;

.field private final xsrfTokenManager:Lcom/google/android/apps/unveil/history/XsrfTokenManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/unveil/UnveilContext;)V
    .registers 7
    .parameter "application"

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->application:Lcom/google/android/apps/unveil/UnveilContext;

    .line 149
    invoke-interface {p1}, Lcom/google/android/apps/unveil/UnveilContext;->getConnector()Lcom/google/android/apps/unveil/network/AbstractConnector;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->connector:Lcom/google/android/apps/unveil/network/AbstractConnector;

    .line 150
    invoke-static {p1}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;->newAuthenticatedRequestFactory(Lcom/google/android/apps/unveil/UnveilContext;)Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->requestFactory:Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;

    .line 151
    invoke-static {p1}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;->newAuthenticationProvider(Lcom/google/android/apps/unveil/UnveilContext;)Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$HeaderProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->manualAuthenticationProvider:Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$HeaderProvider;

    .line 152
    new-instance v0, Lcom/google/android/apps/unveil/history/XsrfTokenManager;

    iget-object v1, p0, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->requestFactory:Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;

    sget-object v2, Lcom/google/android/apps/unveil/env/Clock;->SYSTEM_CLOCK:Lcom/google/android/apps/unveil/env/Clock;

    iget-object v3, p0, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->connector:Lcom/google/android/apps/unveil/network/AbstractConnector;

    invoke-interface {p1}, Lcom/google/android/apps/unveil/UnveilContext;->getFrontendUrl()Ljava/net/URL;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/unveil/history/XsrfTokenManager;-><init>(Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;Lcom/google/android/apps/unveil/env/Clock;Lcom/google/android/apps/unveil/network/AbstractConnector;Ljava/net/URL;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->xsrfTokenManager:Lcom/google/android/apps/unveil/history/XsrfTokenManager;

    .line 154
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/unveil/history/SearchHistoryEngine;)Lcom/google/android/apps/unveil/history/XsrfTokenManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->xsrfTokenManager:Lcom/google/android/apps/unveil/history/XsrfTokenManager;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/android/apps/unveil/env/UnveilLogger;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-object v0
.end method

.method private convertUrlToHttps(Ljava/net/URL;)Ljava/net/URL;
    .registers 8
    .parameter "url"

    .prologue
    .line 388
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "https"

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v4

    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_13
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_13} :catch_15

    move-object p1, v1

    .line 390
    .end local p1
    :goto_14
    return-object p1

    .line 389
    .restart local p1
    :catch_15
    move-exception v0

    .line 390
    .local v0, e:Ljava/net/MalformedURLException;
    goto :goto_14
.end method

.method private static encodeUserSubmission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)Ljava/lang/String;
    .registers 9
    .parameter "title"
    .parameter "description"
    .parameter "type"
    .parameter "region"

    .prologue
    .line 261
    const-string v1, "_method=put&userSubmittedTitle=%s&userSubmittedDescription=%s&userSubmittedType=%s&userSubmittedRegion=%d,%d,%d,%d&isSearchable=true"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p3, Landroid/graphics/Rect;->left:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p3, Landroid/graphics/Rect;->top:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, requestBody:Ljava/lang/String;
    return-object v0
.end method

.method private getMomentUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "momentId"

    .prologue
    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->getRootUrl(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 366
    .local v0, urlBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getRootUrl(Z)Ljava/lang/String;
    .registers 5
    .parameter "https"

    .prologue
    .line 375
    iget-object v1, p0, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->application:Lcom/google/android/apps/unveil/UnveilContext;

    invoke-interface {v1}, Lcom/google/android/apps/unveil/UnveilContext;->getFrontendUrl()Ljava/net/URL;

    move-result-object v0

    .line 376
    .local v0, url:Ljava/net/URL;
    if-nez v0, :cond_a

    .line 377
    const/4 v1, 0x0

    .line 382
    :goto_9
    return-object v1

    .line 379
    :cond_a
    if-eqz p1, :cond_24

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->convertUrlToHttps(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/goggles/a/api/json/moments/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    .line 382
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/goggles/a/api/json/moments/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9
.end method

.method private newPost(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    .registers 6
    .parameter "url"
    .parameter "requestBody"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->requestFactory:Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;

    invoke-static {p2}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;->newStringEntity(Ljava/lang/String;)Lorg/apache/http/HttpEntity;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ContentType;->URL_ENCODED:Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ContentType;

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;->newPostRequest(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ContentType;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(Ljava/lang/String;Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;)V
    .registers 8
    .parameter "momentId"
    .parameter "listener"

    .prologue
    .line 328
    new-instance v1, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$6;

    invoke-direct {v1, p0, p2, p2}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$6;-><init>(Lcom/google/android/apps/unveil/history/SearchHistoryEngine;Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;)V

    .line 335
    .local v1, responseHandler:Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->getMomentUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 336
    .local v2, url:Ljava/lang/String;
    const-string v0, "_method=DELETE"

    .line 337
    .local v0, requestBody:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->xsrfTokenManager:Lcom/google/android/apps/unveil/history/XsrfTokenManager;

    const-string v4, "_method=DELETE"

    invoke-direct {p0, v2, v4}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->newPost(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/google/android/apps/unveil/history/XsrfTokenManager;->executeSideEffectRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;)V

    .line 338
    return-void
.end method

.method public invalidateXsrfToken()V
    .registers 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->xsrfTokenManager:Lcom/google/android/apps/unveil/history/XsrfTokenManager;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/history/XsrfTokenManager;->invalidateToken()V

    .line 396
    return-void
.end method

.method public lookup(Ljava/lang/String;Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;)V
    .registers 7
    .parameter "momentId"
    .parameter "listener"

    .prologue
    .line 205
    new-instance v0, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$2;

    invoke-direct {v0, p0, p2, p2}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$2;-><init>(Lcom/google/android/apps/unveil/history/SearchHistoryEngine;Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;)V

    .line 223
    .local v0, responseHandler:Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->getMomentUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, url:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->connector:Lcom/google/android/apps/unveil/network/AbstractConnector;

    iget-object v3, p0, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->requestFactory:Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;

    invoke-virtual {v3, v1}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;->newGetRequest(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/google/android/apps/unveil/network/AbstractConnector;->sendRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;)V

    .line 225
    return-void
.end method

.method public reportAbuse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;)V
    .registers 13
    .parameter "abuseUrl"
    .parameter "category"
    .parameter "comment"
    .parameter "authenticated"
    .parameter "listener"

    .prologue
    .line 342
    new-instance v1, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$7;

    invoke-direct {v1, p0, p5, p5}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$7;-><init>(Lcom/google/android/apps/unveil/history/SearchHistoryEngine;Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;)V

    .line 349
    .local v1, responseHandler:Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;
    const-string v3, "%s?abuseCategory=%s&comment=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, url:Ljava/lang/String;
    const-string v3, ""

    invoke-direct {p0, v2, v3}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->newPost(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    .line 353
    .local v0, request:Lorg/apache/http/client/methods/HttpPost;
    if-eqz p4, :cond_32

    .line 354
    iget-object v3, p0, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->manualAuthenticationProvider:Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$HeaderProvider;

    invoke-interface {v3, v0}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$HeaderProvider;->attachHeader(Lorg/apache/http/HttpRequest;)V

    .line 355
    iget-object v3, p0, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->xsrfTokenManager:Lcom/google/android/apps/unveil/history/XsrfTokenManager;

    invoke-virtual {v3, v0, v1}, Lcom/google/android/apps/unveil/history/XsrfTokenManager;->executeSideEffectRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;)V

    .line 359
    :goto_31
    return-void

    .line 357
    :cond_32
    iget-object v3, p0, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->connector:Lcom/google/android/apps/unveil/network/AbstractConnector;

    invoke-virtual {v3, v0, v1}, Lcom/google/android/apps/unveil/network/AbstractConnector;->sendRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;)V

    goto :goto_31
.end method

.method public search(Lcom/google/android/apps/unveil/history/SearchHistoryQuery$QuerySpec;Ljava/lang/String;ILcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;)V
    .registers 14
    .parameter "querySpec"
    .parameter "continuationToken"
    .parameter "maxResults"
    .parameter "listener"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 166
    new-instance v0, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$1;

    invoke-direct {v0, p0, p4, p4}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$1;-><init>(Lcom/google/android/apps/unveil/history/SearchHistoryEngine;Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;)V

    .line 192
    .local v0, responseHandler:Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/history/SearchHistoryQuery$QuerySpec;->prefersHttps()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->getRootUrl(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .local v2, urlBuilder:Ljava/lang/StringBuilder;
    const-string v3, "?%s&continuationToken=%s&num=%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/history/SearchHistoryQuery$QuerySpec;->queryString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object p2, v4, v8

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, url:Ljava/lang/String;
    sget-object v3, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v4, "SearchHistoryEngine.search: url=%s"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    iget-object v3, p0, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->connector:Lcom/google/android/apps/unveil/network/AbstractConnector;

    iget-object v4, p0, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->requestFactory:Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;

    invoke-virtual {v4, v1}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;->newGetRequest(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/google/android/apps/unveil/network/AbstractConnector;->sendRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;)V

    .line 199
    return-void
.end method

.method public setUserSubmission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;)V
    .registers 15
    .parameter "momentId"
    .parameter "title"
    .parameter "description"
    .parameter "type"
    .parameter "region"
    .parameter "listener"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 239
    new-instance v1, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$3;

    invoke-direct {v1, p0, p6, p6}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$3;-><init>(Lcom/google/android/apps/unveil/history/SearchHistoryEngine;Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;)V

    .line 246
    .local v1, responseHandler:Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->getMomentUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, url:Ljava/lang/String;
    invoke-static {p2, p3, p4, p5}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->encodeUserSubmission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, requestBody:Ljava/lang/String;
    sget-object v3, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v4, "Sending user submission to %s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    sget-object v3, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v4, "Submission body: %s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    iget-object v3, p0, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->xsrfTokenManager:Lcom/google/android/apps/unveil/history/XsrfTokenManager;

    invoke-direct {p0, v2, v0}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->newPost(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/google/android/apps/unveil/history/XsrfTokenManager;->executeSideEffectRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;)V

    .line 251
    return-void
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;)V
    .registers 12
    .parameter "momentId"
    .parameter "key"
    .parameter "value"
    .parameter "listener"

    .prologue
    .line 303
    new-instance v1, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$5;

    invoke-direct {v1, p0, p4, p4}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$5;-><init>(Lcom/google/android/apps/unveil/history/SearchHistoryEngine;Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;)V

    .line 321
    .local v1, responseHandler:Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->getMomentUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 322
    .local v2, url:Ljava/lang/String;
    const-string v3, "_method=PUT&%s=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, requestBody:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->xsrfTokenManager:Lcom/google/android/apps/unveil/history/XsrfTokenManager;

    invoke-direct {p0, v2, v0}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->newPost(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/google/android/apps/unveil/history/XsrfTokenManager;->executeSideEffectRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;)V

    .line 325
    return-void
.end method

.method public withdrawUserSubmission(Ljava/lang/String;Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;)V
    .registers 11
    .parameter "momentId"
    .parameter "listener"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 280
    new-instance v1, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$4;

    invoke-direct {v1, p0, p2, p2}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$4;-><init>(Lcom/google/android/apps/unveil/history/SearchHistoryEngine;Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;)V

    .line 287
    .local v1, responseHandler:Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->getMomentUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 288
    .local v2, url:Ljava/lang/String;
    const-string v0, "_method=put&isSearchable=false"

    .line 289
    .local v0, requestBody:Ljava/lang/String;
    sget-object v3, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v4, "Sending user submission to %s"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v2, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    sget-object v3, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v4, "Submission body: %s"

    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "_method=put&isSearchable=false"

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    iget-object v3, p0, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->xsrfTokenManager:Lcom/google/android/apps/unveil/history/XsrfTokenManager;

    const-string v4, "_method=put&isSearchable=false"

    invoke-direct {p0, v2, v4}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->newPost(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/google/android/apps/unveil/history/XsrfTokenManager;->executeSideEffectRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;)V

    .line 292
    return-void
.end method
