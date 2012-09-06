.class public Lcom/google/android/apps/unveil/network/HttpClientFactory;
.super Ljava/lang/Object;
.source "HttpClientFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/network/HttpClientFactory$MonitoringConnPool;,
        Lcom/google/android/apps/unveil/network/HttpClientFactory$MonitoringTSCCManager;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field protected static final MAX_CONNECTIONS_PER_ROUTE:I = 0x0

.field private static final MAX_TOTAL_CONNECTIONS:I = 0x1e

.field static final MONITOR_CONNECTIONS:Z = true

.field public static final SSL_HANDSHAKE_TIMEOUT_MS:I = 0x7530

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/network/HttpClientFactory;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    .line 50
    invoke-static {}, Lcom/google/android/apps/unveil/network/HttpClientFactory;->getMaxConnectionsPerRoute()I

    move-result v0

    sput v0, Lcom/google/android/apps/unveil/network/HttpClientFactory;->MAX_CONNECTIONS_PER_ROUTE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    return-void
.end method

.method private static getMaxConnectionsPerRoute()I
    .registers 1

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, maxConnections:I
    add-int/lit8 v0, v0, 0x2

    .line 79
    add-int/lit8 v0, v0, 0x3

    .line 80
    add-int/lit8 v0, v0, 0x2

    .line 81
    add-int/lit8 v0, v0, 0x2

    .line 82
    return v0
.end method

.method public static make(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;
    .registers 4
    .parameter "context"

    .prologue
    .line 72
    invoke-static {}, Lcom/google/android/apps/unveil/network/HttpClientFactory;->makeHttpParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 73
    .local v0, params:Lorg/apache/http/params/HttpParams;
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-static {p0, v0}, Lcom/google/android/apps/unveil/network/HttpClientFactory;->makeClientConnectionManager(Landroid/content/Context;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v1
.end method

.method private static makeClientConnectionManager(Landroid/content/Context;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    .registers 4
    .parameter "context"
    .parameter "params"

    .prologue
    .line 127
    invoke-static {p0}, Lcom/google/android/apps/unveil/network/FroyoSchemeRegistryFactory;->get(Landroid/content/Context;)Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    .line 129
    .local v0, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v1, Lcom/google/android/apps/unveil/network/HttpClientFactory$MonitoringTSCCManager;

    invoke-direct {v1, p1, v0}, Lcom/google/android/apps/unveil/network/HttpClientFactory$MonitoringTSCCManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    return-object v1
.end method

.method private static makeHttpParams()Lorg/apache/http/params/HttpParams;
    .registers 2

    .prologue
    .line 89
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 90
    .local v0, params:Lorg/apache/http/params/HttpParams;
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 91
    const-string v1, "ISO-8859-1"

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 98
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 99
    const/16 v1, 0x4e20

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 101
    const/16 v1, 0x7530

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 106
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 109
    const/16 v1, 0x1e

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 110
    new-instance v1, Lcom/google/android/apps/unveil/network/HttpClientFactory$1;

    invoke-direct {v1}, Lcom/google/android/apps/unveil/network/HttpClientFactory$1;-><init>()V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 116
    return-object v0
.end method
