.class public Lcom/google/android/apps/unveil/network/ContinuousConnector;
.super Ljava/lang/Object;
.source "ContinuousConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/network/ContinuousConnector$PullingRunnable;,
        Lcom/google/android/apps/unveil/network/ContinuousConnector$PushRunnable;,
        Lcom/google/android/apps/unveil/network/ContinuousConnector$RequestRunnable;,
        Lcom/google/android/apps/unveil/network/ContinuousConnector$Network;,
        Lcom/google/android/apps/unveil/network/ContinuousConnector$PushLogger;
    }
.end annotation


# static fields
.field private static final REQUEST_URL_TEMPLATE:Ljava/lang/String; = "/goggles/a/%s?cssid=%s"

.field static final SIMULTANEOUS_PULLS:I = 0x2

.field private static final USE_HTTP_URL_CONNECTION:Z

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private final contentTransferrer:Lcom/google/android/apps/unveil/network/utils/ResponseContentTransferrer;

.field private final host:Lorg/apache/http/HttpHost;

.field private final httpRequestFactory:Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;

.field private isDisconnected:Z

.field private final network:Lcom/google/android/apps/unveil/network/ContinuousConnector$Network;

.field private final pullRequestEntity:[B

.field private final pullResponseHandlerFactory:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler$Factory",
            "<",
            "Lcom/google/goggles/GogglesProtos$GogglesResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final pullRunnables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/network/ContinuousConnector$PullingRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private pulling:Z

.field private final pushLogger:Lcom/google/android/apps/unveil/network/ContinuousConnector$PushLogger;

.field private pushOutstanding:Z

.field private final requestUrl:Ljava/lang/String;

.field private final threadPool:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/network/ContinuousConnector;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method constructor <init>(Lcom/google/android/apps/unveil/network/ContinuousConnector$Network;Lorg/apache/http/HttpHost;Ljava/lang/String;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler$Factory;[BLcom/google/android/apps/unveil/network/ContinuousConnector$PushLogger;Ljava/util/concurrent/Executor;Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;Ljava/lang/String;)V
    .registers 12
    .parameter "network"
    .parameter "host"
    .parameter "sessionId"
    .parameter
    .parameter "pullRequestEntity"
    .parameter "pushLogger"
    .parameter "threadPool"
    .parameter "httpRequestFactory"
    .parameter "requestUrl"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/unveil/network/ContinuousConnector$Network;",
            "Lorg/apache/http/HttpHost;",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler$Factory",
            "<",
            "Lcom/google/goggles/GogglesProtos$GogglesResponse;",
            ">;[B",
            "Lcom/google/android/apps/unveil/network/ContinuousConnector$PushLogger;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 106
    .local p4, pullResponseHandlerFactory:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler$Factory;,"Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler$Factory<Lcom/google/goggles/GogglesProtos$GogglesResponse;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/google/android/apps/unveil/network/utils/ResponseContentTransferrer;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/network/utils/ResponseContentTransferrer;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector;->contentTransferrer:Lcom/google/android/apps/unveil/network/utils/ResponseContentTransferrer;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector;->pushOutstanding:Z

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector;->pullRunnables:Ljava/util/List;

    .line 107
    iput-object p5, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector;->pullRequestEntity:[B

    .line 108
    iput-object p4, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector;->pullResponseHandlerFactory:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler$Factory;

    .line 109
    iput-object p2, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector;->host:Lorg/apache/http/HttpHost;

    .line 110
    iput-object p1, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector;->network:Lcom/google/android/apps/unveil/network/ContinuousConnector$Network;

    .line 111
    iput-object p6, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector;->pushLogger:Lcom/google/android/apps/unveil/network/ContinuousConnector$PushLogger;

    .line 112
    iput-object p7, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector;->threadPool:Ljava/util/concurrent/Executor;

    .line 113
    iput-object p8, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector;->httpRequestFactory:Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;

    .line 114
    iput-object p9, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector;->requestUrl:Ljava/lang/String;

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/unveil/network/ContinuousConnector;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector;->requestUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/unveil/network/ContinuousConnector;)Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector;->httpRequestFactory:Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/unveil/network/ContinuousConnector;)[B
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector;->pullRequestEntity:[B

    return-object v0
.end method

.method static synthetic access$1100()Lcom/google/android/apps/unveil/env/UnveilLogger;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lcom/google/android/apps/unveil/network/ContinuousConnector;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/unveil/network/ContinuousConnector;)Lorg/apache/http/HttpHost;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector;->host:Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/unveil/network/ContinuousConnector;)Lcom/google/android/apps/unveil/network/ContinuousConnector$Network;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector;->network:Lcom/google/android/apps/unveil/network/ContinuousConnector$Network;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/unveil/network/ContinuousConnector;)Lcom/google/android/apps/unveil/network/utils/ResponseContentTransferrer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector;->contentTransferrer:Lcom/google/android/apps/unveil/network/utils/ResponseContentTransferrer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/unveil/network/ContinuousConnector;)Ljava/util/concurrent/Executor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector;->threadPool:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/unveil/network/ContinuousConnector;)Lcom/google/android/apps/unveil/network/ContinuousConnector$PushLogger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector;->pushLogger:Lcom/google/android/apps/unveil/network/ContinuousConnector$PushLogger;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/android/apps/unveil/network/ContinuousConnector;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector;->pushOutstanding:Z

    return p1
