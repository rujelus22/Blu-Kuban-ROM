.class final Lcom/google/android/apps/plus/network/HttpTransaction;
.super Ljava/lang/Object;
.source "HttpTransaction.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;
.implements Lorg/apache/http/HttpResponseInterceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/network/HttpTransaction$CountingOutputStream;,
        Lcom/google/android/apps/plus/network/HttpTransaction$MyInputStreamEntity;,
        Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;
    }
.end annotation


# static fields
.field private static final sHttpParams:Lorg/apache/http/params/HttpParams;

.field private static final sSupportedSchemes:Lorg/apache/http/conn/scheme/SchemeRegistry;


# instance fields
.field private mAborted:Z

.field private final mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

.field private final mListener:Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;

.field private mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 79
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/network/HttpTransaction;->sSupportedSchemes:Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 80
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/network/HttpTransaction;->sHttpParams:Lorg/apache/http/params/HttpParams;

    .line 84
    sget-object v0, Lcom/google/android/apps/plus/network/HttpTransaction;->sHttpParams:Lorg/apache/http/params/HttpParams;

    const-string v1, "http.socket.timeout"

    const v2, 0x15f90

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 85
    sget-object v0, Lcom/google/android/apps/plus/network/HttpTransaction;->sHttpParams:Lorg/apache/http/params/HttpParams;

    const-string v1, "http.connection.timeout"

    const/16 v2, 0xbb8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 90
    sget-object v0, Lcom/google/android/apps/plus/network/HttpTransaction;->sSupportedSchemes:Lorg/apache/http/conn/scheme/SchemeRegistry;

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v3

    const/16 v4, 0x50

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 91
    sget-object v0, Lcom/google/android/apps/plus/network/HttpTransaction;->sSupportedSchemes:Lorg/apache/http/conn/scheme/SchemeRegistry;

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v3

    const/16 v4, 0x1bb

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/network/HttpRequestConfiguration;Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;)V
    .registers 8
    .parameter "method"
    .parameter "url"
    .parameter "config"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    const-string v0, "GET"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 226
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 235
    :goto_12
    if-nez p4, :cond_55

    .line 236
    new-instance v0, Lcom/google/android/apps/plus/network/NetworkException;

    const-string v1, "The listener cannot be null"

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/network/NetworkException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_1c
    const-string v0, "POST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 228
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    goto :goto_12

    .line 229
    :cond_2c
    const-string v0, "DELETE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 230
    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    goto :goto_12

    .line 232
    :cond_3c
    new-instance v0, Lcom/google/android/apps/plus/network/NetworkException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/network/NetworkException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_55
    iput-object p4, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mListener:Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;

    .line 241
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-interface {p3, v0}, Lcom/google/android/apps/plus/network/HttpRequestConfiguration;->addHeaders(Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 242
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/network/HttpRequestConfiguration;Lorg/apache/http/HttpEntity;Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;)V
    .registers 9
    .parameter "method"
    .parameter "url"
    .parameter "config"
    .parameter "postData"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    const-string v0, "POST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 271
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 278
    :goto_12
    if-nez p5, :cond_45

    .line 279
    new-instance v0, Lcom/google/android/apps/plus/network/NetworkException;

    const-string v1, "The listener cannot be null"

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/network/NetworkException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_1c
    const-string v0, "PUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 273
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    goto :goto_12

    .line 275
    :cond_2c
    new-instance v0, Lcom/google/android/apps/plus/network/NetworkException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/network/NetworkException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_45
    iput-object p5, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mListener:Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;

    .line 284
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-interface {p3, v0}, Lcom/google/android/apps/plus/network/HttpRequestConfiguration;->addHeaders(Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 286
    if-eqz p4, :cond_5a

    .line 287
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    new-instance v1, Lcom/google/android/apps/plus/network/HttpTransaction$MyInputStreamEntity;

    invoke-direct {v1, p0, p4}, Lcom/google/android/apps/plus/network/HttpTransaction$MyInputStreamEntity;-><init>(Lcom/google/android/apps/plus/network/HttpTransaction;Lorg/apache/http/HttpEntity;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 289
    :cond_5a
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/network/HttpTransaction;)Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/android/apps/plus/network/HttpTransaction;->getListener()Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;

    move-result-object v0

    return-object v0
.end method

.method private createHttpClient()Lorg/apache/http/client/HttpClient;
    .registers 5

    .prologue
    .line 416
    new-instance v0, Lorg/apache/http/impl/conn/SingleClientConnManager;

    sget-object v2, Lcom/google/android/apps/plus/network/HttpTransaction;->sHttpParams:Lorg/apache/http/params/HttpParams;

    sget-object v3, Lcom/google/android/apps/plus/network/HttpTransaction;->sSupportedSchemes:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 420
    .local v0, connMgr:Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v2, Lcom/google/android/apps/plus/network/HttpTransaction;->sHttpParams:Lorg/apache/http/params/HttpParams;

    invoke-direct {v1, v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 423
    .local v1, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    const-class v2, Lorg/apache/http/client/protocol/RequestAddCookies;

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->removeRequestInterceptorByClass(Ljava/lang/Class;)V

    .line 424
    const-class v2, Lorg/apache/http/client/protocol/ResponseProcessCookies;

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->removeResponseInterceptorByClass(Ljava/lang/Class;)V

    .line 427
    invoke-virtual {v1, p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 428
    invoke-virtual {v1, p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 430
    return-object v1
.end method

.method private static getAttribute(Lorg/apache/http/protocol/HttpContext;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "context"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/protocol/HttpContext;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 604
    invoke-interface {p0, p1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getListener()Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;
    .registers 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mListener:Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;

    return-object v0
.end method

.method private processCookies(Lorg/apache/http/HeaderIterator;Lorg/apache/http/cookie/CookieSpec;Lorg/apache/http/cookie/CookieOrigin;)V
    .registers 11
    .parameter "iterator"
    .parameter "cookieSpec"
    .parameter "cookieOrigin"

    .prologue
    .line 538
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 539
    invoke-interface {p1}, Lorg/apache/http/HeaderIterator;->nextHeader()Lorg/apache/http/Header;

    move-result-object v3

    .line 541
    .local v3, header:Lorg/apache/http/Header;
    :try_start_a
    invoke-interface {p2, v3, p3}, Lorg/apache/http/cookie/CookieSpec;->parse(Lorg/apache/http/Header;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v1

    .line 542
    .local v1, cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 543
    .local v0, cookie:Lorg/apache/http/cookie/Cookie;
    iget-object v5, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mListener:Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;

    invoke-interface {v5, v0}, Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;->onHttpCookie(Lorg/apache/http/cookie/Cookie;)V
    :try_end_23
    .catch Lorg/apache/http/cookie/MalformedCookieException; {:try_start_a .. :try_end_23} :catch_24

    goto :goto_12

    .line 545
    .end local v0           #cookie:Lorg/apache/http/cookie/Cookie;
    .end local v1           #cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    :catch_24
    move-exception v2

    .line 546
    .local v2, ex:Lorg/apache/http/cookie/MalformedCookieException;
    const-string v5, "HttpTransaction"

    const-string v6, "Malformed cookie"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 549
    .end local v2           #ex:Lorg/apache/http/cookie/MalformedCookieException;
    .end local v3           #header:Lorg/apache/http/Header;
    :cond_2d
    return-void
.end method

.method private readFromHttpStream(Lorg/apache/http/HttpEntity;[Lorg/apache/http/Header;)V
    .registers 13
    .parameter "entity"
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 440
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v7

    if-eqz v7, :cond_7d

    .line 441
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, contentEncoding:Ljava/lang/String;
    :goto_e
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 447
    .local v2, contentType:Ljava/lang/String;
    const/16 v7, 0x3b

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 448
    .local v6, semicolonIndex:I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_24

    .line 449
    const/4 v7, 0x0

    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 452
    :cond_24
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v7

    long-to-int v1, v7

    .line 453
    .local v1, contentLength:I
    const-string v7, "HttpTransaction"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_5e

    .line 454
    const-string v7, "HttpTransaction"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readFromHttpStream: Encoding: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_5e
    const/4 v4, 0x0

    .line 460
    .local v4, inputStream:Ljava/io/InputStream;
    :try_start_5f
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 463
    if-eqz v0, :cond_74

    const-string v7, "gzip"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_74

    .line 464
    new-instance v5, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v5, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_72} :catch_7f

    .line 465
    .end local v4           #inputStream:Ljava/io/InputStream;
    .local v5, inputStream:Ljava/io/InputStream;
    const/4 v1, -0x1

    move-object v4, v5

    .line 477
    .end local v5           #inputStream:Ljava/io/InputStream;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    :cond_74
    :try_start_74
    iget-object v7, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mListener:Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;

    invoke-interface {v7, v4, v2, v1, p2}, Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;->onHttpReadFromStream(Ljava/io/InputStream;Ljava/lang/String;I[Lorg/apache/http/Header;)V
    :try_end_79
    .catchall {:try_start_74 .. :try_end_79} :catchall_8d

    .line 480
    :try_start_79
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_94

    .line 485
    :goto_7c
    return-void

    .line 443
    .end local v0           #contentEncoding:Ljava/lang/String;
    .end local v1           #contentLength:I
    .end local v2           #contentType:Ljava/lang/String;
    .end local v4           #inputStream:Ljava/io/InputStream;
    .end local v6           #semicolonIndex:I
    :cond_7d
    const/4 v0, 0x0

    .restart local v0       #contentEncoding:Ljava/lang/String;
    goto :goto_e

    .line 467
    .restart local v1       #contentLength:I
    .restart local v2       #contentType:Ljava/lang/String;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    .restart local v6       #semicolonIndex:I
    :catch_7f
    move-exception v3

    .line 469
    .local v3, ex:Ljava/io/IOException;
    :try_start_80
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_92

    .line 473
    :goto_83
    new-instance v7, Lcom/google/android/apps/plus/network/NetworkException;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/android/apps/plus/network/NetworkException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 479
    .end local v3           #ex:Ljava/io/IOException;
    :catchall_8d
    move-exception v7

    .line 480
    :try_start_8e
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_96

    .line 483
    :goto_91
    throw v7

    .line 470
    .restart local v3       #ex:Ljava/io/IOException;
    :catch_92
    move-exception v7

    goto :goto_83

    .line 481
    .end local v3           #ex:Ljava/io/IOException;
    :catch_94
    move-exception v7

    goto :goto_7c

    :catch_96
    move-exception v8

    goto :goto_91
.end method


# virtual methods
.method public abort()V
    .registers 4

    .prologue
    .line 552
    iget-boolean v1, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mAborted:Z

    if-eqz v1, :cond_5

    .line 576
    :cond_4
    :goto_4
    return-void

    .line 556
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mAborted:Z

    .line 557
    iget-object v1, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v1, :cond_4

    .line 558
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_29

    .line 565
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 566
    .local v0, policy:Landroid/os/StrictMode$ThreadPolicy;
    sget-object v1, Landroid/os/StrictMode$ThreadPolicy;->LAX:Landroid/os/StrictMode$ThreadPolicy;

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 568
    :try_start_1b
    iget-object v1, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_24

    .line 570
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_4

    :catchall_24
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1

    .line 573
    .end local v0           #policy:Landroid/os/StrictMode$ThreadPolicy;
    :cond_29
    iget-object v1, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    goto :goto_4
.end method

.method public execute()Ljava/lang/Exception;
    .registers 12

    .prologue
    const/4 v7, 0x0

    .line 299
    const/4 v2, 0x0

    .line 301
    .local v2, httpClient:Lorg/apache/http/client/HttpClient;
    :try_start_2
    iget-boolean v8, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mAborted:Z

    if-eqz v8, :cond_20

    .line 302
    new-instance v1, Lcom/google/android/apps/plus/network/NetworkException;

    const-string v7, "Canceled"

    invoke-direct {v1, v7}, Lcom/google/android/apps/plus/network/NetworkException;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_279
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_2 .. :try_end_d} :catch_a6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_1ec

    .line 399
    iget-object v7, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    if-eqz v7, :cond_16

    .line 400
    iget-object v7, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->onEndTransaction()V

    .line 402
    :cond_16
    if-eqz v2, :cond_1f

    .line 403
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 407
    :cond_1f
    :goto_1f
    return-object v1

    .line 305
    :cond_20
    const/4 v0, 0x0

    .line 306
    .local v0, connectionException:Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 307
    .local v4, resp:Lorg/apache/http/HttpResponse;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_23
    const/4 v8, 0x2

    if-ge v3, v8, :cond_a3

    .line 308
    const/4 v0, 0x0

    .line 309
    :try_start_27
    invoke-direct {p0}, Lcom/google/android/apps/plus/network/HttpTransaction;->createHttpClient()Lorg/apache/http/client/HttpClient;
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_279
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_27 .. :try_end_2a} :catch_a6
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_1ec

    move-result-object v2

    .line 312
    :try_start_2b
    iget-object v8, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-interface {v2, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 314
    iget-boolean v8, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mAborted:Z

    if-eqz v8, :cond_a3

    .line 315
    new-instance v1, Lcom/google/android/apps/plus/network/NetworkException;

    const-string v8, "Canceled"

    invoke-direct {v1, v8}, Lcom/google/android/apps/plus/network/NetworkException;-><init>(Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_2b .. :try_end_3c} :catchall_279
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2b .. :try_end_3c} :catch_4f
    .catch Ljavax/net/ssl/SSLException; {:try_start_2b .. :try_end_3c} :catch_80
    .catch Ljava/net/UnknownHostException; {:try_start_2b .. :try_end_3c} :catch_83
    .catch Ljava/net/SocketException; {:try_start_2b .. :try_end_3c} :catch_86
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_3c} :catch_89
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_2b .. :try_end_3c} :catch_a6

    .line 399
    iget-object v7, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    if-eqz v7, :cond_45

    .line 400
    iget-object v7, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->onEndTransaction()V

    .line 402
    :cond_45
    if-eqz v2, :cond_1f

    .line 403
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_1f

    .line 320
    :catch_4f
    move-exception v1

    .line 321
    .local v1, ex:Lorg/apache/http/conn/ConnectTimeoutException;
    move-object v0, v1

    .line 334
    .end local v1           #ex:Lorg/apache/http/conn/ConnectTimeoutException;
    :goto_51
    :try_start_51
    const-string v8, "HttpTransaction"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_76

    .line 335
    const-string v8, "HttpTransaction"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Connection failure: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_76
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 307
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 322
    :catch_80
    move-exception v1

    .line 323
    .local v1, ex:Ljavax/net/ssl/SSLException;
    move-object v0, v1

    .line 332
    goto :goto_51

    .line 324
    .end local v1           #ex:Ljavax/net/ssl/SSLException;
    :catch_83
    move-exception v1

    .line 325
    .local v1, ex:Ljava/net/UnknownHostException;
    move-object v0, v1

    .line 332
    goto :goto_51

    .line 326
    .end local v1           #ex:Ljava/net/UnknownHostException;
    :catch_86
    move-exception v1

    .line 327
    .local v1, ex:Ljava/net/SocketException;
    move-object v0, v1

    .line 332
    goto :goto_51

    .line 328
    .end local v1           #ex:Ljava/net/SocketException;
    :catch_89
    move-exception v1

    .line 329
    .local v1, ex:Ljava/lang/Exception;
    move-object v0, v1

    .line 330
    const-string v8, "HttpTransaction"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Non retryable error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_a3
    if-eqz v0, :cond_c6

    .line 343
    throw v0
    :try_end_a6
    .catchall {:try_start_51 .. :try_end_a6} :catchall_279
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_51 .. :try_end_a6} :catch_a6
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_a6} :catch_1ec

    .line 369
    .end local v0           #connectionException:Ljava/lang/Exception;
    .end local v3           #i:I
    .end local v4           #resp:Lorg/apache/http/HttpResponse;
    :catch_a6
    move-exception v1

    .line 370
    .local v1, ex:Lorg/apache/http/client/HttpResponseException;
    :try_start_a7
    iget-boolean v7, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mAborted:Z

    if-eqz v7, :cond_185

    .line 371
    new-instance v1, Lcom/google/android/apps/plus/network/NetworkException;

    .end local v1           #ex:Lorg/apache/http/client/HttpResponseException;
    const-string v7, "Canceled"

    invoke-direct {v1, v7}, Lcom/google/android/apps/plus/network/NetworkException;-><init>(Ljava/lang/String;)V
    :try_end_b2
    .catchall {:try_start_a7 .. :try_end_b2} :catchall_279

    .line 399
    iget-object v7, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    if-eqz v7, :cond_bb

    .line 400
    iget-object v7, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->onEndTransaction()V

    .line 402
    :cond_bb
    if-eqz v2, :cond_1f

    .line 403
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_1f

    .line 346
    .restart local v0       #connectionException:Ljava/lang/Exception;
    .restart local v3       #i:I
    .restart local v4       #resp:Lorg/apache/http/HttpResponse;
    :cond_c6
    :try_start_c6
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 347
    .local v5, statusCode:I
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v6

    .line 348
    .local v6, statusPhrase:Ljava/lang/String;
    iget-boolean v8, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mAborted:Z

    if-eqz v8, :cond_f5

    .line 349
    new-instance v1, Lcom/google/android/apps/plus/network/NetworkException;

    const-string v7, "Canceled"

    invoke-direct {v1, v7}, Lcom/google/android/apps/plus/network/NetworkException;-><init>(Ljava/lang/String;)V
    :try_end_e1
    .catchall {:try_start_c6 .. :try_end_e1} :catchall_279
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_c6 .. :try_end_e1} :catch_a6
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_e1} :catch_1ec

    .line 399
    iget-object v7, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    if-eqz v7, :cond_ea

    .line 400
    iget-object v7, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->onEndTransaction()V

    .line 402
    :cond_ea
    if-eqz v2, :cond_1f

    .line 403
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_1f

    .line 353
    :cond_f5
    const/16 v8, 0xc8

    if-ne v5, v8, :cond_124

    .line 354
    :try_start_f9
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/google/android/apps/plus/network/HttpTransaction;->readFromHttpStream(Lorg/apache/http/HttpEntity;[Lorg/apache/http/Header;)V

    .line 355
    const/4 v1, 0x0

    .line 364
    .restart local v1       #ex:Lorg/apache/http/client/HttpResponseException;
    :goto_105
    iget-boolean v8, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mAborted:Z

    if-eqz v8, :cond_16b

    .line 365
    new-instance v1, Lcom/google/android/apps/plus/network/NetworkException;

    .end local v1           #ex:Lorg/apache/http/client/HttpResponseException;
    const-string v7, "Canceled"

    invoke-direct {v1, v7}, Lcom/google/android/apps/plus/network/NetworkException;-><init>(Ljava/lang/String;)V
    :try_end_110
    .catchall {:try_start_f9 .. :try_end_110} :catchall_279
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_f9 .. :try_end_110} :catch_a6
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_110} :catch_1ec

    .line 399
    iget-object v7, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    if-eqz v7, :cond_119

    .line 400
    iget-object v7, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->onEndTransaction()V

    .line 402
    :cond_119
    if-eqz v2, :cond_1f

    .line 403
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_1f

    .line 357
    :cond_124
    :try_start_124
    const-string v8, "HttpTransaction"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_165

    .line 358
    const-string v8, "HttpTransaction"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_165
    new-instance v1, Lorg/apache/http/client/HttpResponseException;

    invoke-direct {v1, v5, v6}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    .restart local v1       #ex:Lorg/apache/http/client/HttpResponseException;
    goto :goto_105

    .line 368
    :cond_16b
    iget-object v8, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mListener:Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;

    invoke-interface {v8, v5, v6, v1}, Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;->onHttpTransactionComplete(ILjava/lang/String;Ljava/lang/Exception;)V
    :try_end_170
    .catchall {:try_start_124 .. :try_end_170} :catchall_279
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_124 .. :try_end_170} :catch_a6
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_170} :catch_1ec

    .line 399
    iget-object v8, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    if-eqz v8, :cond_179

    .line 400
    iget-object v8, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    invoke-virtual {v8}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->onEndTransaction()V

    .line 402
    :cond_179
    if-eqz v2, :cond_182

    .line 403
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_182
    move-object v1, v7

    .line 407
    goto/16 :goto_1f

    .line 374
    .end local v0           #connectionException:Ljava/lang/Exception;
    .end local v3           #i:I
    .end local v4           #resp:Lorg/apache/http/HttpResponse;
    .end local v5           #statusCode:I
    .end local v6           #statusPhrase:Ljava/lang/String;
    :cond_185
    :try_start_185
    const-string v7, "HttpTransaction"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1cb

    .line 375
    invoke-virtual {v1}, Lorg/apache/http/client/HttpResponseException;->printStackTrace()V

    .line 376
    const-string v7, "HttpTransaction"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HttpResponseException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v9}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_1cb
    iget-object v7, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mListener:Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;

    invoke-virtual {v1}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v8

    invoke-virtual {v1}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9, v1}, Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;->onHttpTransactionComplete(ILjava/lang/String;Ljava/lang/Exception;)V
    :try_end_1d8
    .catchall {:try_start_185 .. :try_end_1d8} :catchall_279

    .line 399
    iget-object v7, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    if-eqz v7, :cond_1e1

    .line 400
    iget-object v7, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->onEndTransaction()V

    .line 402
    :cond_1e1
    if-eqz v2, :cond_1f

    .line 403
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_1f

    .line 382
    .end local v1           #ex:Lorg/apache/http/client/HttpResponseException;
    :catch_1ec
    move-exception v1

    .line 383
    .local v1, ex:Ljava/lang/Exception;
    :try_start_1ed
    iget-boolean v7, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mAborted:Z

    if-eqz v7, :cond_20c

    .line 384
    new-instance v1, Lcom/google/android/apps/plus/network/NetworkException;

    .end local v1           #ex:Ljava/lang/Exception;
    const-string v7, "Canceled"

    invoke-direct {v1, v7}, Lcom/google/android/apps/plus/network/NetworkException;-><init>(Ljava/lang/String;)V
    :try_end_1f8
    .catchall {:try_start_1ed .. :try_end_1f8} :catchall_279

    .line 399
    iget-object v7, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    if-eqz v7, :cond_201

    .line 400
    iget-object v7, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->onEndTransaction()V

    .line 402
    :cond_201
    if-eqz v2, :cond_1f

    .line 403
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_1f

    .line 388
    .restart local v1       #ex:Ljava/lang/Exception;
    :cond_20c
    :try_start_20c
    instance-of v7, v1, Ljava/lang/RuntimeException;

    if-eqz v7, :cond_232

    .line 389
    const-string v7, "HttpTransaction"

    const-string v8, "ERROR"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    :cond_217
    :goto_217
    iget-object v7, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mListener:Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9, v1}, Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;->onHttpTransactionComplete(ILjava/lang/String;Ljava/lang/Exception;)V
    :try_end_21e
    .catchall {:try_start_20c .. :try_end_21e} :catchall_279

    .line 399
    iget-object v7, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    if-eqz v7, :cond_227

    .line 400
    iget-object v7, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->onEndTransaction()V

    .line 402
    :cond_227
    if-eqz v2, :cond_1f

    .line 403
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_1f

    .line 390
    :cond_232
    :try_start_232
    const-string v7, "HttpTransaction"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_217

    .line 391
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 392
    const-string v7, "HttpTransaction"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v9}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_278
    .catchall {:try_start_232 .. :try_end_278} :catchall_279

    goto :goto_217

    .line 399
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_279
    move-exception v7

    iget-object v8, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    if-eqz v8, :cond_283

    .line 400
    iget-object v8, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    invoke-virtual {v8}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->onEndTransaction()V

    .line 402
    :cond_283
    if-eqz v2, :cond_28c

    .line 403
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_28c
    throw v7
