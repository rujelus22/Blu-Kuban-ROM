.class public Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;
.super Ljava/lang/Object;
.source "ContinuousConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$1;,
        Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$ContinuousPullResponseHandlerFactory;,
        Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$TraceResponseHandler;,
        Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$PullResponseHandler;,
        Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$PushResponseHandler;,
        Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$ContinuousResponseHandler;
    }
.end annotation


# static fields
.field public static final NO_STATUS_CODE:I = -0x1

.field private static final REQUEST_URL_TEMPLATE:Ljava/lang/String; = "/goggles/a/nonstop_goggles_proto?cssid=%s"

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private final application:Lcom/google/android/apps/unveil/UnveilContext;

.field private final disconnectLock:Ljava/lang/Object;

.field private disconnected:Z

.field private final fetcher:Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;

.field private final mainThread:Ljava/util/concurrent/Executor;

.field private final pullListener:Lcom/google/android/apps/unveil/protocol/QueryListener;

.field private final queryConnector:Lcom/google/android/apps/unveil/network/ContinuousConnector;

.field private final requestUrl:Ljava/lang/String;

.field private final session:Lcom/google/android/apps/unveil/protocol/Session;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/unveil/UnveilContext;Lcom/google/android/apps/unveil/protocol/QueryListener;Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;Lcom/google/android/apps/unveil/protocol/Session;Lcom/google/android/apps/unveil/network/ContinuousConnector$PushLogger;Ljava/util/concurrent/Executor;Lcom/google/android/apps/unveil/network/ContinuousNetworkParams;)V
    .registers 16
    .parameter "application"
    .parameter "pullListener"
    .parameter "fetcher"
    .parameter "session"
    .parameter "pushLogger"
    .parameter "responseExecutor"
    .parameter "params"

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->disconnectLock:Ljava/lang/Object;

    .line 187
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->application:Lcom/google/android/apps/unveil/UnveilContext;

    .line 188
    iput-object p3, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->fetcher:Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;

    .line 189
    iput-object p4, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->session:Lcom/google/android/apps/unveil/protocol/Session;

    .line 190
    iput-object p2, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->pullListener:Lcom/google/android/apps/unveil/protocol/QueryListener;

    .line 191
    iput-object p6, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->mainThread:Ljava/util/concurrent/Executor;

    .line 193
    const-string v0, "/goggles/a/nonstop_goggles_proto?cssid=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p4}, Lcom/google/android/apps/unveil/protocol/Session;->getSessionId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->requestUrl:Ljava/lang/String;

    .line 194
    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-interface {p1}, Lcom/google/android/apps/unveil/UnveilContext;->getFrontendUrl()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;)V

    .line 195
    .local v1, host:Lorg/apache/http/HttpHost;
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->getSessionId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$ContinuousPullResponseHandlerFactory;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$ContinuousPullResponseHandlerFactory;-><init>(Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$1;)V

    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->createPullRequest()[B

    move-result-object v4

    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->createRequestFactory()Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->requestUrl:Ljava/lang/String;

    move-object v0, p1

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/unveil/network/ContinuousConnector;->makeDefault(Lcom/google/android/apps/unveil/UnveilContext;Lorg/apache/http/HttpHost;Ljava/lang/String;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler$Factory;[BLcom/google/android/apps/unveil/network/ContinuousConnector$PushLogger;Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;Ljava/lang/String;)Lcom/google/android/apps/unveil/network/ContinuousConnector;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->queryConnector:Lcom/google/android/apps/unveil/network/ContinuousConnector;

    .line 198
    return-void
.end method

.method static synthetic access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->disconnectLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->disconnected:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;)Lcom/google/android/apps/unveil/protocol/QueryListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->pullListener:Lcom/google/android/apps/unveil/protocol/QueryListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;)Lcom/google/android/apps/unveil/UnveilContext;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->application:Lcom/google/android/apps/unveil/UnveilContext;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;)Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->rerouteToMainThread(Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;)Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;

    move-result-object v0

    return-object v0
.end method