.end method

.method static synthetic access$900(Lcom/google/android/apps/unveil/network/ContinuousConnector;)Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler$Factory;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector;->pullResponseHandlerFactory:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler$Factory;

    return-object v0
.end method

.method static connectorNetwork(Lcom/google/android/apps/unveil/network/HttpUrlConnectionConnector;)Lcom/google/android/apps/unveil/network/ContinuousConnector$Network;
    .registers 2
    .parameter "connector"

    .prologue
    .line 164
    new-instance v0, Lcom/google/android/apps/unveil/network/ContinuousConnector$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/unveil/network/ContinuousConnector$2;-><init>(Lcom/google/android/apps/unveil/network/HttpUrlConnectionConnector;)V

    return-object v0
.end method

.method private doPush([BLcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;IZ)Z
    .registers 13
    .parameter "requestBytes"
    .parameter
    .parameter "frameNum"
    .parameter "serialized"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler",
            "<",
            "Lcom/google/goggles/GogglesProtos$GogglesResponse;",
            ">;IZ)Z"
        }
    .end annotation

    .prologue
    .local p2, responseHandler:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;,"Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler<Lcom/google/goggles/GogglesProtos$GogglesResponse;>;"
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 203
    monitor-enter p0

    .line 204
    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector;->isDisconnected:Z

    if-eqz v1, :cond_13

    .line 205
    sget-object v1, Lcom/google/android/apps/unveil/network/ContinuousConnector;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Asked to push(), but we are disconnected."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    monitor-exit p0

    .line 216
    :goto_12
    return v0

    .line 208
    :cond_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_2c

    .line 210
    if-eqz p4, :cond_18

    .line 211
    iput-boolean v6, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector;->pushOutstanding:Z

    .line 214
    :cond_18
    iget-object v7, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector;->threadPool:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/apps/unveil/network/ContinuousConnector$PushRunnable;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/unveil/network/ContinuousConnector$PushRunnable;-><init>(Lcom/google/android/apps/unveil/network/ContinuousConnector;[BLcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;IZ)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 215
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/network/ContinuousConnector;->startPullingIfNotPulling()V

    move v0, v6

    .line 216
    goto :goto_12

    .line 208
    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method static httpClientNetwork(Lorg/apache/http/client/HttpClient;)Lcom/google/android/apps/unveil/network/ContinuousConnector$Network;
    .registers 2
    .parameter "client"

    .prologue
    .line 154
    new-instance v0, Lcom/google/android/apps/unveil/network/ContinuousConnector$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/unveil/network/ContinuousConnector$1;-><init>(Lorg/apache/http/client/HttpClient;)V

    return-object v0
.end method

.method private isSerialPushOustanding()Z
    .registers 2

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector;->pushOutstanding:Z

    return v0
.end method

.method public static makeDefault(Lcom/google/android/apps/unveil/UnveilContext;Lorg/apache/http/HttpHost;Ljava/lang/String;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler$Factory;[BLcom/google/android/apps/unveil/network/ContinuousConnector$PushLogger;Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;Ljava/lang/String;)Lcom/google/android/apps/unveil/network/ContinuousConnector;
    .registers 20
    .parameter "unveilContext"
    .parameter "host"
    .parameter "sessionId"
    .parameter
    .parameter "pullRequestEntity"
    .parameter "pushLogger"
    .parameter "httpRequestFactory"
    .parameter "requestUrl"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/unveil/UnveilContext;",
            "Lorg/apache/http/HttpHost;",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler$Factory",
            "<",
            "Lcom/google/goggles/GogglesProtos$GogglesResponse;",
            ">;[B",
            "Lcom/google/android/apps/unveil/network/ContinuousConnector$PushLogger;",
            "Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/apps/unveil/network/ContinuousConnector;"
        }
    .end annotation

    .prologue
    .line 136
    .local p3, pullResponseHandlerFactory:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler$Factory;,"Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler$Factory<Lcom/google/goggles/GogglesProtos$GogglesResponse;>;"
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    .line 137
    .local v8, threadPool:Ljava/util/concurrent/Executor;
    new-instance v11, Lcom/google/android/apps/unveil/network/HttpUrlConnectionConnector;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-interface {p0}, Lcom/google/android/apps/unveil/UnveilContext;->getFrontendUrl()Ljava/net/URL;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/unveil/env/Providers;->staticProvider(Ljava/lang/Object;)Lcom/google/android/apps/unveil/env/Provider;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-direct {v11, v1, v2, v0}, Lcom/google/android/apps/unveil/network/HttpUrlConnectionConnector;-><init>(Landroid/net/ConnectivityManager;Lcom/google/android/apps/unveil/env/Provider;Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;)V

    .line 142
    .local v11, connector:Lcom/google/android/apps/unveil/network/HttpUrlConnectionConnector;
    new-instance v1, Lcom/google/android/apps/unveil/network/ContinuousConnector;

    invoke-interface {p0}, Lcom/google/android/apps/unveil/UnveilContext;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/unveil/network/ContinuousConnector;->httpClientNetwork(Lorg/apache/http/client/HttpClient;)Lcom/google/android/apps/unveil/network/ContinuousConnector$Network;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/google/android/apps/unveil/network/ContinuousConnector;-><init>(Lcom/google/android/apps/unveil/network/ContinuousConnector$Network;Lorg/apache/http/HttpHost;Ljava/lang/String;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler$Factory;[BLcom/google/android/apps/unveil/network/ContinuousConnector$PushLogger;Ljava/util/concurrent/Executor;Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public declared-synchronized canSerialPush()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 376
    monitor-enter p0

    :try_start_2
    iget-boolean v1, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector;->isDisconnected:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_10

    if-eqz v1, :cond_8

    .line 382
    :cond_6
    :goto_6
    monitor-exit p0

    return v0

    .line 379
    :cond_8
    :try_start_8
    invoke-direct {p0}, Lcom/google/android/apps/unveil/network/ContinuousConnector;->isSerialPushOustanding()Z
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_10

    move-result v1

    if-nez v1, :cond_6

    .line 382
    const/4 v0, 0x1

    goto :goto_6

    .line 376
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnect()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 349
    monitor-enter p0

    :try_start_3
    iget-boolean v2, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector;->isDisconnected:Z

    if-eqz v2, :cond_13

    .line 350
    sget-object v1, Lcom/google/android/apps/unveil/network/ContinuousConnector;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Fast return from disconnect() because we\'re already disconnected."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1b

    .line 356
    :goto_11
    monitor-exit p0

    return v0

    .line 353
    :cond_13
    const/4 v0, 0x1

    :try_start_14
    iput-boolean v0, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector;->isDisconnected:Z

    .line 355
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/network/ContinuousConnector;->stop()V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_1b

    move v0, v1

    .line 356
    goto :goto_11

    .line 349
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public outOfBandPush([BLcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;I)Z
    .registers 5
    .parameter "requestBytes"
    .parameter
    .parameter "frameNum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler",
            "<",
            "Lcom/google/goggles/GogglesProtos$GogglesResponse;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 197
    .local p2, responseHandler:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;,"Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler<Lcom/google/goggles/GogglesProtos$GogglesResponse;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/apps/unveil/network/ContinuousConnector;->doPush([BLcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;IZ)Z

    move-result v0

    return v0
.end method

.method public serialPush([BLcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;I)Z
    .registers 5
    .parameter "requestBytes"
    .parameter
    .parameter "frameNum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler",
            "<",
            "Lcom/google/goggles/GogglesProtos$GogglesResponse;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 192
    .local p2, responseHandler:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;,"Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler<Lcom/google/goggles/GogglesProtos$GogglesResponse;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/apps/unveil/network/ContinuousConnector;->doPush([BLcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;IZ)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized startPullingIfNotPulling()V
    .registers 4

    .prologue
    .line 333
    monitor-enter p0

    :try_start_1
    iget-boolean v2, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector;->pulling:Z

    if-nez v2, :cond_23

    iget-boolean v2, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector;->isDisconnected:Z

    if-nez v2, :cond_23

    .line 334
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector;->pulling:Z

    .line 336
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    const/4 v2, 0x2

    if-ge v0, v2, :cond_23

    .line 337
    new-instance v1, Lcom/google/android/apps/unveil/network/ContinuousConnector$PullingRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/apps/unveil/network/ContinuousConnector$PullingRunnable;-><init>(Lcom/google/android/apps/unveil/network/ContinuousConnector;Lcom/google/android/apps/unveil/network/ContinuousConnector$1;)V

    .line 338
    .local v1, p:Lcom/google/android/apps/unveil/network/ContinuousConnector$PullingRunnable;
    iget-object v2, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector;->pullRunnables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    iget-object v2, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector;->threadPool:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_25

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 342
    .end local v0           #i:I
    .end local v1           #p:Lcom/google/android/apps/unveil/network/ContinuousConnector$PullingRunnable;
    :cond_23
    monitor-exit p0

    return-void

    .line 333
    :catchall_25
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized stop()V
    .registers 6

    .prologue
    .line 364
    monitor-enter p0

    :try_start_1
    sget-object v2, Lcom/google/android/apps/unveil/network/ContinuousConnector;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "stop()"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    iget-boolean v2, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector;->pulling:Z

    if-eqz v2, :cond_30

    .line 366
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector;->pulling:Z

    .line 368
    iget-object v2, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector;->pullRunnables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/network/ContinuousConnector$PullingRunnable;

    .line 369
    .local v1, pullRunnable:Lcom/google/android/apps/unveil/network/ContinuousConnector$PullingRunnable;
    invoke-virtual {v1}, Lcom/google/android/apps/unveil/network/ContinuousConnector$PullingRunnable;->stop()V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_28

    goto :goto_18

    .line 364
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #pullRunnable:Lcom/google/android/apps/unveil/network/ContinuousConnector$PullingRunnable;
    :catchall_28
    move-exception v2

    monitor-exit p0

    throw v2

    .line 371
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2b
    :try_start_2b
    iget-object v2, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector;->pullRunnables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_28

    .line 373
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_30
    monitor-exit p0

    return-void
.end method
