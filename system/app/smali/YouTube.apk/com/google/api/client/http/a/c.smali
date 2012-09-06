.class public final Lcom/google/api/client/http/a/c;
.super Lcom/google/api/client/http/r;
.source "SourceFile"


# instance fields
.field private final b:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>()V
    .registers 7

    .prologue
    .line 75
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v4

    const/16 v5, 0x1bb

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    invoke-direct {p0, v1}, Lcom/google/api/client/http/a/c;-><init>(Lorg/apache/http/client/HttpClient;)V

    .line 76
    return-void
.end method

.method private constructor <init>(Lorg/apache/http/client/HttpClient;)V
    .registers 5
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/google/api/client/http/r;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/google/api/client/http/a/c;->b:Lorg/apache/http/client/HttpClient;

    .line 100
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 101
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 102
    const-string v1, "http.protocol.handle-redirects"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 103
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;)Lcom/google/api/client/http/u;
    .registers 5
    .parameter

    .prologue
    .line 64
    new-instance v0, Lcom/google/api/client/http/a/a;

    iget-object v1, p0, Lcom/google/api/client/http/a/c;->b:Lorg/apache/http/client/HttpClient;

    new-instance v2, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/http/a/a;-><init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;)V

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/String;)Lcom/google/api/client/http/u;
    .registers 5
    .parameter

    .prologue
    .line 64
    new-instance v0, Lcom/google/api/client/http/a/a;

    iget-object v1, p0, Lcom/google/api/client/http/a/c;->b:Lorg/apache/http/client/HttpClient;

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/http/a/a;-><init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;)V

    return-object v0
.end method

.method public final synthetic c(Ljava/lang/String;)Lcom/google/api/client/http/u;
    .registers 5
    .parameter

    .prologue
    .line 64
    new-instance v0, Lcom/google/api/client/http/a/a;

    iget-object v1, p0, Lcom/google/api/client/http/a/c;->b:Lorg/apache/http/client/HttpClient;

    new-instance v2, Lorg/apache/http/client/methods/HttpHead;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/http/a/a;-><init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;)V

    return-object v0
.end method

.method public final c()Z
    .registers 2

    .prologue
    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic d(Ljava/lang/String;)Lcom/google/api/client/http/u;
    .registers 5
    .parameter

    .prologue
    .line 64
    new-instance v0, Lcom/google/api/client/http/a/a;

    iget-object v1, p0, Lcom/google/api/client/http/a/c;->b:Lorg/apache/http/client/HttpClient;

    new-instance v2, Lcom/google/api/client/http/a/e;

    invoke-direct {v2, p1}, Lcom/google/api/client/http/a/e;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/http/a/a;-><init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;)V

    return-object v0
.end method

.method public final d()Z
    .registers 2

    .prologue
    .line 144
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic e(Ljava/lang/String;)Lcom/google/api/client/http/u;
    .registers 5
    .parameter

    .prologue
    .line 64
    new-instance v0, Lcom/google/api/client/http/a/a;

    iget-object v1, p0, Lcom/google/api/client/http/a/c;->b:Lorg/apache/http/client/HttpClient;

    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/http/a/a;-><init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;)V

    return-object v0
.end method

.method public final synthetic f(Ljava/lang/String;)Lcom/google/api/client/http/u;
    .registers 5
    .parameter

    .prologue
    .line 64
    new-instance v0, Lcom/google/api/client/http/a/a;

    iget-object v1, p0, Lcom/google/api/client/http/a/c;->b:Lorg/apache/http/client/HttpClient;

    new-instance v2, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/http/a/a;-><init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;)V

    return-object v0
.end method
