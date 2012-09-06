.class public abstract Lcom/github/droidfu/http/a;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private static d:Ljava/util/HashMap;


# instance fields
.field protected a:Lorg/apache/http/client/methods/HttpUriRequest;

.field private e:Ljava/util/List;

.field private f:Ldbxyzptlk/w/a;

.field private g:Lorg/apache/http/client/ResponseHandler;

.field private h:Lorg/apache/http/client/HttpRequestRetryHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 65
    const-class v0, Lcom/github/droidfu/http/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/github/droidfu/http/a;->b:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/github/droidfu/http/a;->d:Ljava/util/HashMap;

    .line 81
    invoke-static {}, Lcom/github/droidfu/http/a;->a()V

    .line 82
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/droidfu/http/a;->e:Ljava/util/List;

    .line 95
    new-instance v0, Lcom/github/droidfu/http/b;

    invoke-direct {v0, p0}, Lcom/github/droidfu/http/b;-><init>(Lcom/github/droidfu/http/a;)V

    iput-object v0, p0, Lcom/github/droidfu/http/a;->g:Lorg/apache/http/client/ResponseHandler;

    .line 112
    new-instance v0, Lcom/github/droidfu/http/c;

    invoke-direct {v0, p0}, Lcom/github/droidfu/http/c;-><init>(Lcom/github/droidfu/http/a;)V

    iput-object v0, p0, Lcom/github/droidfu/http/a;->h:Lorg/apache/http/client/HttpRequestRetryHandler;

    return-void
.end method

.method static synthetic a(Lcom/github/droidfu/http/a;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/github/droidfu/http/a;->e:Ljava/util/List;

    return-object v0
.end method

.method private static a()V
    .registers 6

    .prologue
    const/4 v3, 0x6

    .line 151
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 153
    const-wide/16 v1, 0x2710

    invoke-static {v0, v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 154
    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    invoke-direct {v1, v3}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 156
    invoke-static {v0, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 157
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 158
    const-string v1, "Android/DroidFu"

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 160
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 161
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 162
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x1bb

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 164
    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 165
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v1, Lcom/github/droidfu/http/a;->c:Lorg/apache/http/impl/client/AbstractHttpClient;

    .line 166
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 7
    .parameter

    .prologue
    .line 169
    sget-object v0, Lcom/github/droidfu/http/a;->c:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 170
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 171
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 172
    if-nez v0, :cond_15

    .line 186
    :cond_14
    :goto_14
    return-void

    .line 175
    :cond_15
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_55

    .line 176
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v2

    .line 178
    if-eqz v0, :cond_14

    const/4 v3, -0x1

    if-le v2, v3, :cond_14

    .line 179
    sget-object v3, Lcom/github/droidfu/http/a;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Detected carrier proxy "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-direct {v3, v0, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 181
    const-string v0, "http.route.default-proxy"

    invoke-interface {v1, v0, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    goto :goto_14

    .line 184
    :cond_55
    const-string v0, "http.route.default-proxy"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    goto :goto_14
.end method

.method static synthetic b(Lcom/github/droidfu/http/a;)Ldbxyzptlk/w/a;
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/github/droidfu/http/a;->f:Ldbxyzptlk/w/a;

    return-object v0
.end method
