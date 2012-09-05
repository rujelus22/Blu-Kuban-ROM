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
.field private static final sEnabledFeatures:[Ljava/lang/String;

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
    .line 73
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/network/HttpTransaction;->sSupportedSchemes:Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 74
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/network/HttpTransaction;->sHttpParams:Lorg/apache/http/params/HttpParams;

    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "296"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "301"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/network/HttpTransaction;->sEnabledFeatures:[Ljava/lang/String;

    .line 82
    sget-object v0, Lcom/google/android/apps/plus/network/HttpTransaction;->sHttpParams:Lorg/apache/http/params/HttpParams;

    const-string v1, "http.socket.timeout"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x15f90

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 83
    sget-object v0, Lcom/google/android/apps/plus/network/HttpTransaction;->sHttpParams:Lorg/apache/http/params/HttpParams;

    const-string v1, "http.connection.timeout"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x4e20

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 88
    sget-object v0, Lcom/google/android/apps/plus/network/HttpTransaction;->sSupportedSchemes:Lorg/apache/http/conn/scheme/SchemeRegistry;

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v3

    const/16 v4, 0x50

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 89
    sget-object v0, Lcom/google/android/apps/plus/network/HttpTransaction;->sSupportedSchemes:Lorg/apache/http/conn/scheme/SchemeRegistry;

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v3

    const/16 v4, 0x1bb

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;)V
    .registers 10
    .parameter "method"
    .parameter "url"
    .parameter "authToken"
    .parameter "userAgent"
    .parameter "clientVersion"
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
    if-nez p6, :cond_55

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
    iput-object p6, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mListener:Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;

    .line 241
    invoke-direct {p0, p3, p4, p5}, Lcom/google/android/apps/plus/network/HttpTransaction;->addStandardHeaders(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;)V
    .registers 11
    .parameter "method"
    .parameter "url"
    .parameter "authToken"
    .parameter "userAgent"
    .parameter "clientVersion"
    .parameter "postData"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    const-string v0, "POST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 259
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 266
    :goto_12
    if-nez p7, :cond_45

    .line 267
    new-instance v0, Lcom/google/android/apps/plus/network/NetworkException;

    const-string v1, "The listener cannot be null"

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/network/NetworkException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_1c
    const-string v0, "PUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 261
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    goto :goto_12

    .line 263
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

    .line 270
    :cond_45
    iput-object p7, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mListener:Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;

    .line 272
    invoke-direct {p0, p3, p4, p5}, Lcom/google/android/apps/plus/network/HttpTransaction;->addStandardHeaders(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    if-eqz p6, :cond_58

    .line 275
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    new-instance v1, Lcom/google/android/apps/plus/network/HttpTransaction$MyInputStreamEntity;

    invoke-direct {v1, p0, p6}, Lcom/google/android/apps/plus/network/HttpTransaction$MyInputStreamEntity;-><init>(Lcom/google/android/apps/plus/network/HttpTransaction;Lorg/apache/http/HttpEntity;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 277
    :cond_58
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/network/HttpTransaction;)Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/android/apps/plus/network/HttpTransaction;->getListener()Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;

    move-result-object v0

    return-object v0
.end method

.method private addStandardHeaders(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "authToken"
    .parameter "userAgent"
    .parameter "clientVersion"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    const-string v1, "Cache-Control"

    const-string v2, "no-cache, no-transform"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    const-string v1, "X-Wap-Proxy-Cookie"

    const-string v2, "none"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    const-string v1, "X-Mobile-Google-Client"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    if-eqz p2, :cond_40

    .line 303
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    const-string v1, "User-Agent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (gzip)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_40
    if-eqz p1, :cond_80

    .line 309
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_66

    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "10.0.2.2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 311
    :cond_66
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GoogleLogin auth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_80
    if-eqz p3, :cond_89

    .line 316
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    const-string v1, "X-Mobile-Google-Client-Version"

    invoke-virtual {v0, v1, p3}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_89
    sget-object v0, Lcom/google/android/apps/plus/network/HttpTransaction;->sEnabledFeatures:[Ljava/lang/String;

    if-eqz v0, :cond_a1

    sget-object v0, Lcom/google/android/apps/plus/network/HttpTransaction;->sEnabledFeatures:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_a1

    .line 320
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    const-string v1, "X-Mobile-Google-Features"

    const-string v2, ","

    sget-object v3, Lcom/google/android/apps/plus/network/HttpTransaction;->sEnabledFeatures:[Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_a1
    return-void
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
    .line 578
    invoke-interface {p0, p1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getListener()Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;
    .registers 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mListener:Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;

    return-object v0
.end method

.method private processCookies(Lorg/apache/http/HeaderIterator;Lorg/apache/http/cookie/CookieSpec;Lorg/apache/http/cookie/CookieOrigin;)V
    .registers 11
    .parameter "iterator"
    .parameter "cookieSpec"
    .parameter "cookieOrigin"

    .prologue
    .line 512
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 513
    invoke-interface {p1}, Lorg/apache/http/HeaderIterator;->nextHeader()Lorg/apache/http/Header;

    move-result-object v3

    .line 515
    .local v3, header:Lorg/apache/http/Header;
    :try_start_a
    invoke-interface {p2, v3, p3}, Lorg/apache/http/cookie/CookieSpec;->parse(Lorg/apache/http/Header;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v1

    .line 516
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

    .line 517
    .local v0, cookie:Lorg/apache/http/cookie/Cookie;
    iget-object v5, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mListener:Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;

    invoke-interface {v5, v0}, Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;->onHttpCookie(Lorg/apache/http/cookie/Cookie;)V
    :try_end_23
    .catch Lorg/apache/http/cookie/MalformedCookieException; {:try_start_a .. :try_end_23} :catch_24

    goto :goto_12

    .line 519
    .end local v0           #cookie:Lorg/apache/http/cookie/Cookie;
    .end local v1           #cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    :catch_24
    move-exception v2

    .line 520
    .local v2, ex:Lorg/apache/http/cookie/MalformedCookieException;
    const-string v5, "HttpTransaction"

    const-string v6, "Malformed cookie"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 523
    .end local v2           #ex:Lorg/apache/http/cookie/MalformedCookieException;
    .end local v3           #header:Lorg/apache/http/Header;
    :cond_2d
    return-void
.end method

.method private readFromHttpStream(Lorg/apache/http/HttpEntity;)V
    .registers 11
    .parameter "entity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 419
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v6

    if-eqz v6, :cond_6f

    .line 420
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, contentEncoding:Ljava/lang/String;
    :goto_e
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 426
    .local v2, contentType:Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    long-to-int v1, v6

    .line 427
    .local v1, contentLength:I
    const-string v6, "HttpTransaction"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 428
    const-string v6, "HttpTransaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readFromHttpStream: Encoding: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_50
    const/4 v4, 0x0

    .line 434
    .local v4, inputStream:Ljava/io/InputStream;
    :try_start_51
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 437
    if-eqz v0, :cond_66

    const-string v6, "gzip"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_66

    .line 438
    new-instance v5, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v5, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_64} :catch_71

    .line 439
    .end local v4           #inputStream:Ljava/io/InputStream;
    .local v5, inputStream:Ljava/io/InputStream;
    const/4 v1, -0x1

    move-object v4, v5

    .line 451
    .end local v5           #inputStream:Ljava/io/InputStream;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    :cond_66
    :try_start_66
    iget-object v6, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mListener:Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;

    invoke-interface {v6, v4, v2, v1}, Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;->onHttpReadFromStream(Ljava/io/InputStream;Ljava/lang/String;I)V
    :try_end_6b
    .catchall {:try_start_66 .. :try_end_6b} :catchall_7f

    .line 454
    :try_start_6b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_86

    .line 459
    :goto_6e
    return-void

    .line 422
    .end local v0           #contentEncoding:Ljava/lang/String;
    .end local v1           #contentLength:I
    .end local v2           #contentType:Ljava/lang/String;
    .end local v4           #inputStream:Ljava/io/InputStream;
    :cond_6f
    const/4 v0, 0x0

    .restart local v0       #contentEncoding:Ljava/lang/String;
    goto :goto_e

    .line 441
    .restart local v1       #contentLength:I
    .restart local v2       #contentType:Ljava/lang/String;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    :catch_71
    move-exception v3

    .line 443
    .local v3, ex:Ljava/io/IOException;
    :try_start_72
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_84

    .line 447
    :goto_75
    new-instance v6, Lcom/google/android/apps/plus/network/NetworkException;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/apps/plus/network/NetworkException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 453
    .end local v3           #ex:Ljava/io/IOException;
    :catchall_7f
    move-exception v6

    .line 454
    :try_start_80
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_88

    .line 457
    :goto_83
    throw v6

    .line 444
    .restart local v3       #ex:Ljava/io/IOException;
    :catch_84
    move-exception v6

    goto :goto_75

    .line 455
    .end local v3           #ex:Ljava/io/IOException;
    :catch_86
    move-exception v6

    goto :goto_6e

    :catch_88
    move-exception v7

    goto :goto_83
.end method


# virtual methods
.method public abort()V
    .registers 4

    .prologue
    .line 526
    iget-boolean v1, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mAborted:Z

    if-eqz v1, :cond_5

    .line 550
    :cond_4
    :goto_4
    return-void

    .line 530
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mAborted:Z

    .line 531
    iget-object v1, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v1, :cond_4

    .line 532
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_29

    .line 539
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 540
    .local v0, policy:Landroid/os/StrictMode$ThreadPolicy;
    sget-object v1, Landroid/os/StrictMode$ThreadPolicy;->LAX:Landroid/os/StrictMode$ThreadPolicy;

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 542
    :try_start_1b
    iget-object v1, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_24

    .line 544
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_4

    :catchall_24
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1

    .line 547
    .end local v0           #policy:Landroid/os/StrictMode$ThreadPolicy;
    :cond_29
    iget-object v1, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    goto :goto_4
.end method

.method public execute()V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 330
    new-instance v1, Lorg/apache/http/impl/conn/SingleClientConnManager;

    sget-object v2, Lcom/google/android/apps/plus/network/HttpTransaction;->sHttpParams:Lorg/apache/http/params/HttpParams;

    sget-object v3, Lcom/google/android/apps/plus/network/HttpTransaction;->sSupportedSchemes:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 334
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v3, Lcom/google/android/apps/plus/network/HttpTransaction;->sHttpParams:Lorg/apache/http/params/HttpParams;

    invoke-direct {v2, v1, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 337
    const-class v3, Lorg/apache/http/client/protocol/RequestAddCookies;

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->removeRequestInterceptorByClass(Ljava/lang/Class;)V

    .line 338
    const-class v3, Lorg/apache/http/client/protocol/ResponseProcessCookies;

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->removeResponseInterceptorByClass(Ljava/lang/Class;)V

    .line 341
    invoke-virtual {v2, p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 342
    invoke-virtual {v2, p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 345
    :try_start_21
    iget-boolean v3, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mAborted:Z
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_1bc
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_21 .. :try_end_23} :catch_cd
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_23} :catch_142

    if-eqz v3, :cond_32

    .line 405
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    if-eqz v0, :cond_2e

    .line 406
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->onEndTransaction()V

    .line 408
    :cond_2e
    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 410
    :goto_31
    return-void

    .line 350
    :cond_32
    :try_start_32
    iget-object v3, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 352
    iget-boolean v3, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mAborted:Z
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_1bc
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_32 .. :try_end_3a} :catch_cd
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3a} :catch_142

    if-eqz v3, :cond_49

    .line 405
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    if-eqz v0, :cond_45

    .line 406
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->onEndTransaction()V

    .line 408
    :cond_45
    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_31

    .line 356
    :cond_49
    :try_start_49
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 357
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v4

    .line 359
    iget-boolean v5, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mAborted:Z
    :try_end_5b
    .catchall {:try_start_49 .. :try_end_5b} :catchall_1bc
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_49 .. :try_end_5b} :catch_cd
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_5b} :catch_142

    if-eqz v5, :cond_6a

    .line 405
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    if-eqz v0, :cond_66

    .line 406
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->onEndTransaction()V

    .line 408
    :cond_66
    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_31

    .line 364
    :cond_6a
    const/16 v5, 0xc8

    if-ne v3, v5, :cond_86

    .line 365
    :try_start_6e
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/network/HttpTransaction;->readFromHttpStream(Lorg/apache/http/HttpEntity;)V

    .line 375
    :goto_75
    iget-boolean v2, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mAborted:Z
    :try_end_77
    .catchall {:try_start_6e .. :try_end_77} :catchall_1bc
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_6e .. :try_end_77} :catch_cd
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_77} :catch_142

    if-eqz v2, :cond_12f

    .line 405
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    if-eqz v0, :cond_82

    .line 406
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->onEndTransaction()V

    .line 408
    :cond_82
    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_31

    .line 368
    :cond_86
    :try_start_86
    const-string v0, "HttpTransaction"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 369
    const-string v0, "HttpTransaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " ["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_c7
    new-instance v0, Lorg/apache/http/client/HttpResponseException;

    invoke-direct {v0, v3, v4}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V
    :try_end_cc
    .catchall {:try_start_86 .. :try_end_cc} :catchall_1bc
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_86 .. :try_end_cc} :catch_cd
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_cc} :catch_142

    goto :goto_75

    .line 380
    :catch_cd
    move-exception v0

    .line 381
    :try_start_ce
    const-string v2, "HttpTransaction"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_114

    .line 382
    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->printStackTrace()V

    .line 383
    const-string v2, "HttpTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HttpResponseException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_114
    iget-object v2, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mListener:Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v3

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;->onHttpTransactionComplete(ILjava/lang/String;Ljava/lang/Exception;)V
    :try_end_121
    .catchall {:try_start_ce .. :try_end_121} :catchall_1bc

    .line 405
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    if-eqz v0, :cond_12a

    .line 406
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->onEndTransaction()V

    .line 408
    :cond_12a
    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_31

    .line 379
    :cond_12f
    :try_start_12f
    iget-object v2, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mListener:Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;

    invoke-interface {v2, v3, v4, v0}, Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;->onHttpTransactionComplete(ILjava/lang/String;Ljava/lang/Exception;)V
    :try_end_134
    .catchall {:try_start_12f .. :try_end_134} :catchall_1bc
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_12f .. :try_end_134} :catch_cd
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_134} :catch_142

    .line 405
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    if-eqz v0, :cond_13d

    .line 406
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->onEndTransaction()V

    .line 408
    :cond_13d
    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_31

    .line 388
    :catch_142
    move-exception v0

    .line 390
    :try_start_143
    iget-boolean v2, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mAborted:Z
    :try_end_145
    .catchall {:try_start_143 .. :try_end_145} :catchall_1bc

    if-eqz v2, :cond_155

    .line 405
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    if-eqz v0, :cond_150

    .line 406
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->onEndTransaction()V

    .line 408
    :cond_150
    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_31

    .line 395
    :cond_155
    :try_start_155
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_175

    .line 396
    const-string v2, "HttpTransaction"

    const-string v3, "ERROR"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 403
    :cond_160
    :goto_160
    iget-object v2, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mListener:Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v0}, Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;->onHttpTransactionComplete(ILjava/lang/String;Ljava/lang/Exception;)V
    :try_end_167
    .catchall {:try_start_155 .. :try_end_167} :catchall_1bc

    .line 405
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    if-eqz v0, :cond_170

    .line 406
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->onEndTransaction()V

    .line 408
    :cond_170
    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_31

    .line 397
    :cond_175
    :try_start_175
    const-string v2, "HttpTransaction"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_160

    .line 398
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 399
    const-string v2, "HttpTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1bb
    .catchall {:try_start_175 .. :try_end_1bb} :catchall_1bc

    goto :goto_160

    .line 405
    :catchall_1bc
    move-exception v0

    iget-object v2, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    if-eqz v2, :cond_1c6

    .line 406
    iget-object v2, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->onEndTransaction()V

    .line 408
    :cond_1c6
    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v0