.end method

.method public isAborted()Z
    .registers 2

    .prologue
    .line 579
    iget-boolean v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mAborted:Z

    if-eqz v0, :cond_6

    .line 580
    const/4 v0, 0x1

    .line 587
    :goto_5
    return v0

    .line 583
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v0, :cond_11

    .line 584
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->isAborted()Z

    move-result v0

    goto :goto_5

    .line 587
    :cond_11
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onStartResultProcessing()V
    .registers 2

    .prologue
    .line 591
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    if-eqz v0, :cond_9

    .line 592
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->onStartResultProcessing()V

    .line 594
    :cond_9
    return-void
.end method

.method printHeaders()V
    .registers 8

    .prologue
    .line 245
    const-string v5, "HttpTransaction"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "HTTP headers:\n"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    .local v1, builder:Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpRequestBase;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    .local v0, arr$:[Lorg/apache/http/Header;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_18
    if-ge v3, v4, :cond_3d

    aget-object v2, v0, v3

    .line 248
    .local v2, header:Lorg/apache/http/Header;
    const-string v5, "Authorization"

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 249
    const-string v5, "Authorization: <removed>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :goto_2d
    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 251
    :cond_35
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    .line 255
    .end local v2           #header:Lorg/apache/http/Header;
    :cond_3d
    const-string v5, "HttpTransaction"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .end local v0           #arr$:[Lorg/apache/http/Header;
    .end local v1           #builder:Ljava/lang/StringBuilder;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_46
    return-void
.end method

.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .registers 16
    .parameter "request"
    .parameter "context"

    .prologue
    .line 499
    const-string v11, "http.cookiespec-registry"

    invoke-static {p2, v11}, Lcom/google/android/apps/plus/network/HttpTransaction;->getAttribute(Lorg/apache/http/protocol/HttpContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/http/cookie/CookieSpecRegistry;

    .line 500
    .local v7, registry:Lorg/apache/http/cookie/CookieSpecRegistry;
    const-string v11, "http.target_host"

    invoke-static {p2, v11}, Lcom/google/android/apps/plus/network/HttpTransaction;->getAttribute(Lorg/apache/http/protocol/HttpContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/http/HttpHost;

    .line 501
    .local v10, targetHost:Lorg/apache/http/HttpHost;
    const-string v11, "http.connection"

    invoke-static {p2, v11}, Lcom/google/android/apps/plus/network/HttpTransaction;->getAttribute(Lorg/apache/http/protocol/HttpContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/ManagedClientConnection;

    .line 502
    .local v0, conn:Lorg/apache/http/conn/ManagedClientConnection;
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/http/client/params/HttpClientParams;->getCookiePolicy(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;

    move-result-object v5

    .local v5, policy:Ljava/lang/String;
    move-object v11, p1

    .line 503
    check-cast v11, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v11}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v8

    .line 504
    .local v8, requestURI:Ljava/net/URI;
    invoke-virtual {v10}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v3

    .line 505
    .local v3, hostName:Ljava/lang/String;
    invoke-virtual {v10}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v6

    .line 506
    .local v6, port:I
    if-gez v6, :cond_35

    .line 507
    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->getRemotePort()I

    move-result v6

    .line 509
    :cond_35
    invoke-virtual {v8}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 510
    .local v4, path:Ljava/lang/String;
    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->isSecure()Z

    move-result v9

    .line 511
    .local v9, secure:Z
    new-instance v1, Lorg/apache/http/cookie/CookieOrigin;

    invoke-direct {v1, v3, v6, v4, v9}, Lorg/apache/http/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 512
    .local v1, cookieOrigin:Lorg/apache/http/cookie/CookieOrigin;
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v11

    invoke-virtual {v7, v5, v11}, Lorg/apache/http/cookie/CookieSpecRegistry;->getCookieSpec(Ljava/lang/String;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/cookie/CookieSpec;

    move-result-object v2

    .line 513
    .local v2, cookieSpec:Lorg/apache/http/cookie/CookieSpec;
    const-string v11, "http.cookie-spec"

    invoke-interface {p2, v11, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 514
    const-string v11, "http.cookie-origin"

    invoke-interface {p2, v11, v1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 516
    iget-object v11, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    if-eqz v11, :cond_61

    .line 517
    iget-object v11, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->getMetrics()Lorg/apache/http/HttpConnectionMetrics;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->setConnectionMetrics(Lorg/apache/http/HttpConnectionMetrics;)V

    .line 519
    :cond_61
    return-void
.end method

.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .registers 7
    .parameter "response"
    .parameter "context"

    .prologue
    .line 526
    const-string v3, "http.cookie-spec"

    invoke-static {p2, v3}, Lcom/google/android/apps/plus/network/HttpTransaction;->getAttribute(Lorg/apache/http/protocol/HttpContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/cookie/CookieSpec;

    .line 527
    .local v1, cookieSpec:Lorg/apache/http/cookie/CookieSpec;
    const-string v3, "http.cookie-origin"

    invoke-static {p2, v3}, Lcom/google/android/apps/plus/network/HttpTransaction;->getAttribute(Lorg/apache/http/protocol/HttpContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/CookieOrigin;

    .line 528
    .local v0, cookieOrigin:Lorg/apache/http/cookie/CookieOrigin;
    const-string v3, "Set-Cookie"

    invoke-interface {p1, v3}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v2

    .line 529
    .local v2, it:Lorg/apache/http/HeaderIterator;
    invoke-direct {p0, v2, v1, v0}, Lcom/google/android/apps/plus/network/HttpTransaction;->processCookies(Lorg/apache/http/HeaderIterator;Lorg/apache/http/cookie/CookieSpec;Lorg/apache/http/cookie/CookieOrigin;)V

    .line 530
    invoke-interface {v1}, Lorg/apache/http/cookie/CookieSpec;->getVersion()I

    move-result v3

    if-lez v3, :cond_28

    .line 531
    const-string v3, "Set-Cookie2"

    invoke-interface {p1, v3}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v2

    .line 532
    invoke-direct {p0, v2, v1, v0}, Lcom/google/android/apps/plus/network/HttpTransaction;->processCookies(Lorg/apache/http/HeaderIterator;Lorg/apache/http/cookie/CookieSpec;Lorg/apache/http/cookie/CookieOrigin;)V

    .line 534
    :cond_28
    return-void
.end method

.method public setHttpTransactionMetrics(Lcom/google/android/apps/plus/network/HttpTransactionMetrics;)V
    .registers 2
    .parameter "metrics"

    .prologue
    .line 292
    iput-object p1, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    .line 293
    return-void
.end method
