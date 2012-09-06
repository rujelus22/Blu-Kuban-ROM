.class public Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;
.super Ljava/lang/Object;
.source "TracingCookieFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher$TracingCookieHeaderProvider;
    }
.end annotation


# static fields
.field private static final MAX_COOKIES_PER_REQUEST:I = 0x1e

.field private static final REPLENISH_THRESHOLD_COOKIES:I = 0x9

.field private static final RESPONSE_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private final connector:Lcom/google/android/apps/unveil/network/AbstractConnector;

.field private final cookies:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private final replenishThreshold:I

.field private final request:Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

.field private final responseHandler:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler",
            "<",
            "Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    .line 46
    const-class v0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    sput-object v0, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;->RESPONSE_CLASS:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/unveil/network/AbstractConnector;)V
    .registers 3
    .parameter "abstractConnector"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;->cookies:Ljava/util/Queue;

    .line 58
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;->connector:Lcom/google/android/apps/unveil/network/AbstractConnector;

    .line 59
    const/16 v0, 0x9

    iput v0, p0, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;->replenishThreshold:I

    .line 61
    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;->makeRequest(I)Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;->request:Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

    .line 62
    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;->makeHandler()Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;->responseHandler:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;

    .line 64
    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;->createExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;->executor:Ljava/util/concurrent/ExecutorService;

    .line 65
    return-void
.end method

.method static synthetic access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-object v0
.end method

.method private createExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 9

    .prologue
    const/4 v1, 0x1

    .line 71
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v6, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v7}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    move v2, v1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object v0
.end method

.method private makeHandler()Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler",
            "<",
            "Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher$1;-><init>(Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;)V

    return-object v0
.end method

.method private static makeRequest(I)Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;
    .registers 3
    .parameter "maxCookiesPerRequest"

    .prologue
    .line 88
    invoke-static {}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;->newBuilder()Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;

    move-result-object v0

    .line 89
    .local v0, requestBuilder:Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->setMaxCookies(I)Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;

    .line 90
    invoke-virtual {v0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->build()Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected addAll(Ljava/util/List;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, tracingCookiesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got tracing cookies: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;->cookies:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 117
    return-void
.end method

.method public getFreshCookie()Ljava/lang/String;
    .registers 5

    .prologue
    .line 125
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;->cookies:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 127
    .local v0, cookie:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;->cookies:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    iget v2, p0, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;->replenishThreshold:I

    if-ge v1, v2, :cond_15

    .line 128
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;->replenish()V

    .line 131
    :cond_15
    if-nez v0, :cond_21

    .line 132
    sget-object v1, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Failed to provide a fresh tracing cookie."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    :cond_21
    return-object v0
.end method

.method public getHeaderProvider()Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$HeaderProvider;
    .registers 2

    .prologue
    .line 156
    new-instance v0, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher$TracingCookieHeaderProvider;

    invoke-direct {v0, p0}, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher$TracingCookieHeaderProvider;-><init>(Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;)V

    return-object v0
.end method

.method public replenish()V
    .registers 7

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;->executor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;->connector:Lcom/google/android/apps/unveil/network/AbstractConnector;

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;->request:Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

    sget-object v3, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;->RESPONSE_CLASS:Ljava/lang/Class;

    const-string v4, ""

    iget-object v5, p0, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;->responseHandler:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/apps/unveil/network/AbstractConnector;->requestRunnable(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Class;Ljava/lang/String;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 85
    return-void
.end method
