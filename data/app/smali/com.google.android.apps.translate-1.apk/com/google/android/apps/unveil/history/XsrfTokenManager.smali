.class public Lcom/google/android/apps/unveil/history/XsrfTokenManager;
.super Ljava/lang/Object;
.source "XsrfTokenManager.java"


# static fields
.field static final GOGGLES_TOKEN_COOKIE_NAME:Ljava/lang/String; = "gogglestok"

.field static final GOGGLES_TOKEN_HEADER_NAME:Ljava/lang/String; = "X-Goggles-Token"

.field static final TOKEN_EXPIRATION_TIME_MS:J = 0x493e0L

.field static final TOKEN_REFRESH_PATH:Ljava/lang/String; = "/goggles/a/token"

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private final clock:Lcom/google/android/apps/unveil/env/Clock;

.field private final connector:Lcom/google/android/apps/unveil/network/AbstractConnector;

.field expiresAt:J

.field gogglesToken:Ljava/lang/String;

.field private final refreshUrl:Ljava/lang/String;

.field private final requestFactory:Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/history/XsrfTokenManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;Lcom/google/android/apps/unveil/env/Clock;Lcom/google/android/apps/unveil/network/AbstractConnector;Ljava/net/URL;)V
    .registers 7
    .parameter "requestFactory"
    .parameter "clock"
    .parameter "connector"
    .parameter "frontendUrl"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/android/apps/unveil/history/XsrfTokenManager;->requestFactory:Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;

    .line 49
    iput-object p2, p0, Lcom/google/android/apps/unveil/history/XsrfTokenManager;->clock:Lcom/google/android/apps/unveil/env/Clock;

    .line 50
    iput-object p3, p0, Lcom/google/android/apps/unveil/history/XsrfTokenManager;->connector:Lcom/google/android/apps/unveil/network/AbstractConnector;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/goggles/a/token"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/history/XsrfTokenManager;->refreshUrl:Ljava/lang/String;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/unveil/history/XsrfTokenManager;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/unveil/history/XsrfTokenManager;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;)V

    return-void
.end method

.method private execute(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;)V
    .registers 5
    .parameter "request"
    .parameter "responseHandler"

    .prologue
    .line 68
    const-string v0, "X-Goggles-Token"

    iget-object v1, p0, Lcom/google/android/apps/unveil/history/XsrfTokenManager;->gogglesToken:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/XsrfTokenManager;->connector:Lcom/google/android/apps/unveil/network/AbstractConnector;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/unveil/network/AbstractConnector;->sendRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;)V

    .line 70
    return-void
.end method

.method private refreshTokenAndExecute(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;)V
    .registers 6
    .parameter "originalRequest"
    .parameter "originalResponseHandler"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/XsrfTokenManager;->connector:Lcom/google/android/apps/unveil/network/AbstractConnector;

    iget-object v1, p0, Lcom/google/android/apps/unveil/history/XsrfTokenManager;->requestFactory:Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;

    iget-object v2, p0, Lcom/google/android/apps/unveil/history/XsrfTokenManager;->refreshUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;->newGetRequest(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/unveil/history/XsrfTokenManager$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/apps/unveil/history/XsrfTokenManager$1;-><init>(Lcom/google/android/apps/unveil/history/XsrfTokenManager;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/network/AbstractConnector;->sendRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;)V

    .line 101
    return-void
.end method


# virtual methods
.method public executeSideEffectRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;)V
    .registers 4
    .parameter "request"
    .parameter "responseHandler"

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/history/XsrfTokenManager;->hasValidToken()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/unveil/history/XsrfTokenManager;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;)V

    .line 84
    :goto_9
    return-void

    .line 82
    :cond_a
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/unveil/history/XsrfTokenManager;->refreshTokenAndExecute(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;)V

    goto :goto_9
.end method

.method public handleGetResponse(Lcom/google/android/apps/unveil/network/fetch/FetchResponse;)V
    .registers 7
    .parameter "response"

    .prologue
    .line 55
    const-string v1, "gogglestok"

    invoke-virtual {p1, v1}, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, newToken:Ljava/lang/String;
    if-eqz v0, :cond_16

    .line 57
    iput-object v0, p0, Lcom/google/android/apps/unveil/history/XsrfTokenManager;->gogglesToken:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Lcom/google/android/apps/unveil/history/XsrfTokenManager;->clock:Lcom/google/android/apps/unveil/env/Clock;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/env/Clock;->now()J

    move-result-wide v1

    const-wide/32 v3, 0x493e0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/apps/unveil/history/XsrfTokenManager;->expiresAt:J

    .line 60
    :cond_16
    return-void
.end method

.method hasValidToken()Z
    .registers 5

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/XsrfTokenManager;->gogglesToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/apps/unveil/history/XsrfTokenManager;->clock:Lcom/google/android/apps/unveil/env/Clock;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/Clock;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/apps/unveil/history/XsrfTokenManager;->expiresAt:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public invalidateToken()V
    .registers 3

    .prologue
    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/history/XsrfTokenManager;->gogglesToken:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/XsrfTokenManager;->clock:Lcom/google/android/apps/unveil/env/Clock;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/Clock;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/unveil/history/XsrfTokenManager;->expiresAt:J

    .line 106
    return-void
.end method
