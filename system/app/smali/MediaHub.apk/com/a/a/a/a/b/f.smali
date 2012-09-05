.class public final Lcom/a/a/a/a/b/f;
.super Ljava/lang/Object;


# static fields
.field private static final b:Lcom/a/a/a/a/b/f;

.field private static c:Z


# instance fields
.field private volatile a:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/a/a/a/a/b/f;

    invoke-direct {v0}, Lcom/a/a/a/a/b/f;-><init>()V

    sput-object v0, Lcom/a/a/a/a/b/f;->b:Lcom/a/a/a/a/b/f;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/a/a/a/a/b/f;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/a/a/a/a/b/f;
    .registers 1

    sget-object v0, Lcom/a/a/a/a/b/f;->b:Lcom/a/a/a/a/b/f;

    return-object v0
.end method

.method public static a(Z)V
    .registers 1

    sput-boolean p0, Lcom/a/a/a/a/b/f;->c:Z

    return-void
.end method

.method protected static c()Lorg/apache/http/message/HeaderGroup;
    .registers 5

    new-instance v0, Lorg/apache/http/message/HeaderGroup;

    invoke-direct {v0}, Lorg/apache/http/message/HeaderGroup;-><init>()V

    const-string v1, "HTTPCLIENTPOOL_UA"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3b

    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string v3, "User-Agent"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/apache/http/message/HeaderGroup;->addHeader(Lorg/apache/http/Header;)V

    :goto_17
    sget-boolean v2, Lcom/a/a/a/a/c/a;->a:Z

    if-eqz v2, :cond_1e

    invoke-static {v1}, Lcom/a/a/a/a/c/a;->a(Ljava/lang/String;)I

    :cond_1e
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Accept"

    const-string v3, "*/*"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/message/HeaderGroup;->addHeader(Lorg/apache/http/Header;)V

    sget-boolean v1, Lcom/a/a/a/a/b/f;->c:Z

    if-eqz v1, :cond_48

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Connection"

    const-string v3, "close"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/message/HeaderGroup;->addHeader(Lorg/apache/http/Header;)V

    :goto_3a
    return-object v0

    :cond_3b
    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string v3, "User-Agent"

    const-string v4, "SAMSUNG-Android"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/apache/http/message/HeaderGroup;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_17

    :cond_48
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Connection"

    const-string v3, "keep-alive"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/message/HeaderGroup;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_3a
.end method

.method public static d()Lorg/apache/http/message/HeaderGroup;
    .registers 5

    new-instance v1, Lorg/apache/http/message/HeaderGroup;

    invoke-direct {v1}, Lorg/apache/http/message/HeaderGroup;-><init>()V

    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string v3, "User-Agent"

    const-string v0, "HTTPCLIENTPOOL_UA"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3a

    :goto_17
    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/http/message/HeaderGroup;->addHeader(Lorg/apache/http/Header;)V

    sget-boolean v0, Lcom/a/a/a/a/b/f;->c:Z

    if-eqz v0, :cond_3d

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Connection"

    const-string v3, "close"

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/apache/http/message/HeaderGroup;->addHeader(Lorg/apache/http/Header;)V

    :goto_2d
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Accept"

    const-string v3, "*/*"

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/apache/http/message/HeaderGroup;->addHeader(Lorg/apache/http/Header;)V

    return-object v1

    :cond_3a
    const-string v0, "SAMSUNG-Android"

    goto :goto_17

    :cond_3d
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Connection"

    const-string v3, "keep-alive"

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/apache/http/message/HeaderGroup;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_2d
.end method


# virtual methods
.method public final declared-synchronized b()V
    .registers 7

    const/16 v1, 0x50

    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/a/a/a/a/b/f;->a:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    if-nez v0, :cond_68

    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const-string v0, "http.conn-manager.max-total"

    const/4 v3, 0x5

    invoke-interface {v2, v0, v3}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    const-string v0, "http.conn-manager.max-per-route"

    new-instance v3, Lcom/a/a/a/a/b/g;

    invoke-direct {v3, p0}, Lcom/a/a/a/a/b/g;-><init>(Lcom/a/a/a/a/b/f;)V

    invoke-interface {v2, v0, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    const-string v0, "HTTPCLIENTPOOL_PROXY_PORT"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_35

    :cond_2f
    const-string v0, "HTTPCLIENTPOOL_PORT"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_35
    if-eqz v0, :cond_6d

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_3b
    if-lez v0, :cond_42

    const v4, 0xffff

    if-le v0, v4, :cond_43

    :cond_42
    move v0, v1

    :cond_43
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    invoke-direct {v1, v4, v5, v0}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v0, Lorg/apache/http/conn/scheme/Scheme;

    const-string v1, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v4

    const/16 v5, 0x1bb

    invoke-direct {v0, v1, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    iput-object v0, p0, Lcom/a/a/a/a/b/f;->a:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    :try_end_68
    .catchall {:try_start_3 .. :try_end_68} :catchall_6a

    :cond_68
    monitor-exit p0

    return-void

    :catchall_6a
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6d
    move v0, v1

    goto :goto_3b
.end method

.method protected final e()Lorg/apache/http/client/HttpClient;
    .registers 6

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v1, 0x4e20

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const v1, 0xea60

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const-string v1, "HTTPCLIENTPOOL_PROXY_HOST"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HTTPCLIENTPOOL_PROXY_PORT"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_71

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_71

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Lorg/apache/http/HttpHost;

    invoke-direct {v4, v1, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    const-string v3, "http.route.default-proxy"

    invoke-interface {v0, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    const-string v3, "http.default-host"

    invoke-interface {v0, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    sget-boolean v3, Lcom/a/a/a/a/c/a;->a:Z

    if-eqz v3, :cond_59

    if-eqz v2, :cond_6b

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getHttpClient - Proxy : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/a/a/a/a/c/a;->b(Ljava/lang/String;)I

    :cond_59
    :goto_59
    iget-object v1, p0, Lcom/a/a/a/a/b/f;->a:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    if-nez v1, :cond_60

    invoke-virtual {p0}, Lcom/a/a/a/a/b/f;->b()V

    :cond_60
    iget-object v1, p0, Lcom/a/a/a/a/b/f;->a:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    new-instance v2, Lcom/a/a/a/a/b/b;

    invoke-direct {v2, v1, v0}, Lcom/a/a/a/a/b/b;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    invoke-virtual {v2}, Lcom/a/a/a/a/b/b;->a()V

    return-object v2

    :cond_6b
    const-string v1, "getHttpClient - Proxy port is null "

    invoke-static {v1}, Lcom/a/a/a/a/c/a;->b(Ljava/lang/String;)I

    goto :goto_59

    :cond_71
    const-string v1, "getHttpClient - Proxy is null "

    invoke-static {v1}, Lcom/a/a/a/a/c/a;->b(Ljava/lang/String;)I

    goto :goto_59
.end method

.method public final f()V
    .registers 2

    iget-object v0, p0, Lcom/a/a/a/a/b/f;->a:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/a/a/a/a/b/f;->a:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->shutdown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/a/b/f;->a:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    :cond_c
    return-void
.end method
