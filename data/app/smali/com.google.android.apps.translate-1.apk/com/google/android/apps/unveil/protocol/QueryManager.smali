.class public Lcom/google/android/apps/unveil/protocol/QueryManager;
.super Ljava/lang/Object;
.source "QueryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/protocol/QueryManager$6;,
        Lcom/google/android/apps/unveil/protocol/QueryManager$GogglesResponsesListener;
    }
.end annotation


# static fields
.field public static final NO_STATUS_CODE:I = -0x1

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private final connector:Lcom/google/android/apps/unveil/network/AbstractConnector;

.field private final gogglesResponsesListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/protocol/QueryManager$GogglesResponsesListener;",
            ">;"
        }
    .end annotation
.end field

.field private final params:Lcom/google/android/apps/unveil/protocol/QueryManagerParams;

.field private final searchHistorySettingProvider:Lcom/google/android/apps/unveil/env/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/unveil/env/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

.field private final viewportProvider:Lcom/google/android/apps/unveil/env/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/unveil/env/Provider",
            "<",
            "Lcom/google/android/apps/unveil/env/Viewport;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/protocol/QueryManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/unveil/UnveilContext;Lcom/google/android/apps/unveil/protocol/QueryManagerParams;Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;)V
    .registers 11
    .parameter "application"
    .parameter "params"
    .parameter "tracingCookieFetcher"

    .prologue
    .line 76
    invoke-interface {p1}, Lcom/google/android/apps/unveil/UnveilContext;->getTraceTracker()Lcom/google/android/apps/unveil/protocol/TraceTracker;

    move-result-object v1

    new-instance v0, Lcom/google/android/apps/unveil/protocol/QueryManager$1;

    invoke-direct {v0, p1}, Lcom/google/android/apps/unveil/protocol/QueryManager$1;-><init>(Lcom/google/android/apps/unveil/UnveilContext;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/android/apps/unveil/UnveilContext;->getConnector()Lcom/google/android/apps/unveil/network/AbstractConnector;

    move-result-object v4

    new-instance v5, Lcom/google/android/apps/unveil/protocol/QueryManager$2;

    invoke-direct {v5, p1}, Lcom/google/android/apps/unveil/protocol/QueryManager$2;-><init>(Lcom/google/android/apps/unveil/UnveilContext;)V

    new-instance v6, Lcom/google/android/apps/unveil/protocol/QueryManager$3;

    invoke-direct {v6, p1}, Lcom/google/android/apps/unveil/protocol/QueryManager$3;-><init>(Lcom/google/android/apps/unveil/UnveilContext;)V

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/unveil/protocol/QueryManager;-><init>(Lcom/google/android/apps/unveil/protocol/TraceTracker;Lcom/google/android/apps/unveil/protocol/QueryManagerParams;Ljava/util/List;Lcom/google/android/apps/unveil/network/AbstractConnector;Lcom/google/android/apps/unveil/env/Provider;Lcom/google/android/apps/unveil/env/Provider;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/unveil/protocol/TraceTracker;Lcom/google/android/apps/unveil/protocol/QueryManagerParams;Ljava/util/List;Lcom/google/android/apps/unveil/network/AbstractConnector;Lcom/google/android/apps/unveil/env/Provider;Lcom/google/android/apps/unveil/env/Provider;)V
    .registers 7
    .parameter "traceTracker"
    .parameter "params"
    .parameter
    .parameter "connector"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/unveil/protocol/TraceTracker;",
            "Lcom/google/android/apps/unveil/protocol/QueryManagerParams;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/protocol/QueryManager$GogglesResponsesListener;",
            ">;",
            "Lcom/google/android/apps/unveil/network/AbstractConnector;",
            "Lcom/google/android/apps/unveil/env/Provider",
            "<",
            "Lcom/google/android/apps/unveil/env/Viewport;",
            ">;",
            "Lcom/google/android/apps/unveil/env/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p3, gogglesResponsesListeners:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/protocol/QueryManager$GogglesResponsesListener;>;"
    .local p5, viewportProvider:Lcom/google/android/apps/unveil/env/Provider;,"Lcom/google/android/apps/unveil/env/Provider<Lcom/google/android/apps/unveil/env/Viewport;>;"
    .local p6, searchHistorySettingProvider:Lcom/google/android/apps/unveil/env/Provider;,"Lcom/google/android/apps/unveil/env/Provider<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/QueryManager;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    .line 61
    iput-object p2, p0, Lcom/google/android/apps/unveil/protocol/QueryManager;->params:Lcom/google/android/apps/unveil/protocol/QueryManagerParams;

    .line 62
    iput-object p3, p0, Lcom/google/android/apps/unveil/protocol/QueryManager;->gogglesResponsesListeners:Ljava/util/List;

    .line 63
    iput-object p4, p0, Lcom/google/android/apps/unveil/protocol/QueryManager;->connector:Lcom/google/android/apps/unveil/network/AbstractConnector;

    .line 64
    iput-object p5, p0, Lcom/google/android/apps/unveil/protocol/QueryManager;->viewportProvider:Lcom/google/android/apps/unveil/env/Provider;

    .line 65
    iput-object p6, p0, Lcom/google/android/apps/unveil/protocol/QueryManager;->searchHistorySettingProvider:Lcom/google/android/apps/unveil/env/Provider;

    .line 66
    return-void
.end method

.method static synthetic access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/android/apps/unveil/protocol/QueryManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/unveil/protocol/QueryManager;)Lcom/google/android/apps/unveil/protocol/TraceTracker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryManager;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/unveil/protocol/QueryManager;Lcom/google/android/apps/unveil/protocol/QueryBuilder;Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;Lcom/google/android/apps/unveil/protocol/QueryListener;IZ)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p5}, Lcom/google/android/apps/unveil/protocol/QueryManager;->handleNetworkError(Lcom/google/android/apps/unveil/protocol/QueryBuilder;Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;Lcom/google/android/apps/unveil/protocol/QueryListener;IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/unveil/protocol/QueryManager;Lcom/google/android/apps/unveil/protocol/QueryBuilder;Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;Lcom/google/android/apps/unveil/protocol/QueryListener;ZI)I
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p5}, Lcom/google/android/apps/unveil/protocol/QueryManager;->sendQueryRecursive(Lcom/google/android/apps/unveil/protocol/QueryBuilder;Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;Lcom/google/android/apps/unveil/protocol/QueryListener;ZI)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/unveil/protocol/QueryManager;Lcom/google/android/apps/unveil/protocol/QueryBuilder;Lcom/google/android/apps/unveil/protocol/QueryListener;I)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/unveil/protocol/QueryManager;->handleReplayNetworkError(Lcom/google/android/apps/unveil/protocol/QueryBuilder;Lcom/google/android/apps/unveil/protocol/QueryListener;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/apps/unveil/protocol/QueryManager;)Lcom/google/android/apps/unveil/env/Provider;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryManager;->viewportProvider:Lcom/google/android/apps/unveil/env/Provider;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/unveil/protocol/QueryManager;Lcom/google/android/apps/unveil/protocol/QueryBuilder;Lcom/google/android/apps/unveil/protocol/QueryListener;I)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/unveil/protocol/QueryManager;->replayQueryRecursive(Lcom/google/android/apps/unveil/protocol/QueryBuilder;Lcom/google/android/apps/unveil/protocol/QueryListener;I)V

    return-void
