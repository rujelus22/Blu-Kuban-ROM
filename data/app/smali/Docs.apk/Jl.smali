.class public final LJl;
.super Ljava/lang/Object;
.source "Api7AndroidHttpClient.java"

# interfaces
.implements Lorg/apache/http/client/HttpClient;


# static fields
.field public static a:J

.field private static final a:Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field private a:Ljava/lang/RuntimeException;

.field private final a:Lorg/apache/http/client/HttpClient;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 85
    const-wide/16 v0, 0x100

    sput-wide v0, LJl;->a:J

    .line 93
    new-instance v0, LJm;

    invoke-direct {v0}, LJm;-><init>()V

    sput-object v0, LJl;->a:Lorg/apache/http/HttpRequestInterceptor;

    return-void
.end method

.method private constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AndroidHttpClient created and never closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LJl;->a:Ljava/lang/RuntimeException;

    .line 155
    new-instance v0, LJn;

    invoke-direct {v0, p0, p1, p2}, LJn;-><init>(LJl;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, LJl;->a:Lorg/apache/http/client/HttpClient;

    .line 176
    return-void
.end method

.method public static a(Landroid/content/ContentResolver;)J
    .registers 3
    .parameter

    .prologue
    .line 312
    sget-wide v0, LJl;->a:J

    return-wide v0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)LJl;
    .registers 8
    .parameter
    .parameter

    .prologue
    const v1, 0xea60

    const/4 v2, 0x0

    .line 112
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 116
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 118
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 119
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 120
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 124
    invoke-static {v0, v2}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 127
    invoke-static {v0, p0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 128
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 129
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 130
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v4

    const/16 v5, 0x1bb

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 132
    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 136
    new-instance v1, LJl;

    invoke-direct {v1, v2, v0}, LJl;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v1
.end method

.method public static a(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;
    .registers 4
    .parameter

    .prologue
    .line 207
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 208
    if-nez v1, :cond_7

    .line 214
    :cond_6
    :goto_6
    return-object v1

    .line 209
    :cond_7
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_6

    .line 211
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_6

    .line 213
    const-string v2, "gzip"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_20
    move-object v1, v0

    .line 214
    goto :goto_6

    :cond_22
    move-object v0, v1

    goto :goto_20
.end method

.method static synthetic a()Lorg/apache/http/HttpRequestInterceptor;
    .registers 1

    .prologue
    .line 79
    sget-object v0, LJl;->a:Lorg/apache/http/HttpRequestInterceptor;

    return-object v0
.end method

.method public static a([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 294
    array-length v0, p0

    int-to-long v0, v0

    invoke-static {p1}, LJl;->a(Landroid/content/ContentResolver;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_10

    .line 295
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, p0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 304
    :goto_f
    return-object v0

    .line 297
    :cond_10
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 298
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 299
    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V

    .line 300
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 301
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 302
    const-string v1, "gzip"

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentEncoding(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static a(Lorg/apache/http/HttpRequest;)V
    .registers 3
    .parameter

    .prologue
    .line 195
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-interface {p0, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, LJl;->a:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_e

    .line 223
    invoke-virtual {p0}, LJl;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, LJl;->a:Ljava/lang/RuntimeException;

    .line 226
    :cond_e
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 322
    return-void
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, LJl;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, LJl;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, LJl;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, LJl;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, LJl;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 256
    iget-object v0, p0, LJl;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .registers 3
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, LJl;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, LJl;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .registers 4

    .prologue
    .line 180
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 181
    iget-object v0, p0, LJl;->a:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_13

    .line 182
    const-string v0, "AndroidHttpClient"

    const-string v1, "Leak found"

    iget-object v2, p0, LJl;->a:Ljava/lang/RuntimeException;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, LJl;->a:Ljava/lang/RuntimeException;

    .line 185
    :cond_13
    return-void
.end method

.method public getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, LJl;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, LJl;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    return-object v0
.end method
