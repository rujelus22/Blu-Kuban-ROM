.class public Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;
.super Ljava/lang/Object;
.source "MultiThreadedHttpConnectionManager.java"

# interfaces
.implements Lorg/apache/commons/httpclient/HttpConnectionManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$1;,
        Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;,
        Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;,
        Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;,
        Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;,
        Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;,
        Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionSource;,
        Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;
    }
.end annotation


# static fields
.field private static ALL_CONNECTION_MANAGERS:Ljava/util/WeakHashMap;

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field private static final REFERENCE_QUEUE:Ljava/lang/ref/ReferenceQueue;

.field private static final REFERENCE_TO_CONNECTION_SOURCE:Ljava/util/Map;


# instance fields
.field private connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

.field private params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

.field private volatile shutdown:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 117
    const-class v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->LOG:Lorg/apache/commons/logging/Log;

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_TO_CONNECTION_SOURCE:Ljava/util/Map;

    .line 140
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_QUEUE:Ljava/lang/ref/ReferenceQueue;

    .line 152
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->ALL_CONNECTION_MANAGERS:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 383
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 369
    new-instance v0, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    .line 375
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->shutdown:Z

    .line 385
    new-instance v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;-><init>(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$1;)V

    iput-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    .line 387
    sget-object v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->ALL_CONNECTION_MANAGERS:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 389
    :try_start_18
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->ALL_CONNECTION_MANAGERS:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    monitor-exit v1

    .line 393
    return-void

    .line 391
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_20

    throw v0
.end method

.method static synthetic access$1100(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;Lorg/apache/commons/httpclient/HttpConnection;)Lorg/apache/commons/httpclient/HostConfiguration;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->configurationForConnection(Lorg/apache/commons/httpclient/HttpConnection;)Lorg/apache/commons/httpclient/HostConfiguration;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 111
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->shutdown:Z

    return v0
.end method

.method static synthetic access$1300(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 111
    invoke-static {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->removeReferenceToConnection(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;)V

    return-void
.end method

.method static synthetic access$1400()Ljava/util/Map;
    .registers 1

    .prologue
    .line 111
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_TO_CONNECTION_SOURCE:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1500()Ljava/lang/ref/ReferenceQueue;
    .registers 1

    .prologue
    .line 111
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_QUEUE:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method static synthetic access$700()Lorg/apache/commons/logging/Log;
    .registers 1

    .prologue
    .line 111
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->LOG:Lorg/apache/commons/logging/Log;

    return-object v0
.end method

.method private configurationForConnection(Lorg/apache/commons/httpclient/HttpConnection;)Lorg/apache/commons/httpclient/HostConfiguration;
    .registers 6
    .parameter "conn"

    .prologue
    .line 953
    new-instance v0, Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/HostConfiguration;-><init>()V

    .line 955
    .local v0, connectionConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getPort()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/httpclient/HostConfiguration;->setHost(Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V

    .line 965
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 967
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/HostConfiguration;->setLocalAddress(Ljava/net/InetAddress;)V

    .line 971
    :cond_21
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 973
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyPort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/httpclient/HostConfiguration;->setProxy(Ljava/lang/String;I)V

    .line 977
    :cond_32
    return-object v0
.end method

.method private static removeReferenceToConnection(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;)V
    .registers 4
    .parameter "connection"

    .prologue
    .line 355
    sget-object v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_TO_CONNECTION_SOURCE:Ljava/util/Map;

    monitor-enter v1

    .line 357
    :try_start_3
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_TO_CONNECTION_SOURCE:Ljava/util/Map;

    iget-object v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;->reference:Ljava/lang/ref/WeakReference;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    monitor-exit v1

    .line 361
    return-void

    .line 359
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method


# virtual methods
.method public closeIdleConnections(J)V
    .registers 4
    .parameter "idleTimeout"

    .prologue
    .line 904
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->closeIdleConnections(J)V

    .line 906
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->deleteClosedConnections()V

    .line 908
    return-void
.end method

.method public deleteClosedConnections()V
    .registers 2

    .prologue
    .line 894
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->deleteClosedConnections()V

    .line 896
    return-void
.end method

.method public getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;
    .registers 2

    .prologue
    .line 991
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    return-object v0
.end method

.method public releaseConnection(Lorg/apache/commons/httpclient/HttpConnection;)V
    .registers 4
    .parameter "conn"

    .prologue
    .line 920
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnectionManager.releaseConnection(HttpConnection)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 922
    instance-of v0, p1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;

    if-eqz v0, :cond_11

    .line 926
    check-cast p1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;

    .end local p1
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->getWrappedConnection()Lorg/apache/commons/httpclient/HttpConnection;

    move-result-object p1

    .line 938
    .restart local p1
    :cond_11
    invoke-static {p1}, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->finishLastResponse(Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 940
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->freeConnection(Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 942
    return-void
.end method
