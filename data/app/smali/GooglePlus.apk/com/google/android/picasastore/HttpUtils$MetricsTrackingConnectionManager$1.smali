.class Lcom/google/android/picasastore/HttpUtils$MetricsTrackingConnectionManager$1;
.super Ljava/lang/Object;
.source "HttpUtils.java"

# interfaces
.implements Lorg/apache/http/conn/ClientConnectionRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/picasastore/HttpUtils$MetricsTrackingConnectionManager;->requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/picasastore/HttpUtils$MetricsTrackingConnectionManager;

.field final synthetic val$r:Lorg/apache/http/conn/ClientConnectionRequest;


# direct methods
.method constructor <init>(Lcom/google/android/picasastore/HttpUtils$MetricsTrackingConnectionManager;Lorg/apache/http/conn/ClientConnectionRequest;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/android/picasastore/HttpUtils$MetricsTrackingConnectionManager$1;->this$0:Lcom/google/android/picasastore/HttpUtils$MetricsTrackingConnectionManager;

    iput-object p2, p0, Lcom/google/android/picasastore/HttpUtils$MetricsTrackingConnectionManager$1;->val$r:Lorg/apache/http/conn/ClientConnectionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abortRequest()V
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/picasastore/HttpUtils$MetricsTrackingConnectionManager$1;->val$r:Lorg/apache/http/conn/ClientConnectionRequest;

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionRequest;->abortRequest()V

    .line 143
    return-void
.end method

.method public getConnection(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/conn/ManagedClientConnection;
    .registers 7
    .parameter "timeout"
    .parameter "tunit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/apache/http/conn/ConnectionPoolTimeoutException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v2, p0, Lcom/google/android/picasastore/HttpUtils$MetricsTrackingConnectionManager$1;->val$r:Lorg/apache/http/conn/ClientConnectionRequest;

    invoke-interface {v2, p1, p2, p3}, Lorg/apache/http/conn/ClientConnectionRequest;->getConnection(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/conn/ManagedClientConnection;

    move-result-object v0

    .line 134
    .local v0, conn:Lorg/apache/http/conn/ManagedClientConnection;
    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->getMetrics()Lorg/apache/http/HttpConnectionMetrics;

    move-result-object v1

    .line 136
    .local v1, metrics:Lorg/apache/http/HttpConnectionMetrics;
    if-eqz v1, :cond_f

    invoke-interface {v1}, Lorg/apache/http/HttpConnectionMetrics;->reset()V

    .line 137
    :cond_f
    return-object v0
.end method
