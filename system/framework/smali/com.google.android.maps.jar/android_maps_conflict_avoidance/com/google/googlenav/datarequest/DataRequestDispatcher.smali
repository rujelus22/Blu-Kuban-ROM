.class public Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;
.super Ljava/lang/Object;
.source "DataRequestDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$1;,
        Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DataRequestEventUploader;,
        Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;,
        Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$CookieDataRequest;
    }
.end annotation


# static fields
.field public static final MAX_WORKER_THREAD_COUNT:I

.field private static volatile instance:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

.field private static requestId:I


# instance fields
.field protected volatile active:Z

.field protected bytesReceived:I

.field protected bytesSent:I

.field private final clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

.field protected connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

.field protected cookie:J

.field protected final debug:Z

.field protected final defaultServer:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;

.field protected final distributionChannel:Ljava/lang/String;

.field private errorRetryTime:J

.field private firstConnectionErrorTime:J

.field protected globalSpecialUrlArguments:Ljava/lang/String;

.field private volatile lastActiveTime:J

.field private lastException:Ljava/lang/Throwable;

.field private lastExceptionTime:J

.field private volatile lastSuccessTime:J

.field private final listeners:Ljava/util/Vector;

.field private maxNetworkErrorRetryTimeout:J

.field protected volatile mockLostDataConnection:Z

.field private volatile networkErrorMode:Z

.field private volatile networkSpeedBytesPerSecond:I

.field protected final platformID:Ljava/lang/String;

.field protected final properties:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

.field protected volatile serverAddress:Ljava/lang/String;

.field protected final softwareVersion:Ljava/lang/String;

.field private volatile suspendCount:I

.field protected thirdPartyServers:Ljava/util/Vector;

.field private final threadDispatchLock:Ljava/lang/Object;

.field protected warmUpManager:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;

.field private volatile workerForegroundThreadCount:I

.field private volatile workerSubmissionThreadCount:I

.field private volatile workerThreadCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 287
    const/4 v0, 0x0

    sput v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->requestId:I

    .line 316
    const/4 v0, 0x4

    sput v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->MAX_WORKER_THREAD_COUNT:I

    .line 320
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12
    .parameter "serverAddress"
    .parameter "platformID"
    .parameter "softwareVersion"
    .parameter "distributionChannel"
    .parameter "debug"

    .prologue
    const-wide/high16 v4, -0x8000

    const/4 v3, 0x0

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->thirdPartyServers:Ljava/util/Vector;

    .line 139
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->listeners:Ljava/util/Vector;

    .line 187
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->maxNetworkErrorRetryTimeout:J

    .line 197
    iput-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->active:Z

    .line 211
    iput-wide v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->lastActiveTime:J

    .line 217
    iput-wide v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->lastSuccessTime:J

    .line 232
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J

    .line 239
    iput-wide v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->firstConnectionErrorTime:J

    .line 242
    iput v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerThreadCount:I

    .line 248
    iput v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerForegroundThreadCount:I

    .line 255
    iput v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerSubmissionThreadCount:I

    .line 258
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->threadDispatchLock:Ljava/lang/Object;

    .line 272
    const/4 v0, -0x1

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->networkSpeedBytesPerSecond:I

    .line 375
    if-eqz p1, :cond_3d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_43

    .line 376
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 378
    :cond_43
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->serverAddress:Ljava/lang/String;

    .line 379
    iput-object p3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->softwareVersion:Ljava/lang/String;

    .line 380
    iput-object p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->platformID:Ljava/lang/String;

    .line 381
    iput-object p4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->distributionChannel:Ljava/lang/String;

    .line 382
    iput-boolean p5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->debug:Z

    .line 383
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getConnectionFactory()Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    move-result-object v0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    .line 384
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    .line 385
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    invoke-direct {v0, p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;Landroid_maps_conflict_avoidance/com/google/common/Clock;)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->warmUpManager:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;

    .line 386
    iput v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->bytesSent:I

    .line 387
    iput v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->bytesReceived:I

    .line 388
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->serverAddress:Ljava/lang/String;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-direct {v0, p0, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/String;Ljava/util/Vector;B)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->defaultServer:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;

    .line 390
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->loadOrRequestCookie()J

    move-result-wide v0

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->cookie:J

    .line 392
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    sget-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/proto/GmmMessageTypes;->CLIENT_PROPERTIES_REQUEST_PROTO:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->properties:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    .line 395
    return-void
.end method

