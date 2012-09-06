.class public final Lady;
.super Lado;
.source "ApacheHttpTransport.java"


# instance fields
.field private final a:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 76
    invoke-static {}, Lady;->a()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    invoke-direct {p0, v0}, Lady;-><init>(Lorg/apache/http/client/HttpClient;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/client/HttpClient;)V
    .registers 5
    .parameter

    .prologue
    .line 99
    invoke-direct {p0}, Lado;-><init>()V

    .line 100
    iput-object p1, p0, Lady;->a:Lorg/apache/http/client/HttpClient;

    .line 101
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 102
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 103
    const-string v1, "http.protocol.handle-redirects"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 104
    return-void
.end method

.method public static a()Lorg/apache/http/impl/client/DefaultHttpClient;
    .registers 7

    .prologue
    const/4 v6, 0x0

    .line 127
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 128
    invoke-static {v0, v6}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 129
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 130
    const/16 v1, 0xc8

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 131
    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 133
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 134
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 135
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v4

    const/16 v5, 0x1bb

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 136
    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 137
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 138
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    invoke-direct {v0, v6, v6}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    invoke-virtual {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 139
    return-object v1
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;)Ladr;
    .registers 3
    .parameter

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lady;->a(Ljava/lang/String;)Ladw;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ladw;
    .registers 5
    .parameter

    .prologue
    .line 154
    new-instance v0, Ladw;

    iget-object v1, p0, Lady;->a:Lorg/apache/http/client/HttpClient;

    new-instance v2, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Ladw;-><init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;)V

    return-object v0
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 144
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic b(Ljava/lang/String;)Ladr;
    .registers 3
    .parameter

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lady;->b(Ljava/lang/String;)Ladw;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ladw;
    .registers 5
    .parameter

    .prologue
    .line 159
    new-instance v0, Ladw;

    iget-object v1, p0, Lady;->a:Lorg/apache/http/client/HttpClient;

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Ladw;-><init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;)V

    return-object v0
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic c(Ljava/lang/String;)Ladr;
    .registers 3
    .parameter

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lady;->c(Ljava/lang/String;)Ladw;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ladw;
    .registers 5
    .parameter

    .prologue
    .line 164
    new-instance v0, Ladw;

    iget-object v1, p0, Lady;->a:Lorg/apache/http/client/HttpClient;

    new-instance v2, Lorg/apache/http/client/methods/HttpHead;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Ladw;-><init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;)V

    return-object v0
.end method

.method public bridge synthetic d(Ljava/lang/String;)Ladr;
    .registers 3
    .parameter

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lady;->d(Ljava/lang/String;)Ladw;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Ladw;
    .registers 5
    .parameter

    .prologue
    .line 169
    new-instance v0, Ladw;

    iget-object v1, p0, Lady;->a:Lorg/apache/http/client/HttpClient;

    new-instance v2, LadA;

    invoke-direct {v2, p1}, LadA;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Ladw;-><init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;)V

    return-object v0
.end method

.method public bridge synthetic e(Ljava/lang/String;)Ladr;
    .registers 3
    .parameter

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lady;->e(Ljava/lang/String;)Ladw;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)Ladw;
    .registers 5
    .parameter

    .prologue
    .line 174
    new-instance v0, Ladw;

    iget-object v1, p0, Lady;->a:Lorg/apache/http/client/HttpClient;

    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Ladw;-><init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;)V

    return-object v0
.end method

.method public bridge synthetic f(Ljava/lang/String;)Ladr;
    .registers 3
    .parameter

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lady;->f(Ljava/lang/String;)Ladw;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)Ladw;
    .registers 5
    .parameter

    .prologue
    .line 179
    new-instance v0, Ladw;

    iget-object v1, p0, Lady;->a:Lorg/apache/http/client/HttpClient;

    new-instance v2, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Ladw;-><init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;)V

    return-object v0
.end method