.end method

.method private attachGogglesConfig(Lcom/google/android/apps/unveil/protocol/QueryBuilder;Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 7
    .parameter "query"
    .parameter "gogglesRequest"

    .prologue
    .line 131
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryManager;->params:Lcom/google/android/apps/unveil/protocol/QueryManagerParams;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/protocol/QueryManagerParams;->toGogglesConfig()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    move-result-object v0

    .line 134
    .local v0, gogglesConfig:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->getQueryType()Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->LOCAL_BARCODE:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->getSource()Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    move-result-object v2

    sget-object v3, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->PUGGLE:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    if-ne v2, v3, :cond_3d

    :cond_1a
    const/4 v1, 0x0

    .line 136
    .local v1, saveToHistory:Z
    :goto_1b
    invoke-virtual {v0, v1}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->setCanStoreToSearchHistory(Z)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    .line 138
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->getSource()Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    move-result-object v2

    sget-object v3, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->PUGGLE:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    if-ne v2, v3, :cond_2b

    .line 139
    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->setMaxResults(I)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    .line 141
    :cond_2b
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->getCanLogImage()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 142
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->setCanLogImage(Z)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    .line 144
    :cond_35
    invoke-virtual {v0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->build()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->setGogglesConfig(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    .line 145
    return-object p2

    .line 134
    .end local v1           #saveToHistory:Z
    :cond_3d
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryManager;->searchHistorySettingProvider:Lcom/google/android/apps/unveil/env/Provider;

    invoke-interface {v2}, Lcom/google/android/apps/unveil/env/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1b
.end method

.method private handleNetworkError(Lcom/google/android/apps/unveil/protocol/QueryBuilder;Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;Lcom/google/android/apps/unveil/protocol/QueryListener;IZ)V
    .registers 12
    .parameter "query"
    .parameter "queryRequestBuilder"
    .parameter "listener"
    .parameter "retryCount"
    .parameter "ignoreResults"

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 326
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryManager;->connector:Lcom/google/android/apps/unveil/network/AbstractConnector;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/network/AbstractConnector;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 327
    sget-object v0, Lcom/google/android/apps/unveil/protocol/QueryManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Network error."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    if-lez p4, :cond_52

    .line 339
    sget-object v0, Lcom/google/android/apps/unveil/protocol/QueryManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Retrying query. Retries remaining: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    sget-object v0, Lcom/google/android/apps/unveil/protocol/QueryManager$6;->$SwitchMap$com$google$android$apps$unveil$protocol$QueryResponseFactory$QueryType:[I

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->getQueryType()Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_56

    .line 345
    add-int/lit8 v5, p4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/unveil/protocol/QueryManager;->sendQueryRecursive(Lcom/google/android/apps/unveil/protocol/QueryBuilder;Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;Lcom/google/android/apps/unveil/protocol/QueryListener;ZI)I

    .line 351
    :goto_3e
    return-void

    .line 334
    :cond_3f
    sget-object v0, Lcom/google/android/apps/unveil/protocol/QueryManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Network is unavailable, no need to reset the session or automatically retry."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    invoke-virtual {p3, v3}, Lcom/google/android/apps/unveil/protocol/QueryListener;->onNetworkError(I)V

    goto :goto_3e

    .line 342
    :pswitch_4c
    add-int/lit8 v0, p4, -0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/google/android/apps/unveil/protocol/QueryManager;->replayQueryRecursive(Lcom/google/android/apps/unveil/protocol/QueryBuilder;Lcom/google/android/apps/unveil/protocol/QueryListener;I)V

    goto :goto_3e

    .line 349
    :cond_52
    invoke-virtual {p3, v3}, Lcom/google/android/apps/unveil/protocol/QueryListener;->onNetworkError(I)V

    goto :goto_3e

    .line 340
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_4c
    .end packed-switch
.end method

.method private handleReplayNetworkError(Lcom/google/android/apps/unveil/protocol/QueryBuilder;Lcom/google/android/apps/unveil/protocol/QueryListener;I)V
    .registers 10
    .parameter "query"
    .parameter "listener"
    .parameter "retryCount"

    .prologue
    .line 355
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/unveil/protocol/QueryManager;->handleNetworkError(Lcom/google/android/apps/unveil/protocol/QueryBuilder;Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;Lcom/google/android/apps/unveil/protocol/QueryListener;IZ)V

    .line 357
    return-void
.end method

.method private replayQueryRecursive(Lcom/google/android/apps/unveil/protocol/QueryBuilder;Lcom/google/android/apps/unveil/protocol/QueryListener;I)V
    .registers 11
    .parameter "query"
    .parameter "listener"
    .parameter "retryCount"

    .prologue
    .line 267
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/QueryManager;->params:Lcom/google/android/apps/unveil/protocol/QueryManagerParams;

    invoke-virtual {v3}, Lcom/google/android/apps/unveil/protocol/QueryManagerParams;->toGogglesConfig()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    move-result-object v0

    .line 268
    .local v0, config:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->setCanStoreToSearchHistory(Z)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    .line 269
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->buildReplayRequestBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    move-result-object v1

    .line 270
    .local v1, replayRequestBuilder:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;
    invoke-virtual {v1, v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->setGogglesConfig(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    .line 271
    new-instance v2, Lcom/google/android/apps/unveil/protocol/QueryManager$5;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/android/apps/unveil/protocol/QueryManager$5;-><init>(Lcom/google/android/apps/unveil/protocol/QueryManager;Lcom/google/android/apps/unveil/protocol/QueryBuilder;Lcom/google/android/apps/unveil/protocol/QueryListener;I)V

    .line 305
    .local v2, responseHandler:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;,"Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler<Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;>;"
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/QueryManager;->connector:Lcom/google/android/apps/unveil/network/AbstractConnector;

    invoke-virtual {v1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->build()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    move-result-object v4

    const-class v5, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    iget-object v6, p0, Lcom/google/android/apps/unveil/protocol/QueryManager;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    invoke-virtual {v6}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->getTracingCookieForCurrentAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v2, v6}, Lcom/google/android/apps/unveil/network/AbstractConnector;->sendRequest(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Class;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method private sendQueryRecursive(Lcom/google/android/apps/unveil/protocol/QueryBuilder;Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;Lcom/google/android/apps/unveil/protocol/QueryListener;ZI)I
    .registers 21
    .parameter "query"
    .parameter "queryRequestBuilder"
    .parameter "listener"
    .parameter "ignoreResults"
    .parameter "retryCount"

    .prologue
    .line 160
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryManager;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->getCurrentActionNumber()I

    move-result v2

    .line 162
    .local v2, currentActionNumber:I
    invoke-virtual/range {p2 .. p2}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->build()Lcom/google/goggles/GogglesProtos$GogglesRequest;

    move-result-object v5

    .line 163
    .local v5, gogglesRequest:Lcom/google/protobuf/GeneratedMessageLite;
    sget-object v1, Lcom/google/android/apps/unveil/env/Clock;->SYSTEM_CLOCK:Lcom/google/android/apps/unveil/env/Clock;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/env/Clock;->now()J

    move-result-wide v6

    .line 164
    .local v6, requestSentTimestamp:J
    new-instance v0, Lcom/google/android/apps/unveil/protocol/QueryManager$4;

    move-object v1, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p1

    move-object/from16 v8, p2

    move/from16 v9, p5

    move/from16 v10, p4

    invoke-direct/range {v0 .. v10}, Lcom/google/android/apps/unveil/protocol/QueryManager$4;-><init>(Lcom/google/android/apps/unveil/protocol/QueryManager;ILcom/google/android/apps/unveil/protocol/QueryListener;Lcom/google/android/apps/unveil/protocol/QueryBuilder;Lcom/google/protobuf/GeneratedMessageLite;JLcom/google/goggles/GogglesProtos$GogglesRequest$Builder;IZ)V

    .line 219
    .local v0, responseHandler:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;,"Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler<Lcom/google/goggles/GogglesProtos$GogglesResponse;>;"
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryManager;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->getTracingCookieForCurrentAction()Ljava/lang/String;

    move-result-object v13

    .line 221
    .local v13, tracingCookie:Ljava/lang/String;
    if-eqz p4, :cond_52

    .line 222
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryManager;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    sget-object v3, Lcom/google/goggles/TracingProtos$PointVariable$Type;->HISTORY:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->addPoint(Lcom/google/goggles/TracingProtos$PointVariable$Type;)V

    .line 227
    :goto_2f
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->getSource()Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    move-result-object v14

    .line 228
    .local v14, source:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;
    sget-object v1, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->FELIX_TEXT:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    if-eq v14, v1, :cond_3b

    sget-object v1, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->TRANSLATE:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    if-ne v14, v1, :cond_5a

    .line 231
    :cond_3b
    iget-object v8, p0, Lcom/google/android/apps/unveil/protocol/QueryManager;->connector:Lcom/google/android/apps/unveil/network/AbstractConnector;

    const-class v10, Lcom/google/goggles/GogglesProtos$GogglesResponse;

    const-string v11, "/goggles/a/single_shot_text_mode"

    move-object v9, v5

    move-object v12, v0

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/apps/unveil/network/AbstractConnector;->sendRequest(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Class;Ljava/lang/String;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;Ljava/lang/String;)V

    .line 238
    :goto_46
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryManager;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    sget-object v3, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->REQUEST_TO_RESPONSE:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->beginInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;)I

    .line 240
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->getSequenceNumber()I

    move-result v1

    return v1

    .line 224
    .end local v14           #source:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;
    :cond_52
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryManager;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    sget-object v3, Lcom/google/goggles/TracingProtos$PointVariable$Type;->PUSH:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->addPoint(Lcom/google/goggles/TracingProtos$PointVariable$Type;)V

    goto :goto_2f

    .line 235
    .restart local v14       #source:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;
    :cond_5a
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryManager;->connector:Lcom/google/android/apps/unveil/network/AbstractConnector;

    const-class v3, Lcom/google/goggles/GogglesProtos$GogglesResponse;

    invoke-virtual {v1, v5, v3, v0, v13}, Lcom/google/android/apps/unveil/network/AbstractConnector;->sendRequest(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Class;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;Ljava/lang/String;)V

    goto :goto_46
.end method


# virtual methods
.method protected notifyAllResponsesListeners(Lcom/google/goggles/GogglesProtos$GogglesResponse;)V
    .registers 5
    .parameter "gogglesResponse"

    .prologue
    .line 244
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryManager;->gogglesResponsesListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/protocol/QueryManager$GogglesResponsesListener;

    .line 245
    .local v1, listener:Lcom/google/android/apps/unveil/protocol/QueryManager$GogglesResponsesListener;
    invoke-interface {v1, p1}, Lcom/google/android/apps/unveil/protocol/QueryManager$GogglesResponsesListener;->onGogglesResponse(Lcom/google/goggles/GogglesProtos$GogglesResponse;)V

    goto :goto_6

    .line 247
    .end local v1           #listener:Lcom/google/android/apps/unveil/protocol/QueryManager$GogglesResponsesListener;
    :cond_16
    return-void
.end method

.method public replayQuery(Lcom/google/android/apps/unveil/protocol/QueryBuilder;Lcom/google/android/apps/unveil/protocol/QueryListener;)V
    .registers 4
    .parameter "query"
    .parameter "listener"

    .prologue
    .line 257
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->setAsReplayType()V

    .line 258
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryManager;->params:Lcom/google/android/apps/unveil/protocol/QueryManagerParams;

    iget v0, v0, Lcom/google/android/apps/unveil/protocol/QueryManagerParams;->maxRetries:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/unveil/protocol/QueryManager;->replayQueryRecursive(Lcom/google/android/apps/unveil/protocol/QueryBuilder;Lcom/google/android/apps/unveil/protocol/QueryListener;I)V

    .line 259
    return-void
.end method

.method public sendQuery(Lcom/google/android/apps/unveil/UnveilContext;Lcom/google/android/apps/unveil/protocol/QueryBuilder;Lcom/google/android/apps/unveil/protocol/QueryListener;Z)I
    .registers 6
    .parameter "context"
    .parameter "query"
    .parameter "listener"
    .parameter "ignoreResults"

    .prologue
    .line 126
    invoke-virtual {p2, p1}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->buildGogglesRequestBuilder(Lcom/google/android/apps/unveil/UnveilContext;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    move-result-object v0

    invoke-virtual {p0, p2, v0, p3, p4}, Lcom/google/android/apps/unveil/protocol/QueryManager;->sendQuery(Lcom/google/android/apps/unveil/protocol/QueryBuilder;Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;Lcom/google/android/apps/unveil/protocol/QueryListener;Z)I

    move-result v0

    return v0
.end method

.method public sendQuery(Lcom/google/android/apps/unveil/protocol/QueryBuilder;Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;Lcom/google/android/apps/unveil/protocol/QueryListener;Z)I
    .registers 11
    .parameter "query"
    .parameter "gogglesRequest"
    .parameter "listener"
    .parameter "ignoreResults"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/unveil/protocol/QueryManager;->attachGogglesConfig(Lcom/google/android/apps/unveil/protocol/QueryBuilder;Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryManager;->params:Lcom/google/android/apps/unveil/protocol/QueryManagerParams;

    iget v5, v0, Lcom/google/android/apps/unveil/protocol/QueryManagerParams;->maxRetries:I

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/unveil/protocol/QueryManager;->sendQueryRecursive(Lcom/google/android/apps/unveil/protocol/QueryBuilder;Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;Lcom/google/android/apps/unveil/protocol/QueryListener;ZI)I

    move-result v0

    return v0
.end method
