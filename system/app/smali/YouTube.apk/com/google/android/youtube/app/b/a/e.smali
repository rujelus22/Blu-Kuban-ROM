.class public final Lcom/google/android/youtube/app/b/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lorg/apache/http/params/HttpParams;

.field private final b:Lorg/apache/http/protocol/HttpService;

.field private final c:Lcom/google/android/youtube/app/b/a/k;

.field private d:Ljava/net/ServerSocket;

.field private e:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>(Ljava/security/Key;Landroid/content/SharedPreferences;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const-string v1, "http.connection.stalecheck"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/params/BasicHttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.tcp.nodelay"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.socket.buffer-size"

    const/16 v2, 0x2000

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/b/a/e;->a:Lorg/apache/http/params/HttpParams;

    .line 93
    new-instance v0, Lcom/google/android/youtube/app/b/a/k;

    invoke-direct {v0}, Lcom/google/android/youtube/app/b/a/k;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/b/a/e;->c:Lcom/google/android/youtube/app/b/a/k;

    .line 95
    new-instance v0, Lorg/apache/http/protocol/BasicHttpProcessor;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpProcessor;-><init>()V

    .line 97
    iget-object v1, p0, Lcom/google/android/youtube/app/b/a/e;->c:Lcom/google/android/youtube/app/b/a/k;

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 99
    new-instance v1, Lorg/apache/http/protocol/ResponseContent;

    invoke-direct {v1}, Lorg/apache/http/protocol/ResponseContent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 100
    new-instance v1, Lorg/apache/http/protocol/ResponseConnControl;

    invoke-direct {v1}, Lorg/apache/http/protocol/ResponseConnControl;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 102
    new-instance v1, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;

    invoke-direct {v1}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;-><init>()V

    .line 103
    const-string v2, "/local"

    new-instance v3, Lcom/google/android/youtube/app/b/a/d;

    invoke-direct {v3, p1, p2}, Lcom/google/android/youtube/app/b/a/d;-><init>(Ljava/security/Key;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;->register(Ljava/lang/String;Lorg/apache/http/protocol/HttpRequestHandler;)V

    .line 105
    new-instance v2, Lorg/apache/http/protocol/HttpService;

    new-instance v3, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;

    invoke-direct {v3}, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;-><init>()V

    new-instance v4, Lorg/apache/http/impl/DefaultHttpResponseFactory;

    invoke-direct {v4}, Lorg/apache/http/impl/DefaultHttpResponseFactory;-><init>()V

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/http/protocol/HttpService;-><init>(Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/HttpResponseFactory;)V

    iput-object v2, p0, Lcom/google/android/youtube/app/b/a/e;->b:Lorg/apache/http/protocol/HttpService;

    .line 107
    iget-object v0, p0, Lcom/google/android/youtube/app/b/a/e;->b:Lorg/apache/http/protocol/HttpService;

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/HttpService;->setHandlerResolver(Lorg/apache/http/protocol/HttpRequestHandlerResolver;)V

    .line 108
    iget-object v0, p0, Lcom/google/android/youtube/app/b/a/e;->b:Lorg/apache/http/protocol/HttpService;

    iget-object v1, p0, Lcom/google/android/youtube/app/b/a/e;->a:Lorg/apache/http/params/HttpParams;

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/HttpService;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 109
    return-void
.end method

.method public static a(Ljava/util/concurrent/Executor;Ljava/security/Key;Landroid/content/SharedPreferences;)Lcom/google/android/youtube/app/b/a/e;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    :try_start_0
    new-instance v0, Lcom/google/android/youtube/app/b/a/e;

    invoke-direct {v0, p1, p2}, Lcom/google/android/youtube/app/b/a/e;-><init>(Ljava/security/Key;Landroid/content/SharedPreferences;)V

    .line 72
    new-instance v1, Lcom/google/android/youtube/app/b/a/f;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/app/b/a/f;-><init>(Lcom/google/android/youtube/app/b/a/e;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_d
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_d} :catch_e

    .line 83
    :goto_d
    return-object v0

    .line 81
    :catch_e
    move-exception v0

    .line 82
    const-string v1, "Cannot instantiate MediaServer"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static synthetic a(Lcom/google/android/youtube/app/b/a/e;)V
    .registers 5
    .parameter

    .prologue
    .line 46
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/b/a/e;->d:Ljava/net/ServerSocket;

    iget-object v0, p0, Lcom/google/android/youtube/app/b/a/e;->d:Ljava/net/ServerSocket;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/b/a/e;->e:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lcom/google/android/youtube/app/b/a/e;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/youtube/app/b/a/g;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/b/a/g;-><init>(Lcom/google/android/youtube/app/b/a/e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/app/b/a/e;)Ljava/net/ServerSocket;
    .registers 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/youtube/app/b/a/e;->d:Ljava/net/ServerSocket;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/b/a/e;)Lorg/apache/http/params/HttpParams;
    .registers 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/youtube/app/b/a/e;->a:Lorg/apache/http/params/HttpParams;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/b/a/e;)Lorg/apache/http/protocol/HttpService;
    .registers 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/youtube/app/b/a/e;->b:Lorg/apache/http/protocol/HttpService;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 5
    .parameter

    .prologue
    .line 129
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "127.0.0.1:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/youtube/app/b/a/e;->d:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/local"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "f"

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/google/android/youtube/app/b/a/e;->c:Lcom/google/android/youtube/app/b/a/k;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/b/a/k;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final a()Z
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/youtube/app/b/a/e;->d:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v0

    return v0
.end method