.end method

.method public isAborted()Z
    .registers 2

    .prologue
    .line 553
    iget-boolean v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mAborted:Z

    if-eqz v0, :cond_6

    .line 554
    const/4 v0, 0x1

    .line 561
    :goto_5
    return v0

    .line 557
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v0, :cond_11

    .line 558
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->isAborted()Z

    move-result v0

    goto :goto_5

    .line 561
    :cond_11
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onStartResultProcessing()V
    .registers 2

    .prologue
    .line 565
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    if-eqz v0, :cond_9

    .line 566
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->onStartResultProcessing()V

    .line 568
    :cond_9
    return-void
.end method

.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .registers 16
    .parameter "request"
    .parameter "context"

    .prologue
    .line 473
    const-string v11, "http.cookiespec-registry"

    invoke-static {p2, v11}, Lcom/google/android/apps/plus/network/HttpTransaction;->getAttribute(Lorg/apache/http/protocol/HttpContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/http/cookie/CookieSpecRegistry;

    .line 474
    .local v7, registry:Lorg/apache/http/cookie/CookieSpecRegistry;
    const-string v11, "http.target_host"

    invoke-static {p2, v11}, Lcom/google/android/apps/plus/network/HttpTransaction;->getAttribute(Lorg/apache/http/protocol/HttpContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/http/HttpHost;

    .line 475
    .local v10, targetHost:Lorg/apache/http/HttpHost;
    const-string v11, "http.connection"

    invoke-static {p2, v11}, Lcom/google/android/apps/plus/network/HttpTransaction;->getAttribute(Lorg/apache/http/protocol/HttpContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/ManagedClientConnection;

    .line 476
    .local v0, conn:Lorg/apache/http/conn/ManagedClientConnection;
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/http/client/params/HttpClientParams;->getCookiePolicy(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;

    move-result-object v5

    .local v5, policy:Ljava/lang/String;
    move-object v11, p1

    .line 477
    check-cast v11, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v11}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v8

    .line 478
    .local v8, requestURI:Ljava/net/URI;
    invoke-virtual {v10}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v3

    .line 479
    .local v3, hostName:Ljava/lang/String;
    invoke-virtual {v10}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v6

    .line 480
    .local v6, port:I
    if-gez v6, :cond_35

    .line 481
    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->getRemotePort()I

    move-result v6

    .line 483
    :cond_35
    invoke-virtual {v8}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 484
    .local v4, path:Ljava/lang/String;
    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->isSecure()Z

    move-result v9

    .line 485
    .local v9, secure:Z
    new-instance v1, Lorg/apache/http/cookie/CookieOrigin;

    invoke-direct {v1, v3, v6, v4, v9}, Lorg/apache/http/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 486
    .local v1, cookieOrigin:Lorg/apache/http/cookie/CookieOrigin;
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v11

    invoke-virtual {v7, v5, v11}, Lorg/apache/http/cookie/CookieSpecRegistry;->getCookieSpec(Ljava/lang/String;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/cookie/CookieSpec;

    move-result-object v2

    .line 487
    .local v2, cookieSpec:Lorg/apache/http/cookie/CookieSpec;
    const-string v11, "http.cookie-spec"

    invoke-interface {p2, v11, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 488
    const-string v11, "http.cookie-origin"

    invoke-interface {p2, v11, v1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 490
    iget-object v11, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    if-eqz v11, :cond_61

    .line 491
    iget-object v11, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->getMetrics()Lorg/apache/http/HttpConnectionMetrics;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->setConnectionMetrics(Lorg/apache/http/HttpConnectionMetrics;)V

    .line 493
    :cond_61
    return-void
.end method

.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .registers 7
    .parameter "response"
    .parameter "context"

    .prologue
    .line 500
    const-string v3, "http.cookie-spec"

    invoke-static {p2, v3}, Lcom/google/android/apps/plus/network/HttpTransaction;->getAttribute(Lorg/apache/http/protocol/HttpContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/cookie/CookieSpec;

    .line 501
    .local v1, cookieSpec:Lorg/apache/http/cookie/CookieSpec;
    const-string v3, "http.cookie-origin"

    invoke-static {p2, v3}, Lcom/google/android/apps/plus/network/HttpTransaction;->getAttribute(Lorg/apache/http/protocol/HttpContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/CookieOrigin;

    .line 502
    .local v0, cookieOrigin:Lorg/apache/http/cookie/CookieOrigin;
    const-string v3, "Set-Cookie"

    invoke-interface {p1, v3}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v2

    .line 503
    .local v2, it:Lorg/apache/http/HeaderIterator;
    invoke-direct {p0, v2, v1, v0}, Lcom/google/android/apps/plus/network/HttpTransaction;->processCookies(Lorg/apache/http/HeaderIterator;Lorg/apache/http/cookie/CookieSpec;Lorg/apache/http/cookie/CookieOrigin;)V

    .line 504
    invoke-interface {v1}, Lorg/apache/http/cookie/CookieSpec;->getVersion()I

    move-result v3

    if-lez v3, :cond_28

    .line 505
    const-string v3, "Set-Cookie2"

    invoke-interface {p1, v3}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v2

    .line 506
    invoke-direct {p0, v2, v1, v0}, Lcom/google/android/apps/plus/network/HttpTransaction;->processCookies(Lorg/apache/http/HeaderIterator;Lorg/apache/http/cookie/CookieSpec;Lorg/apache/http/cookie/CookieOrigin;)V

    .line 508
    :cond_28
    return-void
.end method

.method public setHttpTransactionMetrics(Lcom/google/android/apps/plus/network/HttpTransactionMetrics;)V
    .registers 2
    .parameter "metrics"

    .prologue
    .line 280
    iput-object p1, p0, Lcom/google/android/apps/plus/network/HttpTransaction;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    .line 281
    return-void
.end method
