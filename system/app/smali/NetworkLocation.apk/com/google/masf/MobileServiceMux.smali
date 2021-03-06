.class public Lcom/google/masf/MobileServiceMux;
.super Lcom/google/common/io/BaseHttpConnectionFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/masf/MobileServiceMux$Configuration;,
        Lcom/google/masf/MobileServiceMux$Listener;
    }
.end annotation


# static fields
.field private static logger:Lcom/google/debug/LogSource;

.field protected static mux:Lcom/google/masf/MobileServiceMux;


# instance fields
.field private asyncFactory:Lcom/google/common/async/AsyncHttpRequestFactory;

.field private bytesReceived:I

.field private bytesSent:I

.field private connectionFactory:Lcom/google/common/io/HttpConnectionFactory;

.field protected delayedFlushTask:Lcom/google/common/task/TimerTask;

.field protected delayedRequestQueue:Ljava/util/Hashtable;

.field protected flushTask:Lcom/google/common/task/TimerTask;

.field protected hardDeadline:J

.field protected headerRequest:Lcom/google/masf/protocol/HeaderRequest;

.field private listeners:Ljava/util/Vector;

.field private mutex:Ljava/lang/Object;

.field protected nextFlush:J

.field protected preemptableRequestMap:Ljava/util/Hashtable;

.field private requestId:I

.field private requireEndToEndSecure:Z

.field private responseCache:Lcom/google/masf/OneTimeCache;

.field protected resumeService:Lcom/google/masf/services/resume/ResumeService;

.field private secureServerUri:Ljava/lang/String;

.field private serverUri:Ljava/lang/String;

.field protected submitRequestQueue:Ljava/util/Vector;

.field protected taskRunner:Lcom/google/common/task/TaskRunner;

.field private final workerTimeout:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/masf/MobileServiceMux;

    invoke-static {v0}, Lcom/google/debug/LogSource;->getLogSource(Ljava/lang/Class;)Lcom/google/debug/LogSource;

    move-result-object v0

    sput-object v0, Lcom/google/masf/MobileServiceMux;->logger:Lcom/google/debug/LogSource;

    return-void
.end method

