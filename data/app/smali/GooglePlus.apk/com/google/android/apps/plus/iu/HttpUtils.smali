.class Lcom/google/android/apps/plus/iu/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/iu/HttpUtils$MetricsTrackingConnectionManager;
    }
.end annotation


# static fields
.field private static final sConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

.field private static final sHttpClientParams:Lorg/apache/http/params/HttpParams;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/16 v6, 0x4e20

    .line 48
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 49
    .local v0, params:Lorg/apache/http/params/HttpParams;
    const-wide/16 v2, 0x4e20

    invoke-static {v0, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 52
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 53
    .local v1, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 54
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v4

    const/16 v5, 0x1bb

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 57
    new-instance v2, Lcom/google/android/apps/plus/iu/HttpUtils$MetricsTrackingConnectionManager;

    invoke-direct {v2, v0, v1}, Lcom/google/android/apps/plus/iu/HttpUtils$MetricsTrackingConnectionManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    sput-object v2, Lcom/google/android/apps/plus/iu/HttpUtils;->sConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 59
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    .end local v0           #params:Lorg/apache/http/params/HttpParams;
    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 60
    .restart local v0       #params:Lorg/apache/http/params/HttpParams;
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 61
    invoke-static {v0, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 62
    invoke-static {v0, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 63
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 64
    const-string v2, "InstantUploadSync/1.0"

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 65
    sput-object v0, Lcom/google/android/apps/plus/iu/HttpUtils;->sHttpClientParams:Lorg/apache/http/params/HttpParams;

    .line 66
    return-void
.end method

.method public static createHttpClient(Ljava/lang/String;)Lorg/apache/http/client/HttpClient;
    .registers 4
    .parameter "userAgent"

    .prologue
    .line 72
    sget-object v1, Lcom/google/android/apps/plus/iu/HttpUtils;->sHttpClientParams:Lorg/apache/http/params/HttpParams;

    invoke-interface {v1}, Lorg/apache/http/params/HttpParams;->copy()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 73
    .local v0, httpParams:Lorg/apache/http/params/HttpParams;
    invoke-static {v0, p0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 74
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-static {}, Lcom/google/android/apps/plus/iu/HttpUtils;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v1
.end method

.method public static getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .registers 1

    .prologue
    .line 78
    sget-object v0, Lcom/google/android/apps/plus/iu/HttpUtils;->sConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    return-object v0
.end method