.method static synthetic access$1002(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-wide p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->lastSuccessTime:J

    return-wide p1
.end method

.method static synthetic access$1100(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;ILjava/lang/Throwable;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->handleError(ILjava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$200(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->threadDispatchLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$308(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerThreadCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerThreadCount:I

    return v0
.end method

.method static synthetic access$310(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerThreadCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerThreadCount:I

    return v0
.end method

.method static synthetic access$408(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerForegroundThreadCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerForegroundThreadCount:I

    return v0
.end method

.method static synthetic access$410(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerForegroundThreadCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerForegroundThreadCount:I

    return v0
.end method

.method static synthetic access$508(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerSubmissionThreadCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerSubmissionThreadCount:I

    return v0
.end method

.method static synthetic access$510(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerSubmissionThreadCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerSubmissionThreadCount:I

    return v0
.end method

.method static synthetic access$602(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-wide p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->lastActiveTime:J

    return-wide p1
.end method

.method static synthetic access$700(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)Landroid_maps_conflict_avoidance/com/google/common/Clock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    return-object v0
.end method

.method static synthetic access$800(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 53
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J

    return-wide v0
.end method

.method static synthetic access$900(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->clearNetworkError()V

    return-void
.end method

.method private addClientPropertiesRequest(Ljava/util/Vector;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;)V
    .registers 7
    .parameter "requests"
    .parameter "dispatcherServer"

    .prologue
    const/4 v3, 0x0

    .line 1175
    const/16 v2, 0x3e

    invoke-virtual {p2, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->canHandle(I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1176
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ClientPropertiesRequest;

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->properties:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    invoke-direct {v0, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ClientPropertiesRequest;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V

    .line 1178
    .local v0, clientProperties:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ClientPropertiesRequest;
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_28

    .line 1179
    invoke-virtual {p1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    .line 1180
    .local v1, request:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    instance-of v2, v1, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ClientPropertiesRequest;

    if-eqz v2, :cond_24

    .line 1182
    invoke-virtual {p1, v0, v3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 1190
    .end local v0           #clientProperties:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ClientPropertiesRequest;
    .end local v1           #request:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    :cond_23
    :goto_23
    return-void

    .line 1184
    .restart local v0       #clientProperties:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ClientPropertiesRequest;
    .restart local v1       #request:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    :cond_24
    invoke-virtual {p1, v0, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_23

    .line 1187
    .end local v1           #request:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    :cond_28
    invoke-virtual {p1, v0, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_23
.end method

.method private declared-synchronized clearNetworkError()V
    .registers 3

    .prologue
    .line 787
    monitor-enter p0

    const-wide/high16 v0, -0x8000

    :try_start_3
    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->firstConnectionErrorTime:J

    .line 788
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->networkErrorMode:Z

    .line 789
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 790
    monitor-exit p0

    return-void

    .line 787
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected static containsForegroundRequest(Ljava/util/Vector;)Z
    .registers 4
    .parameter "requests"

    .prologue
    .line 1211
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_18

    .line 1212
    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    .line 1213
    .local v1, request:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->isForeground()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1214
    const/4 v2, 0x1

    .line 1218
    .end local v1           #request:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    :goto_14
    return v2

    .line 1211
    .restart local v1       #request:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1218
    .end local v1           #request:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    :cond_18
    const/4 v2, 0x0

    goto :goto_14
.end method

.method protected static containsSubmissionRequest(Ljava/util/Vector;)Z
    .registers 4
    .parameter "requests"

    .prologue
    .line 1223
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_18

    .line 1224
    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    .line 1225
    .local v1, request:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->isSubmission()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1226
    const/4 v2, 0x1

    .line 1229
    .end local v1           #request:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    :goto_14
    return v2

    .line 1223
    .restart local v1       #request:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1229
    .end local v1           #request:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    :cond_18
    const/4 v2, 0x0

    goto :goto_14
.end method

.method public static declared-synchronized createInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;
    .registers 12
    .parameter "serverAddress"
    .parameter "platformID"
    .parameter "softwareVersion"
    .parameter "distributionChannel"
    .parameter "debug"

    .prologue
    .line 337
    const-class v6, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    monitor-enter v6

    :try_start_3
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->instance:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    if-eqz v0, :cond_12

    .line 338
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempting to create multiple DataRequestDispatchers"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 337
    :catchall_f
    move-exception v0

    monitor-exit v6

    throw v0

    .line 341
    :cond_12
    :try_start_12
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->instance:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    .line 343
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DataRequestEventUploader;

    sget-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->instance:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DataRequestEventUploader;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$1;)V

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->setLogSaver(Landroid_maps_conflict_avoidance/com/google/common/Log$LogSaver;)V

    .line 344
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->instance:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_f

    monitor-exit v6

    return-object v0
.end method

.method public static getInstance()Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;
    .registers 1

    .prologue
    .line 348
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->instance:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    return-object v0
.end method

.method private handleError(ILjava/lang/Throwable;)V
    .registers 8
    .parameter "code"
    .parameter "t"

    .prologue
    const-wide/16 v3, 0x7d0

    .line 801
    const/4 v0, 0x0

    .line 802
    .local v0, call:Z
    monitor-enter p0

    .line 803
    :try_start_4
    iput-object p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->lastException:Ljava/lang/Throwable;

    .line 804
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->lastExceptionTime:J

    .line 807
    if-eqz p2, :cond_17

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/GmmSettings;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 808
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 811
    :cond_17
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;->notifyFailure()V

    .line 813
    iget-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->networkErrorMode:Z

    if-nez v1, :cond_60

    .line 814
    const-wide/16 v1, 0xc8

    iput-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J

    .line 816
    iget-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->firstConnectionErrorTime:J

    const-wide/high16 v3, -0x8000

    cmp-long v1, v1, v3

    if-nez v1, :cond_4f

    .line 817
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->firstConnectionErrorTime:J

    .line 837
    :cond_34
    :goto_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_77

    .line 839
    if-eqz v0, :cond_4e

    .line 842
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4b

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;->usingMDS()Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;->getNetworkWorked()Z

    move-result v1

    if-nez v1, :cond_4b

    .line 845
    const/4 p1, 0x4

    .line 847
    :cond_4b
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->maybeNotifyNetworkError(I)V

    .line 849
    :cond_4e
    return-void

    .line 818
    :cond_4f
    :try_start_4f
    iget-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->firstConnectionErrorTime:J

    const-wide/16 v3, 0x3a98

    add-long/2addr v1, v3

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_34

    .line 822
    const/4 v0, 0x1

    goto :goto_34

    .line 825
    :cond_60
    iget-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_7a

    .line 826
    const-wide/16 v1, 0x7d0

    iput-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J

    .line 833
    :goto_6a
    iget-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J

    iget-wide v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->maxNetworkErrorRetryTimeout:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_34

    .line 834
    iget-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->maxNetworkErrorRetryTimeout:J

    iput-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J

    goto :goto_34

    .line 837
    :catchall_77
    move-exception v1

    monitor-exit p0
    :try_end_79
    .catchall {:try_start_4f .. :try_end_79} :catchall_77

    throw v1

    .line 829
    :cond_7a
    :try_start_7a
    iget-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J

    const-wide/16 v3, 0x5

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x4

    div-long/2addr v1, v3

    iput-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_77

    goto :goto_6a
.end method

.method static saveCookie(J)V
    .registers 8
    .parameter "cookie"

    .prologue
    .line 1238
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1239
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1240
    .local v1, dos:Ljava/io/DataOutput;
    invoke-interface {v1, p0, p1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 1241
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v4

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v3

    .line 1242
    .local v3, store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;
    const-string v4, "SessionID"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    .line 1246
    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->savePreferences()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_21} :catch_22

    .line 1251
    return-void

    .line 1247
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #dos:Ljava/io/DataOutput;
    .end local v3           #store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;
    :catch_22
    move-exception v2

    .line 1249
    .local v2, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public addDataRequest(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V
    .registers 7
    .parameter "dataRequest"

    .prologue
    .line 612
    iget-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->mockLostDataConnection:Z

    if-eqz v2, :cond_a

    .line 613
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->notifyNetworkError(IZLjava/lang/String;)V

    .line 617
    :cond_a
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->thirdPartyServers:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_2c

    .line 618
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->thirdPartyServers:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;

    .line 619
    .local v1, tps:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;
    invoke-interface {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->canHandle(I)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 620
    invoke-virtual {v1, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->addDataRequest(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V

    .line 627
    .end local v1           #tps:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;
    :goto_28
    return-void

    .line 617
    .restart local v1       #tps:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 626
    .end local v1           #tps:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;
    :cond_2c
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->defaultServer:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;

    invoke-virtual {v2, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->addDataRequest(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V

    goto :goto_28
.end method

.method public declared-synchronized addDataRequestListener(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;)V
    .registers 3
    .parameter "listenerData"

    .prologue
    .line 513
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 514
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 516
    :cond_e
    monitor-exit p0

    return-void

    .line 513
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final addSimpleRequest(I[BZZ)V
    .registers 6
    .parameter "requestType"
    .parameter "data"
    .parameter "immediate"
    .parameter "foreground"

    .prologue
    .line 1204
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;-><init>(I[BZZ)V

    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->addDataRequest(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V

    .line 1206
    return-void
.end method

.method public declared-synchronized canDispatchNow()Z
    .registers 3

    .prologue
    .line 670
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->active:Z

    if-eqz v0, :cond_1a

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerThreadCount:I

    sget v1, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->MAX_WORKER_THREAD_COUNT:I

    if-ge v0, v1, :cond_1a

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;->getNetworkWorkedThisSession()Z

    move-result v0

    if-nez v0, :cond_17

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerThreadCount:I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1c

    if-nez v0, :cond_1a

    :cond_17
    const/4 v0, 0x1

    :goto_18
    monitor-exit p0

    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_18

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public generateRequest(Ljava/util/Vector;Ljava/io/OutputStream;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x17

    .line 1139
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1141
    invoke-direct {p0, p1, p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->addClientPropertiesRequest(Ljava/util/Vector;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;)V

    .line 1143
    iget-byte v0, p3, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->headerFlag:B

    if-nez v0, :cond_48

    .line 1144
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1145
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->cookie:J

    invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1146
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getLocale()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1147
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->platformID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1148
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->softwareVersion:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1149
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->distributionChannel:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1158
    :cond_2c
    :goto_2c
    const/4 v0, 0x0

    move v1, v0

    :goto_2e
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_6a

    .line 1159
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    .line 1161
    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1162
    invoke-interface {v0, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->writeRequestData(Ljava/io/DataOutput;)V

    .line 1158
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2e

    .line 1150
    :cond_48
    iget-byte v0, p3, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->headerFlag:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2c

    .line 1151
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1152
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->cookie:J

    invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1153
    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1154
    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1155
    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1156
    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_2c

    .line 1164
    :cond_6a
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 1165
    return-void
.end method

.method public declared-synchronized isSuspended()Z
    .registers 2

    .prologue
    .line 448
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->suspendCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected loadOrRequestCookie()J
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 493
    const-string v2, "SessionID"

    invoke-static {v2}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->readPreferenceAsDataInput(Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v0

    .line 494
    .local v0, dis:Ljava/io/DataInput;
    if-eqz v0, :cond_1c

    .line 497
    :try_start_9
    invoke-interface {v0}, Ljava/io/DataInput;->readLong()J
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_e

    move-result-wide v2

    .line 506
    :goto_d
    return-wide v2

    .line 498
    :catch_e
    move-exception v1

    .line 501
    .local v1, e:Ljava/io/IOException;
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v2

    const-string v3, "SessionID"

    invoke-interface {v2, v3, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    .line 505
    .end local v1           #e:Ljava/io/IOException;
    :cond_1c
    new-instance v2, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$CookieDataRequest;

    invoke-direct {v2, p0, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$CookieDataRequest;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$1;)V

    invoke-virtual {p0, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->addDataRequest(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V

    .line 506
    const-wide/16 v2, 0x0

    goto :goto_d
.end method

.method protected final maybeNotifyNetworkError(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 581
    const/4 v1, 0x0

    .line 582
    monitor-enter p0

    .line 583
    :try_start_3
    iget-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->networkErrorMode:Z

    if-nez v2, :cond_24

    .line 584
    const-string v1, "DRD: in Error Mode"

    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logToScreen(Ljava/lang/String;)V

    .line 585
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->networkErrorMode:Z

    .line 586
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->firstConnectionErrorTime:J

    .line 589
    :goto_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_21

    .line 591
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;->getNetworkWorked()Z

    move-result v1

    .line 593
    if-eqz v0, :cond_20

    .line 594
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->notifyNetworkError(IZLjava/lang/String;)V

    .line 596
    :cond_20
    return-void

    .line 589
    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0

    :cond_24
    move v0, v1

    goto :goto_13
.end method

.method protected notifyComplete(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V
    .registers 5
    .parameter "dataRequest"

    .prologue
    .line 541
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->snapshotListeners()[Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;

    move-result-object v1

    .line 545
    .local v1, listenersArray:[Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    array-length v2, v1

    if-ge v0, v2, :cond_10

    .line 546
    aget-object v2, v1, v0

    invoke-interface {v2, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;->onComplete(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V

    .line 545
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 548
    :cond_10
    return-void
.end method

.method protected notifyNetworkError(IZLjava/lang/String;)V
    .registers 7
    .parameter "errorCode"
    .parameter "networkEverWorked"
    .parameter "debugMessage"

    .prologue
    .line 555
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->snapshotListeners()[Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;

    move-result-object v1

    .line 558
    .local v1, listenersArray:[Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    array-length v2, v1

    if-ge v0, v2, :cond_10

    .line 559
    aget-object v2, v1, v0

    invoke-interface {v2, p1, p2, p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;->onNetworkError(IZLjava/lang/String;)V

    .line 558
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 561
    :cond_10
    return-void
.end method

.method protected processDataRequest(Ljava/io/DataInput;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1108
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 1109
    invoke-interface {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v1

    if-eq v0, v1, :cond_31

    .line 1113
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " != "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1117
    :cond_31
    invoke-interface {p2, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->readResponseData(Ljava/io/DataInput;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1122
    if-eq p2, p0, :cond_42

    invoke-interface {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_42

    .line 1123
    invoke-virtual {p0, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->notifyComplete(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V

    .line 1129
    :cond_42
    :goto_42
    return-void

    .line 1127
    :cond_43
    iget-object v0, p3, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->serverRequests:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_42
.end method

.method public declared-synchronized removeDataRequestListener(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;)V
    .registers 3
    .parameter "listenerData"

    .prologue
    .line 523
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 524
    monitor-exit p0

    return-void

    .line 523
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetConnectionFactory()V
    .registers 2

    .prologue
    .line 1434
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getConnectionFactory()Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    move-result-object v0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    .line 1435
    return-void
.end method

.method protected serviceRequests(Ljava/util/Vector;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;)V
    .registers 20
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 870
    const/4 v9, 0x0

    .line 871
    const/4 v8, 0x0

    .line 873
    const/4 v7, 0x0

    .line 875
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->warmUpManager:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->onStartServiceRequests(Ljava/lang/Object;)V

    .line 884
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 885
    invoke-virtual/range {p0 .. p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->urlArguments(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v10

    .line 886
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v5, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->generateRequest(Ljava/util/Vector;Ljava/io/OutputStream;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;)V

    .line 889
    new-instance v12, Ljava/lang/StringBuffer;

    const-string v3, "DRD"

    invoke-direct {v12, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 890
    const-string v3, "("

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget v4, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->requestId:I

    add-int/lit8 v6, v4, 0x1

    sput v6, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->requestId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 891
    const/4 v3, 0x0

    move v4, v3

    :goto_3c
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v4, v3, :cond_62

    .line 892
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    .line 893
    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 894
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v4, v3, :cond_5e

    .line 895
    const-string v3, "|"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 891
    :cond_5e
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_3c

    .line 899
    :cond_62
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 908
    :try_start_66
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    invoke-interface {v4}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v5

    .line 909
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget-object v13, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->serverAddress:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v4, v10, v11}, Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;->createConnection(Ljava/lang/String;Z)Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;
    :try_end_8b
    .catchall {:try_start_66 .. :try_end_8b} :catchall_43e

    move-result-object v11

    .line 913
    :try_start_8c
    const-string v4, "Content-Type"

    const-string v9, "application/binary"

    invoke-interface {v11, v4, v9}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    const-string v4, "Content-Length"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v11, v4, v9}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    invoke-interface {v11}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->openDataOutputStream()Ljava/io/DataOutputStream;
    :try_end_af
    .catchall {:try_start_8c .. :try_end_af} :catchall_445

    move-result-object v10

    .line 919
    :try_start_b0
    invoke-virtual {v10, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 920
    move-object/from16 v0, p0

    iget v4, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->bytesSent:I

    array-length v3, v3

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->bytesSent:I

    .line 922
    invoke-interface {v11}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->openDataInputStream()Ljava/io/DataInputStream;
    :try_end_c0
    .catchall {:try_start_b0 .. :try_end_c0} :catchall_44c

    move-result-object v9

    .line 923
    :try_start_c1
    invoke-interface {v11}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->getResponseCode()I

    move-result v7

    .line 924
    invoke-interface {v11}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 925
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    invoke-interface {v4}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v5

    .line 927
    const-string v4, ", "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 928
    const-wide/16 v15, 0x3e8

    cmp-long v4, v13, v15

    if-gez v4, :cond_121

    .line 929
    const-string v4, "<1s"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 934
    :goto_e2
    const/16 v4, 0x1f5

    if-ne v7, v4, :cond_16a

    .line 938
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->maybeNotifyNetworkError(I)V
    :try_end_ec
    .catchall {:try_start_c1 .. :try_end_ec} :catchall_130

    .line 1062
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logToScreen(Ljava/lang/String;)V

    .line 1064
    if-eqz v9, :cond_f8

    .line 1065
    :try_start_f5
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V
    :try_end_f8
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_f8} :catch_426

    .line 1071
    :cond_f8
    :goto_f8
    if-eqz v10, :cond_fd

    .line 1072
    :try_start_fa
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V
    :try_end_fd
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_fd} :catch_429

    .line 1078
    :cond_fd
    :goto_fd
    if-eqz v11, :cond_102

    .line 1079
    :try_start_ff
    invoke-interface {v11}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->close()V
    :try_end_102
    .catch Ljava/io/IOException; {:try_start_ff .. :try_end_102} :catch_42c

    .line 1087
    :cond_102
    :goto_102
    const/4 v3, 0x0

    move v4, v3

    :goto_104
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v4, v3, :cond_41c

    .line 1088
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    .line 1090
    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->retryOnFailure()Z

    move-result v5

    if-nez v5, :cond_11d

    .line 1091
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 1087
    :cond_11d
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_104

    .line 931
    :cond_121
    const-wide/16 v15, 0x3e8

    :try_start_123
    div-long v15, v13, v15

    move-wide v0, v15

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v8, "s"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_12f
    .catchall {:try_start_123 .. :try_end_12f} :catchall_130

    goto :goto_e2

    .line 1062
    :catchall_130
    move-exception v3

    move-object v4, v3

    move-object v5, v10

    move-object v6, v11

    move-object v3, v9

    :goto_135
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logToScreen(Ljava/lang/String;)V

    .line 1064
    if-eqz v3, :cond_141

    .line 1065
    :try_start_13e
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_141
    .catch Ljava/io/IOException; {:try_start_13e .. :try_end_141} :catch_41d

    .line 1071
    :cond_141
    :goto_141
    if-eqz v5, :cond_146

    .line 1072
    :try_start_143
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_146
    .catch Ljava/io/IOException; {:try_start_143 .. :try_end_146} :catch_420

    .line 1078
    :cond_146
    :goto_146
    if-eqz v6, :cond_14b

    .line 1079
    :try_start_148
    invoke-interface {v6}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->close()V
    :try_end_14b
    .catch Ljava/io/IOException; {:try_start_148 .. :try_end_14b} :catch_423

    .line 1087
    :cond_14b
    :goto_14b
    const/4 v3, 0x0

    move v5, v3

    :goto_14d
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v5, v3, :cond_41b

    .line 1088
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    .line 1090
    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->retryOnFailure()Z

    move-result v6

    if-nez v6, :cond_166

    .line 1091
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 1087
    :cond_166
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_14d

    .line 942
    :cond_16a
    const/16 v4, 0xc8

    if-eq v7, v4, :cond_1f9

    .line 943
    :try_start_16e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad Response Code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logToScreen(Ljava/lang/String;)V

    .line 946
    const/16 v3, 0x1f4

    if-ne v7, v3, :cond_1e0

    .line 951
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v3, "Server 500 for request types: "

    invoke-direct {v5, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 952
    const/4 v3, 0x0

    move v4, v3

    :goto_19f
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v4, v3, :cond_1c8

    .line 953
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    .line 954
    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->onServerFailure()V

    .line 955
    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 956
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v4, v3, :cond_1c4

    .line 957
    const/16 v3, 0x2c

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 952
    :cond_1c4
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_19f

    .line 961
    :cond_1c8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->debug:Z

    if-eqz v3, :cond_1e0

    .line 962
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;->getNetworkWorked()Z

    move-result v3

    .line 963
    const/4 v4, 0x7

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->notifyNetworkError(IZLjava/lang/String;)V

    .line 969
    :cond_1e0
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad HTTP response code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 971
    :cond_1f9
    const-string v4, "application/binary"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23e

    .line 972
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad HTTP content type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logToScreen(Ljava/lang/String;)V

    .line 977
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad HTTP content type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 979
    :cond_23e
    invoke-interface {v11}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->getLength()J

    move-result-wide v3

    long-to-int v15, v3

    .line 980
    move-object/from16 v0, p0

    iget v3, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->bytesReceived:I

    add-int/2addr v3, v15

    move-object/from16 v0, p0

    iput v3, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->bytesReceived:I

    .line 982
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    .line 983
    const/16 v4, 0x17

    if-eq v3, v4, :cond_28f

    .line 985
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->maybeNotifyNetworkError(I)V
    :try_end_25a
    .catchall {:try_start_16e .. :try_end_25a} :catchall_130

    .line 1062
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logToScreen(Ljava/lang/String;)V

    .line 1064
    if-eqz v9, :cond_266

    .line 1065
    :try_start_263
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V
    :try_end_266
    .catch Ljava/io/IOException; {:try_start_263 .. :try_end_266} :catch_42f

    .line 1071
    :cond_266
    :goto_266
    if-eqz v10, :cond_26b

    .line 1072
    :try_start_268
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V
    :try_end_26b
    .catch Ljava/io/IOException; {:try_start_268 .. :try_end_26b} :catch_432

    .line 1078
    :cond_26b
    :goto_26b
    if-eqz v11, :cond_270

    .line 1079
    :try_start_26d
    invoke-interface {v11}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->close()V
    :try_end_270
    .catch Ljava/io/IOException; {:try_start_26d .. :try_end_270} :catch_435

    .line 1087
    :cond_270
    :goto_270
    const/4 v3, 0x0

    move v4, v3

    :goto_272
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v4, v3, :cond_41c

    .line 1088
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    .line 1090
    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->retryOnFailure()Z

    move-result v5

    if-nez v5, :cond_28b

    .line 1091
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 1087
    :cond_28b
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_272

    .line 991
    :cond_28f
    const/4 v3, 0x0

    move v4, v3

    :goto_291
    :try_start_291
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v4, v3, :cond_36a

    .line 992
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    :try_end_29f
    .catchall {:try_start_291 .. :try_end_29f} :catchall_130

    .line 994
    :try_start_29f
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v9, v3, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->processDataRequest(Ljava/io/DataInput;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;)V
    :try_end_2a6
    .catchall {:try_start_29f .. :try_end_2a6} :catchall_130
    .catch Ljava/io/IOException; {:try_start_29f .. :try_end_2a6} :catch_2aa
    .catch Ljava/lang/RuntimeException; {:try_start_29f .. :try_end_2a6} :catch_329

    .line 991
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_291

    .line 995
    :catch_2aa
    move-exception v5

    .line 996
    :try_start_2ab
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logToScreen(Ljava/lang/String;)V

    .line 997
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->debug:Z

    if-eqz v6, :cond_2ea

    .line 998
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException processing: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 999
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 1002
    :cond_2ea
    instance-of v6, v5, Ljava/io/EOFException;

    if-eqz v6, :cond_31c

    .line 1006
    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->onServerFailure()V

    .line 1008
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->debug:Z

    if-eqz v6, :cond_31c

    .line 1009
    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v3

    .line 1010
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No server support for data request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1011
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    invoke-interface {v6}, Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;->getNetworkWorked()Z

    move-result v6

    .line 1012
    const/4 v7, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v6, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->notifyNetworkError(IZLjava/lang/String;)V

    .line 1018
    :cond_31c
    const/4 v3, 0x0

    :goto_31d
    if-ge v3, v4, :cond_328

    .line 1019
    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/Vector;->removeElementAt(I)V

    .line 1018
    add-int/lit8 v3, v3, 0x1

    goto :goto_31d

    .line 1021
    :cond_328
    throw v5

    .line 1022
    :catch_329
    move-exception v4

    .line 1023
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RuntimeException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logToScreen(Ljava/lang/String;)V

    .line 1024
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->debug:Z

    if-eqz v5, :cond_369

    .line 1025
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RuntimeException processing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1026
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1028
    :cond_369
    throw v4

    .line 1031
    :cond_36a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v3

    .line 1032
    sub-long/2addr v3, v5

    long-to-int v8, v3

    .line 1034
    const/16 v3, 0x16

    const-string v4, "fb"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4, v7}, Landroid_maps_conflict_avoidance/com/google/common/Log;->addEvent(SLjava/lang/String;Ljava/lang/String;)Z

    .line 1036
    const/16 v3, 0x16

    const-string v4, "lb"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4, v7}, Landroid_maps_conflict_avoidance/com/google/common/Log;->addEvent(SLjava/lang/String;Ljava/lang/String;)Z

    .line 1039
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->warmUpManager:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;

    long-to-int v7, v13

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->onFinishServiceRequests(Ljava/lang/Object;JII)V

    .line 1043
    const/16 v3, 0x2000

    if-lt v15, v3, :cond_3c9

    int-to-long v3, v8

    const-wide/32 v5, 0xea60

    cmp-long v3, v3, v5

    if-gtz v3, :cond_3c9

    .line 1045
    mul-int/lit16 v3, v15, 0x3e8

    div-int/2addr v3, v8

    move-object/from16 v0, p0

    iput v3, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->networkSpeedBytesPerSecond:I

    .line 1051
    :cond_3c9
    const-string v3, ", "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1052
    const/16 v3, 0x3e8

    if-ge v15, v3, :cond_40f

    .line 1053
    const-string v3, "<1kb"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1058
    :goto_3d7
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->removeAllElements()V
    :try_end_3da
    .catchall {:try_start_2ab .. :try_end_3da} :catchall_130

    .line 1062
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logToScreen(Ljava/lang/String;)V

    .line 1064
    if-eqz v9, :cond_3e6

    .line 1065
    :try_start_3e3
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V
    :try_end_3e6
    .catch Ljava/io/IOException; {:try_start_3e3 .. :try_end_3e6} :catch_438

    .line 1071
    :cond_3e6
    :goto_3e6
    if-eqz v10, :cond_3eb

    .line 1072
    :try_start_3e8
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V
    :try_end_3eb
    .catch Ljava/io/IOException; {:try_start_3e8 .. :try_end_3eb} :catch_43a

    .line 1078
    :cond_3eb
    :goto_3eb
    if-eqz v11, :cond_3f0

    .line 1079
    :try_start_3ed
    invoke-interface {v11}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->close()V
    :try_end_3f0
    .catch Ljava/io/IOException; {:try_start_3ed .. :try_end_3f0} :catch_43c

    .line 1087
    :cond_3f0
    :goto_3f0
    const/4 v3, 0x0

    move v4, v3

    :goto_3f2
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v4, v3, :cond_41c

    .line 1088
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    .line 1090
    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->retryOnFailure()Z

    move-result v5

    if-nez v5, :cond_40b

    .line 1091
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 1087
    :cond_40b
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_3f2

    .line 1055
    :cond_40f
    :try_start_40f
    div-int/lit16 v3, v15, 0x3e8

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "kb"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_41a
    .catchall {:try_start_40f .. :try_end_41a} :catchall_130

    goto :goto_3d7

    .line 1062
    :cond_41b
    throw v4

    .line 1096
    :cond_41c
    return-void

    .line 1067
    :catch_41d
    move-exception v3

    goto/16 :goto_141

    .line 1074
    :catch_420
    move-exception v3

    goto/16 :goto_146

    .line 1082
    :catch_423
    move-exception v3

    goto/16 :goto_14b

    .line 1067
    :catch_426
    move-exception v3

    goto/16 :goto_f8

    .line 1074
    :catch_429
    move-exception v3

    goto/16 :goto_fd

    .line 1082
    :catch_42c
    move-exception v3

    goto/16 :goto_102

    .line 1067
    :catch_42f
    move-exception v3

    goto/16 :goto_266

    .line 1074
    :catch_432
    move-exception v3

    goto/16 :goto_26b

    .line 1082
    :catch_435
    move-exception v3

    goto/16 :goto_270

    .line 1067
    :catch_438
    move-exception v3

    goto :goto_3e6

    .line 1074
    :catch_43a
    move-exception v3

    goto :goto_3eb

    .line 1082
    :catch_43c
    move-exception v3

    goto :goto_3f0

    .line 1062
    :catchall_43e
    move-exception v3

    move-object v4, v3

    move-object v5, v8

    move-object v6, v9

    move-object v3, v7

    goto/16 :goto_135

    :catchall_445
    move-exception v3

    move-object v4, v3

    move-object v5, v8

    move-object v6, v11

    move-object v3, v7

    goto/16 :goto_135

    :catchall_44c
    move-exception v3

    move-object v4, v3

    move-object v5, v10

    move-object v6, v11

    move-object v3, v7

    goto/16 :goto_135
.end method

.method public setAndroidLoggingId2(Ljava/lang/String;)V
    .registers 4
    .parameter "androidLoggingId2"

    .prologue
    .line 1337
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->properties:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0x13

    invoke-virtual {v0, v1, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 1339
    return-void
.end method

.method public setAndroidMapKey(Ljava/lang/String;)V
    .registers 4
    .parameter "mapKey"

    .prologue
    .line 1328
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->properties:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 1329
    return-void
.end method

.method public setAndroidSignature(Ljava/lang/String;)V
    .registers 4
    .parameter "signature"

    .prologue
    .line 1332
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->properties:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 1334
    return-void
.end method

.method public setApplicationName(Ljava/lang/String;)V
    .registers 4
    .parameter "applicationName"

    .prologue
    .line 1342
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->properties:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 1344
    return-void
.end method

.method protected declared-synchronized snapshotListeners()[Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;
    .registers 3

    .prologue
    .line 531
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->listeners:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v0, v1, [Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;

    .line 532
    .local v0, listenersArray:[Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->listeners:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 533
    monitor-exit p0

    return-object v0

    .line 531
    .end local v0           #listenersArray:[Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;
    :catchall_10
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public start()V
    .registers 3

    .prologue
    .line 759
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->active:Z

    .line 760
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->thirdPartyServers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 761
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->thirdPartyServers:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->start()V

    .line 760
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 763
    :cond_1a
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->defaultServer:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->start()V

    .line 764
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 755
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->active:Z

    .line 756
    return-void
.end method

.method protected urlArguments(Ljava/util/Vector;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    .line 1265
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1266
    const-string v0, "?"

    .line 1267
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->globalSpecialUrlArguments:Ljava/lang/String;

    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 1268
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1269
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->globalSpecialUrlArguments:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1270
    const-string v0, "&"

    .line 1272
    :cond_19
    const/4 v1, 0x0

    move-object v2, v0

    :goto_1b
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_43

    .line 1273
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    .line 1274
    instance-of v4, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/NeedsSpecialUrl;

    if-eqz v4, :cond_3f

    .line 1275
    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/NeedsSpecialUrl;

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/NeedsSpecialUrl;->getParams()Ljava/lang/String;

    move-result-object v0

    .line 1276
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3f

    .line 1277
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1278
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1279
    const-string v2, "&"

    .line 1272
    :cond_3f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1b

    .line 1283
    :cond_43
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1284
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 1287
    :cond_4d
    return-object v0
.end method