.method protected constructor <init>(Lcom/google/masf/MobileServiceMux$Configuration;)V
    .registers 8

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/common/io/BaseHttpConnectionFactory;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/masf/MobileServiceMux;->listeners:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/masf/MobileServiceMux;->submitRequestQueue:Ljava/util/Vector;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/masf/MobileServiceMux;->delayedRequestQueue:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/masf/MobileServiceMux;->preemptableRequestMap:Ljava/util/Hashtable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/masf/MobileServiceMux;->mutex:Ljava/lang/Object;

    iput v1, p0, Lcom/google/masf/MobileServiceMux;->requestId:I

    iput v1, p0, Lcom/google/masf/MobileServiceMux;->bytesSent:I

    iput v1, p0, Lcom/google/masf/MobileServiceMux;->bytesReceived:I

    iput-boolean v1, p0, Lcom/google/masf/MobileServiceMux;->requireEndToEndSecure:Z

    #getter for: Lcom/google/masf/MobileServiceMux$Configuration;->workerTimeout:J
    invoke-static {p1}, Lcom/google/masf/MobileServiceMux$Configuration;->access$000(Lcom/google/masf/MobileServiceMux$Configuration;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/masf/MobileServiceMux;->workerTimeout:J

    new-instance v0, Lcom/google/masf/protocol/HeaderRequest;

    #getter for: Lcom/google/masf/MobileServiceMux$Configuration;->applicationName:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/masf/MobileServiceMux$Configuration;->access$100(Lcom/google/masf/MobileServiceMux$Configuration;)Ljava/lang/String;

    move-result-object v1

    #getter for: Lcom/google/masf/MobileServiceMux$Configuration;->applicationVersion:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/masf/MobileServiceMux$Configuration;->access$200(Lcom/google/masf/MobileServiceMux$Configuration;)Ljava/lang/String;

    move-result-object v2

    #getter for: Lcom/google/masf/MobileServiceMux$Configuration;->platformId:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/masf/MobileServiceMux$Configuration;->access$300(Lcom/google/masf/MobileServiceMux$Configuration;)Ljava/lang/String;

    move-result-object v3

    #getter for: Lcom/google/masf/MobileServiceMux$Configuration;->distributionChannel:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/masf/MobileServiceMux$Configuration;->access$400(Lcom/google/masf/MobileServiceMux$Configuration;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "g"

    invoke-direct/range {v0 .. v5}, Lcom/google/masf/protocol/HeaderRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/masf/MobileServiceMux;->headerRequest:Lcom/google/masf/protocol/HeaderRequest;

    invoke-virtual {p0}, Lcom/google/masf/MobileServiceMux;->createTaskRunner()Lcom/google/common/task/TaskRunner;

    move-result-object v0

    iput-object v0, p0, Lcom/google/masf/MobileServiceMux;->taskRunner:Lcom/google/common/task/TaskRunner;

    iget-object v0, p0, Lcom/google/masf/MobileServiceMux;->taskRunner:Lcom/google/common/task/TaskRunner;

    invoke-virtual {v0}, Lcom/google/common/task/TaskRunner;->start()V

    invoke-static {}, Lcom/google/common/Config;->getInstance()Lcom/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/Config;->getConnectionFactory()Lcom/google/common/io/HttpConnectionFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/masf/MobileServiceMux;->connectionFactory:Lcom/google/common/io/HttpConnectionFactory;

    #getter for: Lcom/google/masf/MobileServiceMux$Configuration;->serverUri:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/masf/MobileServiceMux$Configuration;->access$500(Lcom/google/masf/MobileServiceMux$Configuration;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/masf/MobileServiceMux;->serverUri:Ljava/lang/String;

    #getter for: Lcom/google/masf/MobileServiceMux$Configuration;->secureServerUri:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/masf/MobileServiceMux$Configuration;->access$600(Lcom/google/masf/MobileServiceMux$Configuration;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/masf/MobileServiceMux;->secureServerUri:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/masf/MobileServiceMux;->createAsyncHttpRequestFactory()Lcom/google/common/async/AsyncHttpRequestFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/masf/MobileServiceMux;->asyncFactory:Lcom/google/common/async/AsyncHttpRequestFactory;

    iget-object v0, p0, Lcom/google/masf/MobileServiceMux;->asyncFactory:Lcom/google/common/async/AsyncHttpRequestFactory;

    invoke-virtual {v0}, Lcom/google/common/async/AsyncHttpRequestFactory;->start()V

    new-instance v0, Lcom/google/masf/services/resume/WindowResumeService;

    iget-object v1, p0, Lcom/google/masf/MobileServiceMux;->taskRunner:Lcom/google/common/task/TaskRunner;

    iget-object v2, p0, Lcom/google/masf/MobileServiceMux;->headerRequest:Lcom/google/masf/protocol/HeaderRequest;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/masf/services/resume/WindowResumeService;-><init>(Lcom/google/masf/MobileServiceMux;Lcom/google/common/task/TaskRunner;Lcom/google/masf/protocol/HeaderRequest;)V

    iput-object v0, p0, Lcom/google/masf/MobileServiceMux;->resumeService:Lcom/google/masf/services/resume/ResumeService;

    new-instance v0, Lcom/google/masf/OneTimeCache;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/masf/OneTimeCache;-><init>(I)V

    iput-object v0, p0, Lcom/google/masf/MobileServiceMux;->responseCache:Lcom/google/masf/OneTimeCache;

    new-instance v0, Lcom/google/common/task/TimerTask;

    iget-object v1, p0, Lcom/google/masf/MobileServiceMux;->taskRunner:Lcom/google/common/task/TaskRunner;

    new-instance v2, Lcom/google/masf/MobileServiceMux$1;

    invoke-direct {v2, p0}, Lcom/google/masf/MobileServiceMux$1;-><init>(Lcom/google/masf/MobileServiceMux;)V

    invoke-direct {v0, v1, v2}, Lcom/google/common/task/TimerTask;-><init>(Lcom/google/common/task/TaskRunner;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/masf/MobileServiceMux;->flushTask:Lcom/google/common/task/TimerTask;

    new-instance v0, Lcom/google/masf/MobileServiceMux$2;

    iget-object v1, p0, Lcom/google/masf/MobileServiceMux;->taskRunner:Lcom/google/common/task/TaskRunner;

    invoke-direct {v0, p0, v1}, Lcom/google/masf/MobileServiceMux$2;-><init>(Lcom/google/masf/MobileServiceMux;Lcom/google/common/task/TaskRunner;)V

    iput-object v0, p0, Lcom/google/masf/MobileServiceMux;->delayedFlushTask:Lcom/google/common/task/TimerTask;

    return-void
.end method

.method static synthetic access$1000(Lcom/google/masf/MobileServiceMux;[Lcom/google/masf/protocol/Request;Ljava/lang/Exception;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/masf/MobileServiceMux;->requeueOrFailRequests([Lcom/google/masf/protocol/Request;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/masf/MobileServiceMux;Lcom/google/common/async/AsyncHttpRequest;[Lcom/google/masf/protocol/Request;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/masf/MobileServiceMux;->handleMacroResponse(Lcom/google/common/async/AsyncHttpRequest;[Lcom/google/masf/protocol/Request;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/masf/MobileServiceMux;[Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/masf/MobileServiceMux;->disposeRequests([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1312(Lcom/google/masf/MobileServiceMux;I)I
    .registers 3

    iget v0, p0, Lcom/google/masf/MobileServiceMux;->bytesSent:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/masf/MobileServiceMux;->bytesSent:I

    return v0
.end method

.method static synthetic access$700(Lcom/google/masf/MobileServiceMux;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/masf/MobileServiceMux;->mutex:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800()Lcom/google/debug/LogSource;
    .registers 1

    sget-object v0, Lcom/google/masf/MobileServiceMux;->logger:Lcom/google/debug/LogSource;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/masf/MobileServiceMux;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/masf/MobileServiceMux;->scheduleDelayedFlush()V

    return-void
.end method

.method private disposeRequests([Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v0, p1

    if-ge v1, v0, :cond_12

    aget-object v0, p1, v1

    check-cast v0, Lcom/google/masf/protocol/Request;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/google/masf/protocol/Request;->dispose()V

    :cond_e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_12
    return-void
.end method

.method private getListeners()[Lcom/google/masf/MobileServiceMux$Listener;
    .registers 4

    iget-object v1, p0, Lcom/google/masf/MobileServiceMux;->listeners:Ljava/util/Vector;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/masf/MobileServiceMux;->listeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/masf/MobileServiceMux$Listener;

    iget-object v2, p0, Lcom/google/masf/MobileServiceMux;->listeners:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private getMacroRequestPayload([Lcom/google/masf/protocol/Request;)Ljava/io/InputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    new-array v1, v0, [Ljava/io/InputStream;

    const/4 v0, 0x0

    :goto_4
    array-length v2, p1

    if-ge v0, v2, :cond_12

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/google/masf/protocol/Request;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_12
    new-instance v0, Lcom/google/common/io/SequenceInputStream;

    iget-object v2, p0, Lcom/google/masf/MobileServiceMux;->headerRequest:Lcom/google/masf/protocol/HeaderRequest;

    invoke-virtual {v2}, Lcom/google/masf/protocol/HeaderRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Lcom/google/common/io/SequenceInputStream;

    invoke-direct {v3, v1}, Lcom/google/common/io/SequenceInputStream;-><init>([Ljava/io/InputStream;)V

    invoke-direct {v0, v2, v3}, Lcom/google/common/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    return-object v0
.end method

.method private getSecureRequests([Lcom/google/masf/protocol/Request;)[Lcom/google/masf/protocol/Request;
    .registers 11

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    move v3, v2

    move-object v0, v4

    :goto_5
    array-length v5, p1

    if-ge v3, v5, :cond_49

    aget-object v5, p1, v3

    invoke-virtual {v5}, Lcom/google/masf/protocol/Request;->isSecure()Z

    move-result v5

    if-eqz v5, :cond_3e

    if-nez v0, :cond_15

    array-length v0, p1

    new-array v0, v0, [Lcom/google/masf/protocol/Request;

    :cond_15
    sget-object v5, Lcom/google/masf/MobileServiceMux;->logger:Lcom/google/debug/LogSource;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Encrypted request "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    aget-object v5, p1, v3

    aput-object v5, v0, v3

    aput-object v4, p1, v3

    move v8, v1

    move-object v1, v0

    move v0, v8

    :goto_38
    add-int/lit8 v3, v3, 0x1

    move v8, v0

    move-object v0, v1

    move v1, v8

    goto :goto_5

    :cond_3e
    aget-object v5, p1, v3

    invoke-virtual {v5}, Lcom/google/masf/protocol/Request;->isImmediate()Z

    move-result v5

    if-eqz v5, :cond_65

    move-object v1, v0

    move v0, v2

    goto :goto_38

    :cond_49
    if-eqz v1, :cond_64

    if-eqz v0, :cond_64

    sget-object v1, Lcom/google/masf/MobileServiceMux;->logger:Lcom/google/debug/LogSource;

    const-string v3, "Sending all the requests encrypted"

    invoke-virtual {v1, v3}, Lcom/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    :goto_54
    array-length v1, p1

    if-ge v2, v1, :cond_64

    aget-object v1, p1, v2

    if-eqz v1, :cond_61

    aget-object v1, p1, v2

    aput-object v1, v0, v2

    aput-object v4, p1, v2

    :cond_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    :cond_64
    return-object v0

    :cond_65
    move v8, v1

    move-object v1, v0

    move v0, v8

    goto :goto_38
.end method

.method private getServerAddress(Z)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_b

    invoke-direct {p0}, Lcom/google/masf/MobileServiceMux;->isSecureChannelSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/masf/MobileServiceMux;->secureServerUri:Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/masf/MobileServiceMux;->serverUri:Ljava/lang/String;

    goto :goto_a
.end method

.method public static declared-synchronized getSingleton()Lcom/google/masf/MobileServiceMux;
    .registers 2

    const-class v0, Lcom/google/masf/MobileServiceMux;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/masf/MobileServiceMux;->mux:Lcom/google/masf/MobileServiceMux;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private handleMacroResponse(Lcom/google/common/async/AsyncHttpRequest;[Lcom/google/masf/protocol/Request;)V
    .registers 14

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {p1}, Lcom/google/common/async/AsyncHttpRequest;->getResponseCode()I

    move-result v1

    invoke-interface {p1}, Lcom/google/common/async/AsyncHttpRequest;->getResponseType()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f6

    if-ne v1, v3, :cond_1e

    sget-object v2, Lcom/google/masf/MobileServiceMux;->logger:Lcom/google/debug/LogSource;

    const-string v3, "MobileServiceMux.Worker.processRequests() - responseCode == HTTP_BAD_GATEWAY"

    invoke-virtual {v2, v3}, Lcom/google/debug/LogSource;->info(Ljava/lang/Object;)V

    new-instance v2, Lcom/google/masf/ConnectionException;

    invoke-direct {v2, v1}, Lcom/google/masf/ConnectionException;-><init>(I)V

    invoke-direct {p0, p2, v2}, Lcom/google/masf/MobileServiceMux;->requeueOrFailRequests([Lcom/google/masf/protocol/Request;Ljava/lang/Exception;)V

    :goto_1d
    return-void

    :cond_1e
    const/16 v3, 0xc8

    if-eq v1, v3, :cond_4d

    sget-object v2, Lcom/google/masf/MobileServiceMux;->logger:Lcom/google/debug/LogSource;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MobileServiceMux.Worker.processRequests() - responseCode != HTTP_OK (It was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/debug/LogSource;->info(Ljava/lang/Object;)V

    new-instance v2, Lcom/google/masf/ConnectionException;

    invoke-direct {v2, v1}, Lcom/google/masf/ConnectionException;-><init>(I)V

    invoke-direct {p0, p2, v2}, Lcom/google/masf/MobileServiceMux;->requeueOrFailRequests([Lcom/google/masf/protocol/Request;Ljava/lang/Exception;)V

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/google/masf/MobileServiceMux;->notifyNetworkError(I)V

    goto :goto_1d

    :cond_4d
    if-eqz v2, :cond_57

    const-string v1, "application/binary"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    :cond_57
    sget-object v1, Lcom/google/masf/MobileServiceMux;->logger:Lcom/google/debug/LogSource;

    const-string v2, "MobileServiceMux.Worker.processRequests() - contentType != application/binary"

    invoke-virtual {v1, v2}, Lcom/google/debug/LogSource;->info(Ljava/lang/Object;)V

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Bad content-type"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v1}, Lcom/google/masf/MobileServiceMux;->requeueOrFailRequests([Lcom/google/masf/protocol/Request;Ljava/lang/Exception;)V

    goto :goto_1d

    :cond_69
    sget-object v1, Lcom/google/masf/MobileServiceMux;->logger:Lcom/google/debug/LogSource;

    const-string v2, "handleResponses - success"

    invoke-virtual {v1, v2}, Lcom/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    :try_start_70
    iget v1, p0, Lcom/google/masf/MobileServiceMux;->bytesReceived:I

    int-to-long v1, v1

    invoke-interface {p1}, Lcom/google/common/async/AsyncHttpRequest;->getResponseLength()J

    move-result-wide v6

    add-long/2addr v1, v6

    long-to-int v1, v1

    iput v1, p0, Lcom/google/masf/MobileServiceMux;->bytesReceived:I

    invoke-interface {p1}, Lcom/google/common/async/AsyncHttpRequest;->getResponseStream()Ljava/io/DataInputStream;

    move-result-object v1

    new-instance v7, Lcom/google/masf/protocol/ProtocolReader;

    invoke-direct {v7, v1}, Lcom/google/masf/protocol/ProtocolReader;-><init>(Ljava/io/DataInputStream;)V

    move v6, v5

    :goto_85
    array-length v1, p2

    if-ge v6, v1, :cond_183

    invoke-virtual {v7}, Lcom/google/masf/protocol/ProtocolReader;->getNextResponse()Lcom/google/masf/protocol/Response;

    move-result-object v3

    if-eqz v3, :cond_183

    move v1, v5

    :goto_8f
    array-length v2, p2

    if-ge v1, v2, :cond_1ae

    aget-object v2, p2, v1

    sget-object v8, Lcom/google/masf/MobileServiceMux;->logger:Lcom/google/debug/LogSource;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Handle response - request "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    if-eqz v2, :cond_112

    invoke-virtual {v2}, Lcom/google/masf/protocol/Request;->getId()I

    move-result v8

    invoke-virtual {v3}, Lcom/google/masf/protocol/Response;->getId()I

    move-result v9

    if-ne v8, v9, :cond_112

    const/4 v8, 0x0

    aput-object v8, p2, v1

    :goto_bb
    if-eqz v2, :cond_135

    instance-of v1, v3, Lcom/google/masf/protocol/MultipartResponse;

    if-eqz v1, :cond_d6

    instance-of v1, v2, Lcom/google/masf/protocol/SimpleRequest;

    if-eqz v1, :cond_d6

    sget-object v1, Lcom/google/masf/MobileServiceMux;->logger:Lcom/google/debug/LogSource;

    const-string v8, "MultipartResponse"

    invoke-virtual {v1, v8}, Lcom/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    move-object v0, v2

    check-cast v0, Lcom/google/masf/protocol/SimpleRequest;

    move-object v1, v0

    check-cast v3, Lcom/google/masf/protocol/MultipartResponse;

    invoke-direct {p0, v1, v3}, Lcom/google/masf/MobileServiceMux;->removeExtraResponses(Lcom/google/masf/protocol/SimpleRequest;Lcom/google/masf/protocol/MultipartResponse;)Lcom/google/masf/protocol/Response;

    move-result-object v3

    :cond_d6
    invoke-virtual {v3}, Lcom/google/masf/protocol/Response;->getStatusCode()I

    move-result v1

    sget-object v8, Lcom/google/masf/MobileServiceMux;->logger:Lcom/google/debug/LogSource;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "subrequest status code = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    const/16 v8, 0x226

    if-ne v1, v8, :cond_116

    invoke-virtual {v3}, Lcom/google/masf/protocol/Response;->bufferAndDetach()V

    new-instance v3, Lcom/google/masf/ConnectionException;

    invoke-direct {v3, v1}, Lcom/google/masf/ConnectionException;-><init>(I)V

    invoke-static {}, Lcom/google/common/Config;->getInstance()Lcom/google/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/Config;->getClock()Lcom/google/common/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/Clock;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {p0, v2, v3, v8, v9}, Lcom/google/masf/MobileServiceMux;->requeueRequest(Lcom/google/masf/protocol/Request;Ljava/lang/Exception;J)Z

    :goto_10d
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto/16 :goto_85

    :cond_112
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_8f

    :cond_116
    invoke-direct {p0, v2, v3}, Lcom/google/masf/MobileServiceMux;->handleResponse(Lcom/google/masf/protocol/Request;Lcom/google/masf/protocol/Response;)V
    :try_end_119
    .catchall {:try_start_70 .. :try_end_119} :catchall_199
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_119} :catch_11a
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_119} :catch_168

    goto :goto_10d

    :catch_11a
    move-exception v1

    :try_start_11b
    sget-object v2, Lcom/google/masf/MobileServiceMux;->logger:Lcom/google/debug/LogSource;

    const-string v3, "MobileServiceMux.Worker.handleResponses()"

    invoke-virtual {v2, v3, v1}, Lcom/google/debug/LogSource;->info(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_122
    .catchall {:try_start_11b .. :try_end_122} :catchall_199

    sget-object v1, Lcom/google/masf/MobileServiceMux;->logger:Lcom/google/debug/LogSource;

    const-string v2, "MobileServiceMux.Worker.handleResponses() - requeuing any unhandled requests"

    invoke-virtual {v1, v2}, Lcom/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Request didn\'t complete"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v1}, Lcom/google/masf/MobileServiceMux;->requeueOrFailRequests([Lcom/google/masf/protocol/Request;Ljava/lang/Exception;)V

    goto/16 :goto_1d

    :cond_135
    :try_start_135
    sget-object v1, Lcom/google/masf/MobileServiceMux;->logger:Lcom/google/debug/LogSource;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MobileServiceMux.Worker.handleResponses() - unmatched response, ignoring [responseId="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/google/masf/protocol/Response;->getId()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "]"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/debug/LogSource;->info(Ljava/lang/Object;)V
    :try_end_157
    .catchall {:try_start_135 .. :try_end_157} :catchall_199
    .catch Ljava/io/IOException; {:try_start_135 .. :try_end_157} :catch_11a
    .catch Ljava/lang/Throwable; {:try_start_135 .. :try_end_157} :catch_168

    :try_start_157
    invoke-virtual {v3}, Lcom/google/masf/protocol/Response;->getStreamLength()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v3}, Lcom/google/masf/protocol/Response;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_164
    .catchall {:try_start_157 .. :try_end_164} :catchall_199
    .catch Ljava/io/IOException; {:try_start_157 .. :try_end_164} :catch_1ac
    .catch Ljava/lang/Throwable; {:try_start_157 .. :try_end_164} :catch_168

    :goto_164
    :try_start_164
    invoke-virtual {v3}, Lcom/google/masf/protocol/Response;->bufferAndDetach()V
    :try_end_167
    .catchall {:try_start_164 .. :try_end_167} :catchall_199
    .catch Ljava/io/IOException; {:try_start_164 .. :try_end_167} :catch_11a
    .catch Ljava/lang/Throwable; {:try_start_164 .. :try_end_167} :catch_168

    goto :goto_10d

    :catch_168
    move-exception v1

    :try_start_169
    sget-object v2, Lcom/google/masf/MobileServiceMux;->logger:Lcom/google/debug/LogSource;

    const-string v3, "MobileServiceMux.Worker.handleResponses()"

    invoke-virtual {v2, v3, v1}, Lcom/google/debug/LogSource;->info(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_170
    .catchall {:try_start_169 .. :try_end_170} :catchall_199

    sget-object v1, Lcom/google/masf/MobileServiceMux;->logger:Lcom/google/debug/LogSource;

    const-string v2, "MobileServiceMux.Worker.handleResponses() - requeuing any unhandled requests"

    invoke-virtual {v1, v2}, Lcom/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Request didn\'t complete"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v1}, Lcom/google/masf/MobileServiceMux;->requeueOrFailRequests([Lcom/google/masf/protocol/Request;Ljava/lang/Exception;)V

    goto/16 :goto_1d

    :cond_183
    :try_start_183
    invoke-virtual {v7}, Lcom/google/masf/protocol/ProtocolReader;->close()V
    :try_end_186
    .catchall {:try_start_183 .. :try_end_186} :catchall_199
    .catch Ljava/io/IOException; {:try_start_183 .. :try_end_186} :catch_11a
    .catch Ljava/lang/Throwable; {:try_start_183 .. :try_end_186} :catch_168

    sget-object v1, Lcom/google/masf/MobileServiceMux;->logger:Lcom/google/debug/LogSource;

    const-string v2, "MobileServiceMux.Worker.handleResponses() - requeuing any unhandled requests"

    invoke-virtual {v1, v2}, Lcom/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Request didn\'t complete"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v1}, Lcom/google/masf/MobileServiceMux;->requeueOrFailRequests([Lcom/google/masf/protocol/Request;Ljava/lang/Exception;)V

    goto/16 :goto_1d

    :catchall_199
    move-exception v1

    sget-object v2, Lcom/google/masf/MobileServiceMux;->logger:Lcom/google/debug/LogSource;

    const-string v3, "MobileServiceMux.Worker.handleResponses() - requeuing any unhandled requests"

    invoke-virtual {v2, v3}, Lcom/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Request didn\'t complete"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v2}, Lcom/google/masf/MobileServiceMux;->requeueOrFailRequests([Lcom/google/masf/protocol/Request;Ljava/lang/Exception;)V

    throw v1

    :catch_1ac
    move-exception v1

    goto :goto_164

    :cond_1ae
    move-object v2, v4

    goto/16 :goto_bb
.end method

.method private handleResponse(Lcom/google/masf/protocol/Request;Lcom/google/masf/protocol/Response;)V
    .registers 6

    sget-object v0, Lcom/google/masf/MobileServiceMux;->logger:Lcom/google/debug/LogSource;

    const-string v1, "MobileServiceMux.handleResponse()"

    invoke-virtual {v0, v1}, Lcom/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    :try_start_7
    invoke-virtual {p1}, Lcom/google/masf/protocol/Request;->flagResponseReceived()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Lcom/google/masf/protocol/Request;->getListener()Lcom/google/masf/protocol/Request$Listener;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-interface {v0, p1, p2}, Lcom/google/masf/protocol/Request$Listener;->requestCompleted(Lcom/google/masf/protocol/Request;Lcom/google/masf/protocol/Response;)V

    :cond_16
    invoke-direct {p0, p1}, Lcom/google/masf/MobileServiceMux;->notifyRequestComplete(Lcom/google/masf/protocol/Request;)V
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_29
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_19} :catch_1d

    :cond_19
    invoke-virtual {p2}, Lcom/google/masf/protocol/Response;->bufferAndDetach()V

    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    :try_start_1e
    sget-object v1, Lcom/google/masf/MobileServiceMux;->logger:Lcom/google/debug/LogSource;

    const-string v2, "MobileServiceMux.handleResponse(): Unhandled thrown by request listener"

    invoke-virtual {v1, v2, v0}, Lcom/google/debug/LogSource;->severe(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_29

    invoke-virtual {p2}, Lcom/google/masf/protocol/Response;->bufferAndDetach()V

    goto :goto_1c

    :catchall_29
    move-exception v0

    invoke-virtual {p2}, Lcom/google/masf/protocol/Response;->bufferAndDetach()V

    throw v0
.end method

.method public static declared-synchronized initialize(Lcom/google/masf/MobileServiceMux$Configuration;)V
    .registers 3

    const-class v1, Lcom/google/masf/MobileServiceMux;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/masf/MobileServiceMux;->mux:Lcom/google/masf/MobileServiceMux;

    if-nez v0, :cond_e

    new-instance v0, Lcom/google/masf/MobileServiceMux;

    invoke-direct {v0, p0}, Lcom/google/masf/MobileServiceMux;-><init>(Lcom/google/masf/MobileServiceMux$Configuration;)V

    sput-object v0, Lcom/google/masf/MobileServiceMux;->mux:Lcom/google/masf/MobileServiceMux;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isSecureChannelSupported()Z
    .registers 2

    iget-object v0, p0, Lcom/google/masf/MobileServiceMux;->secureServerUri:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private declared-synchronized nextRequestId()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/masf/MobileServiceMux;->requestId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/masf/MobileServiceMux;->requestId:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private notifyNetworkError(I)V
    .registers 5

    invoke-direct {p0}, Lcom/google/masf/MobileServiceMux;->getListeners()[Lcom/google/masf/MobileServiceMux$Listener;

    move-result-object v1

    const/4 v0, 0x0

    :goto_5
    array-length v2, v1

    if-ge v0, v2, :cond_10

    aget-object v2, v1, v0

    invoke-interface {v2, p1}, Lcom/google/masf/MobileServiceMux$Listener;->onNetworkError(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_10
    return-void
.end method

.method private notifyRequestComplete(Lcom/google/masf/protocol/Request;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/masf/MobileServiceMux;->getListeners()[Lcom/google/masf/MobileServiceMux$Listener;

    move-result-object v1

    const/4 v0, 0x0

    :goto_5
    array-length v2, v1

    if-ge v0, v2, :cond_10

    aget-object v2, v1, v0

    invoke-interface {v2, p1}, Lcom/google/masf/MobileServiceMux$Listener;->onRequestComplete(Lcom/google/masf/protocol/Request;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_10
    return-void
.end method

.method private processRequests([Lcom/google/masf/protocol/Request;Z)V
    .registers 13

    :try_start_0
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Lcom/google/masf/MobileServiceMux;->headerRequest:Lcom/google/masf/protocol/HeaderRequest;

    invoke-virtual {v1}, Lcom/google/masf/protocol/HeaderRequest;->getStreamLength()I

    move-result v3

    const/4 v1, 0x0

    move v4, v1

    :goto_d
    array-length v1, p1

    if-ge v4, v1, :cond_bb

    aget-object v2, p1, v4

    if-nez v2, :cond_1a

    move v1, v3

    :goto_15
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v3, v1

    goto :goto_d

    :cond_1a
    instance-of v1, v2, Lcom/google/masf/protocol/SimpleRequest;

    if-eqz v1, :cond_7c

    move-object v0, v2

    check-cast v0, Lcom/google/masf/protocol/SimpleRequest;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/masf/protocol/SimpleRequest;->getServiceUri()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7c

    sget-object v1, Lcom/google/masf/MobileServiceMux;->logger:Lcom/google/debug/LogSource;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Looking for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in response cache"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/google/masf/MobileServiceMux;->mutex:Ljava/lang/Object;

    monitor-enter v7
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_49} :catch_77

    :try_start_49
    iget-object v1, p0, Lcom/google/masf/MobileServiceMux;->responseCache:Lcom/google/masf/OneTimeCache;

    invoke-virtual {v1, v6}, Lcom/google/masf/OneTimeCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v7
    :try_end_50
    .catchall {:try_start_49 .. :try_end_50} :catchall_74

    if-eqz v1, :cond_7c

    :try_start_52
    sget-object v7, Lcom/google/masf/MobileServiceMux;->logger:Lcom/google/debug/LogSource;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found cached response for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    const/4 v6, 0x0

    aput-object v6, p1, v4

    check-cast v1, Lcom/google/masf/protocol/Response;

    invoke-direct {p0, v2, v1}, Lcom/google/masf/MobileServiceMux;->handleResponse(Lcom/google/masf/protocol/Request;Lcom/google/masf/protocol/Response;)V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_72} :catch_77

    move v1, v3

    goto :goto_15

    :catchall_74
    move-exception v1

    :try_start_75
    monitor-exit v7
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    :try_start_76
    throw v1
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_77} :catch_77

    :catch_77
    move-exception v1

    invoke-direct {p0, p1, v1}, Lcom/google/masf/MobileServiceMux;->requeueOrFailRequests([Lcom/google/masf/protocol/Request;Ljava/lang/Exception;)V

    :cond_7b
    :goto_7b
    return-void

    :cond_7c
    :try_start_7c
    sget-object v1, Lcom/google/masf/MobileServiceMux;->logger:Lcom/google/debug/LogSource;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending request with id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/masf/protocol/Request;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/google/masf/protocol/Request;->getStreamLength()I

    move-result v1

    add-int/2addr v1, v3

    const v6, 0x8000

    if-le v1, v6, :cond_ae

    invoke-virtual {p0, v5, p2}, Lcom/google/masf/MobileServiceMux;->sendMacroRequest(Ljava/util/Vector;Z)V

    iget-object v1, p0, Lcom/google/masf/MobileServiceMux;->headerRequest:Lcom/google/masf/protocol/HeaderRequest;

    invoke-virtual {v1}, Lcom/google/masf/protocol/HeaderRequest;->getStreamLength()I

    move-result v3

    invoke-virtual {v5}, Ljava/util/Vector;->removeAllElements()V

    :cond_ae
    const/4 v1, 0x0

    aput-object v1, p1, v4

    invoke-virtual {v5, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/google/masf/protocol/Request;->getStreamLength()I

    move-result v1

    add-int/2addr v1, v3

    goto/16 :goto_15

    :cond_bb
    invoke-direct {p0}, Lcom/google/masf/MobileServiceMux;->scheduleDelayedFlush()V

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_7b

    invoke-virtual {p0, v5, p2}, Lcom/google/masf/MobileServiceMux;->sendMacroRequest(Ljava/util/Vector;Z)V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_c7} :catch_77

    goto :goto_7b
.end method

.method private removeExtraResponses(Lcom/google/masf/protocol/SimpleRequest;Lcom/google/masf/protocol/MultipartResponse;)Lcom/google/masf/protocol/Response;
    .registers 14

    invoke-virtual {p1}, Lcom/google/masf/protocol/SimpleRequest;->getServiceUri()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/google/masf/protocol/MultipartResponseBuilder;

    invoke-virtual {p2}, Lcom/google/masf/protocol/MultipartResponse;->getId()I

    move-result v1

    invoke-virtual {p2}, Lcom/google/masf/protocol/MultipartResponse;->getStatusCode()I

    move-result v2

    invoke-virtual {p2}, Lcom/google/masf/protocol/MultipartResponse;->getRoot()Lcom/google/masf/protocol/BodyPart;

    move-result-object v3

    invoke-direct {v5, v1, v2, v3}, Lcom/google/masf/protocol/MultipartResponseBuilder;-><init>(IILcom/google/masf/protocol/BodyPart;)V

    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p2}, Lcom/google/masf/protocol/MultipartResponse;->getBodyParts()[Lcom/google/masf/protocol/BodyPart;

    move-result-object v7

    const/4 v1, 0x0

    move v3, v1

    :goto_20
    array-length v1, v7

    if-ge v3, v1, :cond_69

    aget-object v8, v7, v3

    invoke-virtual {v8}, Lcom/google/masf/protocol/BodyPart;->getProperties()Ljava/util/Hashtable;

    move-result-object v1

    const-string v2, "Content-Location"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_65

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    invoke-virtual {v6, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/masf/protocol/MultipartResponseBuilder;

    if-nez v2, :cond_61

    invoke-virtual {v8}, Lcom/google/masf/protocol/BodyPart;->getProperties()Ljava/util/Hashtable;

    move-result-object v2

    const-string v9, "X-Masf-Response-Code"

    invoke-virtual {v2, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v9, Lcom/google/masf/protocol/MultipartResponseBuilder;

    invoke-virtual {p2}, Lcom/google/masf/protocol/MultipartResponse;->getId()I

    move-result v10

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v9, v10, v2, v8}, Lcom/google/masf/protocol/MultipartResponseBuilder;-><init>(IILcom/google/masf/protocol/BodyPart;)V

    invoke-virtual {v6, v1, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5d
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_20

    :cond_61
    invoke-virtual {v2, v8}, Lcom/google/masf/protocol/MultipartResponseBuilder;->addBodyPart(Lcom/google/masf/protocol/BodyPart;)V

    goto :goto_5d

    :cond_65
    invoke-virtual {v5, v8}, Lcom/google/masf/protocol/MultipartResponseBuilder;->addBodyPart(Lcom/google/masf/protocol/BodyPart;)V

    goto :goto_5d

    :cond_69
    invoke-virtual {v6}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    iget-object v4, p0, Lcom/google/masf/MobileServiceMux;->mutex:Ljava/lang/Object;

    monitor-enter v4

    :goto_70
    :try_start_70
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_a9

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/masf/protocol/MultipartResponseBuilder;

    iget-object v7, p0, Lcom/google/masf/MobileServiceMux;->responseCache:Lcom/google/masf/OneTimeCache;

    invoke-virtual {v1}, Lcom/google/masf/protocol/MultipartResponseBuilder;->toMultipartResponse()Lcom/google/masf/protocol/MultipartResponse;

    move-result-object v1

    invoke-virtual {v7, v2, v1}, Lcom/google/masf/OneTimeCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v7, Lcom/google/masf/MobileServiceMux;->logger:Lcom/google/debug/LogSource;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cached response for "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/google/debug/LogSource;->info(Ljava/lang/Object;)V

    goto :goto_70

    :catchall_a6
    move-exception v1

    monitor-exit v4
    :try_end_a8
    .catchall {:try_start_70 .. :try_end_a8} :catchall_a6

    throw v1

    :cond_a9
    :try_start_a9
    monitor-exit v4
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a6

    invoke-virtual {v5}, Lcom/google/masf/protocol/MultipartResponseBuilder;->toMultipartResponse()Lcom/google/masf/protocol/MultipartResponse;

    move-result-object v1

    return-object v1
.end method

.method private requeueOrFailRequests([Lcom/google/masf/protocol/Request;Ljava/lang/Exception;)V
    .registers 11

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/common/Config;->getInstance()Lcom/google/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/Config;->getClock()Lcom/google/common/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/Clock;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/masf/MobileServiceMux;->mutex:Ljava/lang/Object;

    monitor-enter v4

    move v1, v0

    :goto_11
    :try_start_11
    array-length v5, p1

    if-ge v1, v5, :cond_40

    aget-object v5, p1, v1

    if-eqz v5, :cond_3d

    aget-object v5, p1, v1

    invoke-direct {p0, v5, p2, v2, v3}, Lcom/google/masf/MobileServiceMux;->requeueRequest(Lcom/google/masf/protocol/Request;Ljava/lang/Exception;J)Z

    move-result v5

    if-eqz v5, :cond_3d

    sget-object v5, Lcom/google/masf/MobileServiceMux;->logger:Lcom/google/debug/LogSource;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Requeuing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    const/4 v5, 0x0

    aput-object v5, p1, v1

    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_40
    invoke-direct {p0}, Lcom/google/masf/MobileServiceMux;->scheduleDelayedFlush()V

    monitor-exit v4
    :try_end_44
    .catchall {:try_start_11 .. :try_end_44} :catchall_7d

    :goto_44
    array-length v1, p1

    if-ge v0, v1, :cond_80

    aget-object v1, p1, v0

    if-eqz v1, :cond_7a

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/google/masf/protocol/Request;->flagResponseReceived()Z

    move-result v1

    if-eqz v1, :cond_7a

    sget-object v1, Lcom/google/masf/MobileServiceMux;->logger:Lcom/google/debug/LogSource;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/google/masf/protocol/Request;->getListener()Lcom/google/masf/protocol/Request$Listener;

    move-result-object v1

    if-eqz v1, :cond_7a

    aget-object v2, p1, v0

    invoke-interface {v1, v2, p2}, Lcom/google/masf/protocol/Request$Listener;->requestFailed(Lcom/google/masf/protocol/Request;Ljava/lang/Exception;)V

    :cond_7a
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    :catchall_7d
    move-exception v0

    :try_start_7e
    monitor-exit v4
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    throw v0

    :cond_80
    return-void
.end method

.method private requeueRequest(Lcom/google/masf/protocol/Request;Ljava/lang/Exception;J)Z
    .registers 8

    invoke-virtual {p1, p3, p4}, Lcom/google/masf/protocol/Request;->shouldRetry(J)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p1, p3, p4}, Lcom/google/masf/protocol/Request;->updateResendTimeoutOnError(J)V

    sget-object v0, Lcom/google/masf/MobileServiceMux;->logger:Lcom/google/debug/LogSource;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resending "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/debug/LogSource;->info(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/masf/MobileServiceMux;->delayedRequestQueue:Ljava/util/Hashtable;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method private scheduleDelayedFlush()V
    .registers 10

    const-wide/16 v4, -0x1

    iget-object v6, p0, Lcom/google/masf/MobileServiceMux;->mutex:Ljava/lang/Object;

    monitor-enter v6

    :try_start_5
    iget-object v0, p0, Lcom/google/masf/MobileServiceMux;->delayedFlushTask:Lcom/google/common/task/TimerTask;

    invoke-virtual {v0}, Lcom/google/common/task/TimerTask;->cancel()I

    iget-object v0, p0, Lcom/google/masf/MobileServiceMux;->delayedRequestQueue:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v7

    move-wide v2, v4

    :goto_11
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/masf/protocol/Request;

    invoke-virtual {v0}, Lcom/google/masf/protocol/Request;->isResponseReceived()Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/google/masf/MobileServiceMux;->delayedRequestQueue:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/masf/protocol/Request;->getPreemptableId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/google/masf/MobileServiceMux;->preemptableRequestMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/google/masf/protocol/Request;->getPreemptableId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-wide v0, v2

    :cond_38
    :goto_38
    move-wide v2, v0

    goto :goto_11

    :cond_3a
    invoke-virtual {v0}, Lcom/google/masf/protocol/Request;->getRetryDeadline()J

    move-result-wide v0

    cmp-long v8, v0, v4

    if-eqz v8, :cond_4a

    cmp-long v8, v2, v4

    if-eqz v8, :cond_38

    cmp-long v8, v2, v0

    if-gtz v8, :cond_38

    :cond_4a
    move-wide v0, v2

    goto :goto_38

    :cond_4c
    cmp-long v0, v2, v4

    if-nez v0, :cond_59

    sget-object v0, Lcom/google/masf/MobileServiceMux;->logger:Lcom/google/debug/LogSource;

    const-string v1, "No delay flush required"

    invoke-virtual {v0, v1}, Lcom/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    monitor-exit v6

    :goto_58
    return-void

    :cond_59
    sget-object v0, Lcom/google/masf/MobileServiceMux;->logger:Lcom/google/debug/LogSource;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scheduling delayed flush: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/google/common/Config;->getInstance()Lcom/google/common/Config;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/Config;->getClock()Lcom/google/common/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/Clock;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v2, v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/masf/MobileServiceMux;->delayedFlushTask:Lcom/google/common/task/TimerTask;

    invoke-virtual {v0, v2, v3}, Lcom/google/common/task/TimerTask;->setDeadline(J)V

    iget-object v0, p0, Lcom/google/masf/MobileServiceMux;->delayedFlushTask:Lcom/google/common/task/TimerTask;

    invoke-virtual {v0}, Lcom/google/common/task/TimerTask;->schedule()V

    monitor-exit v6

    goto :goto_58

    :catchall_8b
    move-exception v0

    monitor-exit v6
    :try_end_8d
    .catchall {:try_start_5 .. :try_end_8d} :catchall_8b

    throw v0
.end method

.method private scheduleDelayedRequests(J)V
    .registers 8

    iget-object v0, p0, Lcom/google/masf/MobileServiceMux;->delayedRequestQueue:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/masf/protocol/Request;

    invoke-virtual {v0}, Lcom/google/masf/protocol/Request;->getRetryStartTimestamp()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-gtz v2, :cond_58

    iget-object v2, p0, Lcom/google/masf/MobileServiceMux;->delayedRequestQueue:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/masf/protocol/Request;->getPreemptableId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/google/masf/MobileServiceMux;->preemptableRequestMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/google/masf/protocol/Request;->getPreemptableId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    invoke-virtual {v0, p1, p2}, Lcom/google/masf/protocol/Request;->shouldRetry(J)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/google/masf/MobileServiceMux;->logger:Lcom/google/debug/LogSource;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending delayed request ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/masf/MobileServiceMux;->submitRequestQueue:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_6

    :cond_58
    sget-object v2, Lcom/google/masf/MobileServiceMux;->logger:Lcom/google/debug/LogSource;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not sending delayed request ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    goto :goto_6

    :cond_77
    return-void
.end method

.method private scheduleResendRequests(J)V
    .registers 8

    iget-object v0, p0, Lcom/google/masf/MobileServiceMux;->submitRequestQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_4b

    iget-object v0, p0, Lcom/google/masf/MobileServiceMux;->submitRequestQueue:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/masf/protocol/Request;

    invoke-virtual {v0}, Lcom/google/masf/protocol/Request;->isImmediate()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-virtual {v0, p1, p2}, Lcom/google/masf/protocol/Request;->shouldRetry(J)Z

    move-result v2

    if-eqz v2, :cond_47

    sget-object v2, Lcom/google/masf/MobileServiceMux;->logger:Lcom/google/debug/LogSource;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delaying a request ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p2}, Lcom/google/masf/protocol/Request;->updateResendTimeoutOnSent(J)V

    iget-object v2, p0, Lcom/google/masf/MobileServiceMux;->delayedRequestQueue:Ljava/util/Hashtable;

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    :cond_4b
    return-void
.end method

.method private updateSentCounter()V
    .registers 3

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/google/masf/MobileServiceMux;->submitRequestQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    iget-object v0, p0, Lcom/google/masf/MobileServiceMux;->submitRequestQueue:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/masf/protocol/Request;

    invoke-virtual {v0}, Lcom/google/masf/protocol/Request;->updateSentCounter()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_19
    return-void
.end method


# virtual methods
.method protected createAsyncHttpRequestFactory()Lcom/google/common/async/AsyncHttpRequestFactory;
    .registers 7

    new-instance v0, Lcom/google/common/async/AsyncHttpRequestFactory;

    iget-object v1, p0, Lcom/google/masf/MobileServiceMux;->taskRunner:Lcom/google/common/task/TaskRunner;

    invoke-static {}, Lcom/google/common/Config;->getInstance()Lcom/google/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/Config;->getThreadFactory()Lcom/google/common/lang/ThreadFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/google/masf/MobileServiceMux;->connectionFactory:Lcom/google/common/io/HttpConnectionFactory;

    const-string v4, "MobileServiceMux AsyncHttpRequestFactory"

    const/4 v5, 0x3

    invoke-direct/range {v0 .. v5}, Lcom/google/common/async/AsyncHttpRequestFactory;-><init>(Lcom/google/common/task/TaskRunner;Lcom/google/common/lang/ThreadFactory;Lcom/google/common/io/HttpConnectionFactory;Ljava/lang/String;I)V

    return-object v0
.end method

.method public createConnection(Ljava/lang/String;Z)Lcom/google/common/io/GoogleHttpConnection;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    new-instance v0, Lcom/google/masf/MultiplexedHttpConnection;

    invoke-direct {v0, p1, p2}, Lcom/google/masf/MultiplexedHttpConnection;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected createTaskRunner()Lcom/google/common/task/TaskRunner;
    .registers 5

    new-instance v0, Lcom/google/common/task/TaskRunner;

    invoke-static {}, Lcom/google/common/Config;->getInstance()Lcom/google/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/Config;->getThreadFactory()Lcom/google/common/lang/ThreadFactory;

    move-result-object v1

    const-string v2, "MobileServiceMux TaskRunner"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/task/TaskRunner;-><init>(Lcom/google/common/lang/ThreadFactory;Ljava/lang/String;I)V

    return-object v0
.end method

.method protected processRequests()V
    .registers 5

    iget-object v1, p0, Lcom/google/masf/MobileServiceMux;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/google/common/Config;->getInstance()Lcom/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/Config;->getClock()Lcom/google/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/masf/MobileServiceMux;->scheduleDelayedRequests(J)V

    invoke-direct {p0, v2, v3}, Lcom/google/masf/MobileServiceMux;->scheduleResendRequests(J)V

    invoke-direct {p0}, Lcom/google/masf/MobileServiceMux;->updateSentCounter()V

    invoke-direct {p0}, Lcom/google/masf/MobileServiceMux;->scheduleDelayedFlush()V

    iget-object v0, p0, Lcom/google/masf/MobileServiceMux;->submitRequestQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_25

    monitor-exit v1

    :goto_24
    return-void

    :cond_25
    iget-object v0, p0, Lcom/google/masf/MobileServiceMux;->submitRequestQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/masf/protocol/Request;

    iget-object v2, p0, Lcom/google/masf/MobileServiceMux;->submitRequestQueue:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/masf/MobileServiceMux;->submitRequestQueue:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_4d

    invoke-direct {p0}, Lcom/google/masf/MobileServiceMux;->isSecureChannelSupported()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-direct {p0, v0}, Lcom/google/masf/MobileServiceMux;->getSecureRequests([Lcom/google/masf/protocol/Request;)[Lcom/google/masf/protocol/Request;

    move-result-object v1

    if-eqz v1, :cond_48

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/google/masf/MobileServiceMux;->processRequests([Lcom/google/masf/protocol/Request;Z)V

    :cond_48
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/masf/MobileServiceMux;->processRequests([Lcom/google/masf/protocol/Request;Z)V

    goto :goto_24

    :catchall_4d
    move-exception v0

    :try_start_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v0
.end method

.method protected scheduleFlush()V
    .registers 9

    invoke-static {}, Lcom/google/common/Config;->getInstance()Lcom/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/Config;->getClock()Lcom/google/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/Clock;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    add-long/2addr v2, v0

    iget-wide v4, p0, Lcom/google/masf/MobileServiceMux;->nextFlush:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_4b

    const-wide/16 v4, 0x64

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/masf/MobileServiceMux;->hardDeadline:J

    iput-wide v2, p0, Lcom/google/masf/MobileServiceMux;->nextFlush:J

    sget-object v0, Lcom/google/masf/MobileServiceMux;->logger:Lcom/google/debug/LogSource;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1) scheduleFlush [next="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/masf/MobileServiceMux;->nextFlush:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/masf/MobileServiceMux;->flushTask:Lcom/google/common/task/TimerTask;

    iget-wide v1, p0, Lcom/google/masf/MobileServiceMux;->nextFlush:J

    invoke-virtual {v0, v1, v2}, Lcom/google/common/task/TimerTask;->setDeadline(J)V

    iget-object v0, p0, Lcom/google/masf/MobileServiceMux;->flushTask:Lcom/google/common/task/TimerTask;

    invoke-virtual {v0}, Lcom/google/common/task/TimerTask;->schedule()V

    :cond_4a
    :goto_4a
    return-void

    :cond_4b
    iget-wide v0, p0, Lcom/google/masf/MobileServiceMux;->hardDeadline:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_74

    iput-wide v2, p0, Lcom/google/masf/MobileServiceMux;->nextFlush:J

    sget-object v0, Lcom/google/masf/MobileServiceMux;->logger:Lcom/google/debug/LogSource;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2) scheduleFlush [next="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/masf/MobileServiceMux;->nextFlush:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    goto :goto_4a

    :cond_74
    iget-wide v0, p0, Lcom/google/masf/MobileServiceMux;->nextFlush:J

    iget-wide v2, p0, Lcom/google/masf/MobileServiceMux;->hardDeadline:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_4a

    iget-wide v0, p0, Lcom/google/masf/MobileServiceMux;->hardDeadline:J

    iput-wide v0, p0, Lcom/google/masf/MobileServiceMux;->nextFlush:J

    sget-object v0, Lcom/google/masf/MobileServiceMux;->logger:Lcom/google/debug/LogSource;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3) scheduleFlush [next="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/masf/MobileServiceMux;->nextFlush:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    goto :goto_4a
.end method

.method protected sendMacroRequest(Ljava/util/Vector;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v4, v0, [Lcom/google/masf/protocol/Request;

    invoke-virtual {p1, v4}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    invoke-direct {p0, v4}, Lcom/google/masf/MobileServiceMux;->getMacroRequestPayload([Lcom/google/masf/protocol/Request;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/google/masf/MobileServiceMux;->getServerAddress(Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/masf/MobileServiceMux;->asyncFactory:Lcom/google/common/async/AsyncHttpRequestFactory;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/google/common/async/AsyncHttpRequestFactory;->createAsyncHttpRequest(Ljava/lang/String;I)Lcom/google/common/async/AsyncHttpRequest;

    move-result-object v3

    const-string v1, "POST"

    invoke-interface {v3, v1}, Lcom/google/common/async/AsyncHttpRequest;->setMethod(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v5

    invoke-interface {v3, v0}, Lcom/google/common/async/AsyncHttpRequest;->setPayload(Ljava/io/InputStream;)V

    iget-wide v0, p0, Lcom/google/masf/MobileServiceMux;->workerTimeout:J

    invoke-interface {v3, v0, v1}, Lcom/google/common/async/AsyncHttpRequest;->setWatchdogDelay(J)V

    const-string v0, "application/binary"

    invoke-interface {v3, v0}, Lcom/google/common/async/AsyncHttpRequest;->setContentType(Ljava/lang/String;)V

    new-instance v0, Lcom/google/masf/MobileServiceMux$4;

    iget-object v2, p0, Lcom/google/masf/MobileServiceMux;->taskRunner:Lcom/google/common/task/TaskRunner;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/masf/MobileServiceMux$4;-><init>(Lcom/google/masf/MobileServiceMux;Lcom/google/common/task/TaskRunner;Lcom/google/common/async/AsyncHttpRequest;[Lcom/google/masf/protocol/Request;I)V

    sget-object v1, Lcom/google/masf/MobileServiceMux;->logger:Lcom/google/debug/LogSource;

    const-string v2, "Scheduling a submit request"

    invoke-virtual {v1, v2}, Lcom/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    invoke-interface {v3, v0}, Lcom/google/common/async/AsyncHttpRequest;->submit(Lcom/google/common/task/AbstractTask;)V

    return-void
.end method

.method public submitRequest(Lcom/google/masf/protocol/Request;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/masf/MobileServiceMux;->submitRequest(Lcom/google/masf/protocol/Request;Z)V

    return-void
.end method

.method public submitRequest(Lcom/google/masf/protocol/Request;Z)V
    .registers 9

    iget-object v1, p0, Lcom/google/masf/MobileServiceMux;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p1}, Lcom/google/masf/protocol/Request;->updateSubmit()V

    invoke-direct {p0}, Lcom/google/masf/MobileServiceMux;->nextRequestId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/masf/protocol/Request;->setId(I)V

    if-eqz p2, :cond_26

    invoke-virtual {p1}, Lcom/google/masf/protocol/Request;->getRetryStartTimestamp()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_26

    invoke-virtual {p1}, Lcom/google/masf/protocol/Request;->flagImmediate()V

    iget-object v0, p0, Lcom/google/masf/MobileServiceMux;->submitRequestQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/masf/MobileServiceMux;->scheduleFlush()V

    :goto_24
    monitor-exit v1

    return-void

    :cond_26
    iget-object v0, p0, Lcom/google/masf/MobileServiceMux;->delayedRequestQueue:Ljava/util/Hashtable;

    const-string v2, ""

    invoke-virtual {v0, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/masf/MobileServiceMux;->scheduleDelayedFlush()V

    goto :goto_24

    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v0
.end method
