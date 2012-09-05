.class Lcom/google/android/picasasync/HttpUtils$MetricsTrackingConnectionManager;
.super Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
.source "HttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/HttpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MetricsTrackingConnectionManager"
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .registers 3
    .parameter "params"
    .parameter "schreg"

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 119
    return-void
.end method


# virtual methods
.method public releaseConnection(Lorg/apache/http/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    .registers 8
    .parameter "conn"
    .parameter "validDuration"
    .parameter "timeUnit"

    .prologue
    .line 145
    invoke-interface {p1}, Lorg/apache/http/conn/ManagedClientConnection;->getMetrics()Lorg/apache/http/HttpConnectionMetrics;

    move-result-object v0

    .line 146
    .local v0, m:Lorg/apache/http/HttpConnectionMetrics;
    if-eqz v0, :cond_14

    .line 147
    invoke-interface {v0}, Lorg/apache/http/HttpConnectionMetrics;->getReceivedBytesCount()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/picasasync/MetricsUtils;->incrementInBytes(J)V

    .line 148
    invoke-interface {v0}, Lorg/apache/http/HttpConnectionMetrics;->getSentBytesCount()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/picasasync/MetricsUtils;->incrementOutBytes(J)V

    .line 150
    :cond_14
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->releaseConnection(Lorg/apache/http/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V

    .line 151
    return-void
.end method

.method public requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;
    .registers 5
    .parameter "route"
    .parameter "state"

    .prologue
    .line 123
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;

    move-result-object v0

    .line 124
    .local v0, r:Lorg/apache/http/conn/ClientConnectionRequest;
    new-instance v1, Lcom/google/android/picasasync/HttpUtils$MetricsTrackingConnectionManager$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/picasasync/HttpUtils$MetricsTrackingConnectionManager$1;-><init>(Lcom/google/android/picasasync/HttpUtils$MetricsTrackingConnectionManager;Lorg/apache/http/conn/ClientConnectionRequest;)V

    return-object v1
.end method
