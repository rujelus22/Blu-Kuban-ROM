.class public Lcom/google/android/apps/unveil/network/utils/ConnectionCountMonitor;
.super Ljava/lang/Object;
.source "ConnectionCountMonitor.java"


# static fields
.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 23
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-class v1, Lcom/google/android/apps/unveil/network/utils/ConnectionCountMonitor;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/unveil/network/utils/ConnectionCountMonitor;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkConnectionCounts(Lcom/google/android/apps/unveil/network/HttpClientFactory$MonitoringTSCCManager;Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;Lorg/apache/http/params/HttpParams;)V
    .registers 4
    .parameter "connMan"
    .parameter "rospl"
    .parameter "params"

    .prologue
    .line 54
    invoke-static {p1}, Lcom/google/android/apps/unveil/network/utils/ConnectionCountMonitor;->checkRouteConnectionCounts(Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;)V

    .line 55
    invoke-static {p2}, Lorg/apache/http/conn/params/ConnManagerParams;->getMaxTotalConnections(Lorg/apache/http/params/HttpParams;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/apps/unveil/network/utils/ConnectionCountMonitor;->checkTotalConnectionCount(Lcom/google/android/apps/unveil/network/HttpClientFactory$MonitoringTSCCManager;I)V

    .line 56
    return-void
.end method

.method private static checkRouteConnectionCounts(Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;)V
    .registers 10
    .parameter "routePool"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 27
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->getEntryCount()I

    move-result v0

    .line 28
    .local v0, hostConnectionCount:I
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->getMaxEntries()I

    move-result v1

    .line 29
    .local v1, hostConnectionMax:I
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, hostName:Ljava/lang/String;
    if-ne v0, v1, :cond_2b

    .line 32
    sget-object v3, Lcom/google/android/apps/unveil/network/utils/ConnectionCountMonitor;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v4, "Connections to %s exhausted: per route max=%d"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    :goto_2a
    return-void

    .line 34
    :cond_2b
    sget-object v3, Lcom/google/android/apps/unveil/network/utils/ConnectionCountMonitor;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v4, "Connections to %s: %d/%d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2a
.end method

.method private static checkTotalConnectionCount(Lcom/google/android/apps/unveil/network/HttpClientFactory$MonitoringTSCCManager;I)V
    .registers 9
    .parameter "connMan"
    .parameter "maxConnections"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 40
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/network/HttpClientFactory$MonitoringTSCCManager;->getConnectionsInPool()I

    move-result v0

    .line 41
    .local v0, totalConnections:I
    if-ne v0, p1, :cond_18

    .line 42
    sget-object v1, Lcom/google/android/apps/unveil/network/utils/ConnectionCountMonitor;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Connections exhausted: max=%d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    :goto_17
    return-void

    .line 44
    :cond_18
    sget-object v1, Lcom/google/android/apps/unveil/network/utils/ConnectionCountMonitor;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Total connections: %d/%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_17
.end method
