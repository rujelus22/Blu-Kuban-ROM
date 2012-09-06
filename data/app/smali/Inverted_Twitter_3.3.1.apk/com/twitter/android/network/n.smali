.class public final Lcom/twitter/android/network/n;
.super Lcom/twitter/android/network/d;


# static fields
.field private static a:Lcom/twitter/android/network/n;


# instance fields
.field private final b:Landroid/content/Context;

.field private c:Lorg/apache/http/client/HttpClient;

.field private d:Lorg/apache/http/conn/ClientConnectionManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/twitter/android/network/n;->a:Lcom/twitter/android/network/n;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Lcom/twitter/android/network/d;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/network/n;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/twitter/android/network/n;->c()V

    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lcom/twitter/android/network/n;
    .registers 4

    const-class v1, Lcom/twitter/android/network/n;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/twitter/android/network/n;->a:Lcom/twitter/android/network/n;

    if-nez v0, :cond_12

    new-instance v0, Lcom/twitter/android/network/n;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/twitter/android/network/n;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/twitter/android/network/n;->a:Lcom/twitter/android/network/n;

    :cond_12
    sget-object v0, Lcom/twitter/android/network/n;->a:Lcom/twitter/android/network/n;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v1

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private c()V
    .registers 8

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const v1, 0x15f90

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v1, 0x4e20

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    iget-object v1, p0, Lcom/twitter/android/network/n;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/twitter/android/network/n;->a(Landroid/content/Context;)Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    iput-object v2, p0, Lcom/twitter/android/network/n;->d:Lorg/apache/http/conn/ClientConnectionManager;

    iget-object v1, p0, Lcom/twitter/android/network/n;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/android/network/n;->d:Lorg/apache/http/conn/ClientConnectionManager;

    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    const-class v0, Lorg/apache/http/client/protocol/RequestAddCookies;

    invoke-virtual {v3, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->removeRequestInterceptorByClass(Ljava/lang/Class;)V

    const-class v0, Lorg/apache/http/client/protocol/ResponseProcessCookies;

    invoke-virtual {v3, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->removeResponseInterceptorByClass(Ljava/lang/Class;)V

    new-instance v0, Lcom/twitter/android/network/m;

    invoke-direct {v0}, Lcom/twitter/android/network/m;-><init>()V

    invoke-virtual {v3, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->setKeepAliveStrategy(Lorg/apache/http/conn/ConnectionKeepAliveStrategy;)V

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/network/e;

    const-string v2, "proxy_enabled"

    const/4 v4, 0x0

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "proxy_host"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "proxy_port"

    const-string v6, ""

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v4, v0}, Lcom/twitter/android/network/e;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/twitter/android/network/e;->b:Z

    if-eqz v0, :cond_6c

    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v2, "http.route.default-proxy"

    iget-object v1, v1, Lcom/twitter/android/network/e;->a:Lorg/apache/http/HttpHost;

    invoke-interface {v0, v2, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_6c
    iput-object v3, p0, Lcom/twitter/android/network/n;->c:Lorg/apache/http/client/HttpClient;

    return-void
.end method


# virtual methods
.method public final a()Lorg/apache/http/client/HttpClient;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/network/n;->c:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/network/n;->d:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    invoke-direct {p0}, Lcom/twitter/android/network/n;->c()V

    return-void
.end method
