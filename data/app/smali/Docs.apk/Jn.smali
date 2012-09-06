.class LJn;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "Api7AndroidHttpClient.java"


# instance fields
.field final synthetic a:LJl;


# direct methods
.method constructor <init>(LJl;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, LJn;->a:LJl;

    invoke-direct {p0, p2, p3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method protected createHttpContext()Lorg/apache/http/protocol/HttpContext;
    .registers 4

    .prologue
    .line 169
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 170
    const-string v1, "http.authscheme-registry"

    invoke-virtual {p0}, LJn;->getAuthSchemes()Lorg/apache/http/auth/AuthSchemeRegistry;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    const-string v1, "http.cookiespec-registry"

    invoke-virtual {p0}, LJn;->getCookieSpecs()Lorg/apache/http/cookie/CookieSpecRegistry;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    const-string v1, "http.auth.credentials-provider"

    invoke-virtual {p0}, LJn;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    return-object v0
.end method

.method protected createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
    .registers 3

    .prologue
    .line 159
    invoke-super {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    .line 160
    invoke-static {}, LJl;->a()Lorg/apache/http/HttpRequestInterceptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 162
    return-object v0
.end method