.method private createPullRequest()[B
    .registers 3

    .prologue
    .line 214
    new-instance v0, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->setWantResults(Z)Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->session:Lcom/google/android/apps/unveil/protocol/Session;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->setSession(Lcom/google/android/apps/unveil/protocol/Session;)Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->application:Lcom/google/android/apps/unveil/UnveilContext;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->buildGogglesRequestBuilder(Lcom/google/android/apps/unveil/UnveilContext;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->build()Lcom/google/goggles/GogglesProtos$GogglesRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private createRequestFactory()Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;
    .registers 4

    .prologue
    .line 201
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 202
    .local v1, headers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$HeaderProvider;>;"
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->fetcher:Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;->getHeaderProvider()Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$HeaderProvider;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->application:Lcom/google/android/apps/unveil/UnveilContext;

    invoke-interface {v2}, Lcom/google/android/apps/unveil/UnveilContext;->getAuthState()Lcom/google/android/apps/unveil/auth/AuthState;

    move-result-object v0

    .line 204
    .local v0, authState:Lcom/google/android/apps/unveil/auth/AuthState;
    sget-object v2, Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;->SID:Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/unveil/auth/AuthState;->isAuthenticated(Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 205
    sget-object v2, Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;->SID:Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/unveil/auth/AuthState;->getAuthToken(Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;->newStaticAuthenticationProvider(Ljava/lang/String;)Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$HeaderProvider;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_2a
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->application:Lcom/google/android/apps/unveil/UnveilContext;

    invoke-static {v2}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;->newInstallationIdProvider(Lcom/google/android/apps/unveil/UnveilContext;)Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$HeaderProvider;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->application:Lcom/google/android/apps/unveil/UnveilContext;

    invoke-static {v2, v1}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;->newAnonymousRequestFactory(Lcom/google/android/apps/unveil/UnveilContext;Ljava/util/List;)Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;

    move-result-object v2

    return-object v2
.end method

.method private rerouteToMainThread(Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;)Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler",
            "<",
            "Lcom/google/goggles/GogglesProtos$GogglesResponse;",
            ">;)",
            "Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler",
            "<",
            "Lcom/google/goggles/GogglesProtos$GogglesResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, inner:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;,"Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler<Lcom/google/goggles/GogglesProtos$GogglesResponse;>;"
    new-instance v0, Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler;

    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->mainThread:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p1}, Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;)V

    return-object v0
.end method


# virtual methods
.method public canPush()Z
    .registers 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->queryConnector:Lcom/google/android/apps/unveil/network/ContinuousConnector;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/network/ContinuousConnector;->canSerialPush()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized disconnect()V
    .registers 5

    .prologue
    .line 275
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->disconnectLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_24

    .line 276
    :try_start_4
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->disconnected:Z

    if-eqz v0, :cond_12

    .line 277
    sget-object v0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "disconnect() called multiple times!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    :cond_12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->disconnected:Z

    .line 281
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_21

    .line 285
    :try_start_16
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->queryConnector:Lcom/google/android/apps/unveil/network/ContinuousConnector;

    if-eqz v0, :cond_1f

    .line 286
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->queryConnector:Lcom/google/android/apps/unveil/network/ContinuousConnector;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/network/ContinuousConnector;->disconnect()Z
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_24

    .line 288
    :cond_1f
    monitor-exit p0

    return-void

    .line 281
    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    :try_start_23
    throw v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_24

    .line 275
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConnector()Lcom/google/android/apps/unveil/network/ContinuousConnector;
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->queryConnector:Lcom/google/android/apps/unveil/network/ContinuousConnector;

    return-object v0
.end method

.method public getSession()Lcom/google/android/apps/unveil/protocol/Session;
    .registers 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->session:Lcom/google/android/apps/unveil/protocol/Session;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->session:Lcom/google/android/apps/unveil/protocol/Session;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/protocol/Session;->getSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized maybeSendTraceData(Lcom/google/android/apps/unveil/protocol/QueryListener;Lcom/google/goggles/TracingProtos$TraceRequest;)Z
    .registers 11
    .parameter "traceRequestListener"
    .parameter "traceRequest"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 243
    monitor-enter p0

    :try_start_3
    iget-boolean v4, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->disconnected:Z

    if-eqz v4, :cond_11

    .line 244
    sget-object v4, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v5, "maybeSendTraceData() called after disconnect()!"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    :cond_11
    new-instance v1, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$TraceResponseHandler;

    const/4 v4, 0x0

    invoke-direct {v1, p0, p1, v4}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$TraceResponseHandler;-><init>(Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;Lcom/google/android/apps/unveil/protocol/QueryListener;Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$1;)V

    .line 250
    .local v1, traceResponseHandler:Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$TraceResponseHandler;
    invoke-virtual {p2}, Lcom/google/goggles/TracingProtos$TraceRequest;->toByteArray()[B

    move-result-object v0

    .line 252
    .local v0, builtRequest:[B
    array-length v4, v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_4c

    if-nez v4, :cond_20

    .line 262
    :goto_1e
    monitor-exit p0

    return v2

    .line 256
    :cond_20
    :try_start_20
    sget-object v2, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v4, "Logging %d trace requests builtRequest size %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p2}, Lcom/google/goggles/TracingProtos$TraceRequest;->getTraceActionCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    array-length v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->application:Lcom/google/android/apps/unveil/UnveilContext;

    invoke-interface {v2}, Lcom/google/android/apps/unveil/UnveilContext;->getConnector()Lcom/google/android/apps/unveil/network/AbstractConnector;

    move-result-object v2

    const-class v4, Lcom/google/goggles/TracingProtos$TraceResponse;

    const-string v5, ""

    invoke-virtual {v2, p2, v4, v1, v5}, Lcom/google/android/apps/unveil/network/AbstractConnector;->sendRequest(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Class;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_20 .. :try_end_4a} :catchall_4c

    move v2, v3

    .line 262
    goto :goto_1e

    .line 243
    .end local v0           #builtRequest:[B
    .end local v1           #traceResponseHandler:Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$TraceResponseHandler;
    :catchall_4c
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public newPushHandler(Lcom/google/android/apps/unveil/protocol/QueryListener;)Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;
    .registers 4
    .parameter "queryListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/unveil/protocol/QueryListener;",
            ")",
            "Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler",
            "<",
            "Lcom/google/goggles/GogglesProtos$GogglesResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    new-instance v0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$PushResponseHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$PushResponseHandler;-><init>(Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;Lcom/google/android/apps/unveil/protocol/QueryListener;Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$1;)V

    invoke-direct {p0, v0}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->rerouteToMainThread(Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;)Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized pause()V
    .registers 4

    .prologue
    .line 266
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->disconnected:Z

    if-eqz v0, :cond_f

    .line 267
    sget-object v0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "pause() called after disconnect()!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    :cond_f
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->queryConnector:Lcom/google/android/apps/unveil/network/ContinuousConnector;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/network/ContinuousConnector;->stop()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 272
    monitor-exit p0

    return-void

    .line 266
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method
