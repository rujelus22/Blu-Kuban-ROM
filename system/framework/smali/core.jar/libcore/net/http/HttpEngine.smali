.class public Llibcore/net/http/HttpEngine;
.super Ljava/lang/Object;
.source "HttpEngine.java"


# static fields
.field private static final BAD_GATEWAY_RESPONSE:Ljava/net/CacheResponse; = null

.field public static final CONNECT:Ljava/lang/String; = "CONNECT"

.field public static final DEFAULT_CHUNK_LENGTH:I = 0x400

.field public static final DELETE:Ljava/lang/String; = "DELETE"

.field public static final GET:Ljava/lang/String; = "GET"

.field public static final HEAD:Ljava/lang/String; = "HEAD"

.field public static final HTTP_CONTINUE:I = 0x64

.field public static final MAX_REDIRECTS:I = 0x5

.field private static final MAX_REQUEST_BUFFER_LENGTH:I = 0x8000

.field public static final OPTIONS:Ljava/lang/String; = "OPTIONS"

.field public static final POST:Ljava/lang/String; = "POST"

.field public static final PUT:Ljava/lang/String; = "PUT"

.field public static final TRACE:Ljava/lang/String; = "TRACE"


# instance fields
.field private automaticallyReleaseConnectionToPool:Z

.field private cacheRequest:Ljava/net/CacheRequest;

.field private cacheResponse:Ljava/net/CacheResponse;

.field private cachedResponseBody:Ljava/io/InputStream;

.field private cachedResponseHeaders:Llibcore/net/http/ResponseHeaders;

.field protected connection:Llibcore/net/http/HttpConnection;

.field private connectionReleased:Z

.field private httpMinorVersion:I

.field protected final method:Ljava/lang/String;

.field protected final policy:Llibcore/net/http/HttpURLConnectionImpl;

.field private requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

.field private final requestHeaders:Llibcore/net/http/RequestHeaders;

.field private requestOut:Ljava/io/OutputStream;

.field private responseBodyIn:Ljava/io/InputStream;

.field private final responseCache:Ljava/net/ResponseCache;

.field private responseHeaders:Llibcore/net/http/ResponseHeaders;

.field private responseSource:Llibcore/net/http/ResponseSource;

.field sendChunked:Z

.field private sentRequestMillis:J

.field private socketIn:Ljava/io/InputStream;

.field private socketOut:Ljava/io/OutputStream;

.field private transparentGzip:Z

.field private final uri:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 69
    new-instance v0, Llibcore/net/http/HttpEngine$1;

    invoke-direct {v0}, Llibcore/net/http/HttpEngine$1;-><init>()V

    sput-object v0, Llibcore/net/http/HttpEngine;->BAD_GATEWAY_RESPONSE:Ljava/net/CacheResponse;

    return-void
.end method

.method public constructor <init>(Llibcore/net/http/HttpURLConnectionImpl;Ljava/lang/String;Llibcore/net/http/RawHeaders;Llibcore/net/http/HttpConnection;Llibcore/net/http/RetryableOutputStream;)V
    .registers 10
    .parameter "policy"
    .parameter "method"
    .parameter "requestHeaders"
    .parameter "connection"
    .parameter "requestBodyOut"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 128
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v1

    iput-object v1, p0, Llibcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    .line 133
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Llibcore/net/http/HttpEngine;->sentRequestMillis:J

    .line 149
    const/4 v1, 0x1

    iput v1, p0, Llibcore/net/http/HttpEngine;->httpMinorVersion:I

    .line 186
    iput-object p1, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    .line 187
    iput-object p2, p0, Llibcore/net/http/HttpEngine;->method:Ljava/lang/String;

    .line 188
    iput-object p4, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    .line 189
    iput-object p5, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    .line 192
    :try_start_18
    invoke-virtual {p1}, Llibcore/net/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toURILenient()Ljava/net/URI;

    move-result-object v1

    iput-object v1, p0, Llibcore/net/http/HttpEngine;->uri:Ljava/net/URI;
    :try_end_22
    .catch Ljava/net/URISyntaxException; {:try_start_18 .. :try_end_22} :catch_31

    .line 197
    new-instance v1, Llibcore/net/http/RequestHeaders;

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    new-instance v3, Llibcore/net/http/RawHeaders;

    invoke-direct {v3, p3}, Llibcore/net/http/RawHeaders;-><init>(Llibcore/net/http/RawHeaders;)V

    invoke-direct {v1, v2, v3}, Llibcore/net/http/RequestHeaders;-><init>(Ljava/net/URI;Llibcore/net/http/RawHeaders;)V

    iput-object v1, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    .line 198
    return-void

    .line 193
    :catch_31
    move-exception v0

    .line 194
    .local v0, e:Ljava/net/URISyntaxException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getRequestLine()Ljava/lang/String;
    .registers 4

    .prologue
    .line 696
    iget v1, p0, Llibcore/net/http/HttpEngine;->httpMinorVersion:I

    if-nez v1, :cond_2e

    const-string v0, "HTTP/1.0"

    .line 697
    .local v0, protocol:Ljava/lang/String;
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Llibcore/net/http/HttpEngine;->requestString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 696
    .end local v0           #protocol:Ljava/lang/String;
    :cond_2e
    const-string v0, "HTTP/1.1"

    goto :goto_6
.end method

.method private getTransferStream()Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 519
    invoke-virtual {p0}, Llibcore/net/http/HttpEngine;->hasResponseBody()Z

    move-result v0

    if-nez v0, :cond_11

    .line 520
    new-instance v0, Llibcore/net/http/FixedLengthInputStream;

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->socketIn:Ljava/io/InputStream;

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->cacheRequest:Ljava/net/CacheRequest;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Llibcore/net/http/FixedLengthInputStream;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Llibcore/net/http/HttpEngine;I)V

    .line 537
    :goto_10
    return-object v0

    .line 523
    :cond_11
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-virtual {v0}, Llibcore/net/http/ResponseHeaders;->isChunked()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 524
    new-instance v0, Llibcore/net/http/ChunkedInputStream;

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->socketIn:Ljava/io/InputStream;

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->cacheRequest:Ljava/net/CacheRequest;

    invoke-direct {v0, v1, v2, p0}, Llibcore/net/http/ChunkedInputStream;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Llibcore/net/http/HttpEngine;)V

    goto :goto_10

    .line 527
    :cond_23
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-virtual {v0}, Llibcore/net/http/ResponseHeaders;->getContentLength()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3c

    .line 528
    new-instance v0, Llibcore/net/http/FixedLengthInputStream;

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->socketIn:Ljava/io/InputStream;

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->cacheRequest:Ljava/net/CacheRequest;

    iget-object v3, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-virtual {v3}, Llibcore/net/http/ResponseHeaders;->getContentLength()I

    move-result v3

    invoke-direct {v0, v1, v2, p0, v3}, Llibcore/net/http/FixedLengthInputStream;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Llibcore/net/http/HttpEngine;I)V

    goto :goto_10

    .line 537
    :cond_3c
    new-instance v0, Llibcore/net/http/UnknownLengthHttpInputStream;

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->socketIn:Ljava/io/InputStream;

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->cacheRequest:Ljava/net/CacheRequest;

    invoke-direct {v0, v1, v2, p0}, Llibcore/net/http/UnknownLengthHttpInputStream;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Llibcore/net/http/HttpEngine;)V

    goto :goto_10
.end method

.method private hasConnectionCloseHeader()Z
    .registers 2

    .prologue
    .line 733
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    if-eqz v0, :cond_c

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-virtual {v0}, Llibcore/net/http/ResponseHeaders;->hasConnectionClose()Z

    move-result v0

    if-nez v0, :cond_14

    :cond_c
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v0}, Llibcore/net/http/RequestHeaders;->hasConnectionClose()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private hasRequestBody()Z
    .registers 3

    .prologue
    .line 368
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->method:Ljava/lang/String;

    const-string v1, "POST"

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->method:Ljava/lang/String;

    const-string v1, "PUT"

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private initContentStream(Ljava/io/InputStream;)V
    .registers 3
    .parameter "transferStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 506
    iget-boolean v0, p0, Llibcore/net/http/HttpEngine;->transparentGzip:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-virtual {v0}, Llibcore/net/http/ResponseHeaders;->isContentEncodingGzip()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 511
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-virtual {v0}, Llibcore/net/http/ResponseHeaders;->stripContentEncoding()V

    .line 512
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Llibcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    .line 516
    :goto_18
    return-void

    .line 514
    :cond_19
    iput-object p1, p0, Llibcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    goto :goto_18
.end method

.method private initResponseSource()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    sget-object v5, Llibcore/net/http/ResponseSource;->NETWORK:Llibcore/net/http/ResponseSource;

    iput-object v5, p0, Llibcore/net/http/HttpEngine;->responseSource:Llibcore/net/http/ResponseSource;

    .line 245
    iget-object v5, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v5}, Llibcore/net/http/HttpURLConnectionImpl;->getUseCaches()Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Llibcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    if-nez v5, :cond_11

    .line 278
    :cond_10
    :goto_10
    return-void

    .line 249
    :cond_11
    iget-object v5, p0, Llibcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    iget-object v6, p0, Llibcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    iget-object v7, p0, Llibcore/net/http/HttpEngine;->method:Ljava/lang/String;

    iget-object v8, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v8}, Llibcore/net/http/RequestHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v8

    invoke-virtual {v8}, Llibcore/net/http/RawHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Ljava/net/ResponseCache;->get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    move-result-object v0

    .line 251
    .local v0, candidate:Ljava/net/CacheResponse;
    if-eqz v0, :cond_10

    .line 255
    invoke-virtual {v0}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v4

    .line 256
    .local v4, responseHeadersMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {v0}, Ljava/net/CacheResponse;->getBody()Ljava/io/InputStream;

    move-result-object v5

    iput-object v5, p0, Llibcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    .line 257
    invoke-virtual {p0, v0}, Llibcore/net/http/HttpEngine;->acceptCacheResponseType(Ljava/net/CacheResponse;)Z

    move-result v5

    if-eqz v5, :cond_3d

    if-eqz v4, :cond_3d

    iget-object v5, p0, Llibcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    if-nez v5, :cond_43

    .line 260
    :cond_3d
    iget-object v5, p0, Llibcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_10

    .line 264
    :cond_43
    invoke-static {v4}, Llibcore/net/http/RawHeaders;->fromMultimap(Ljava/util/Map;)Llibcore/net/http/RawHeaders;

    move-result-object v3

    .line 265
    .local v3, rawResponseHeaders:Llibcore/net/http/RawHeaders;
    new-instance v5, Llibcore/net/http/ResponseHeaders;

    iget-object v6, p0, Llibcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-direct {v5, v6, v3}, Llibcore/net/http/ResponseHeaders;-><init>(Ljava/net/URI;Llibcore/net/http/RawHeaders;)V

    iput-object v5, p0, Llibcore/net/http/HttpEngine;->cachedResponseHeaders:Llibcore/net/http/ResponseHeaders;

    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 267
    .local v1, now:J
    iget-object v5, p0, Llibcore/net/http/HttpEngine;->cachedResponseHeaders:Llibcore/net/http/ResponseHeaders;

    iget-object v6, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v5, v1, v2, v6}, Llibcore/net/http/ResponseHeaders;->chooseResponseSource(JLlibcore/net/http/RequestHeaders;)Llibcore/net/http/ResponseSource;

    move-result-object v5

    iput-object v5, p0, Llibcore/net/http/HttpEngine;->responseSource:Llibcore/net/http/ResponseSource;

    .line 268
    iget-object v5, p0, Llibcore/net/http/HttpEngine;->responseSource:Llibcore/net/http/ResponseSource;

    sget-object v6, Llibcore/net/http/ResponseSource;->CACHE:Llibcore/net/http/ResponseSource;

    if-ne v5, v6, :cond_6e

    .line 269
    iput-object v0, p0, Llibcore/net/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    .line 270
    iget-object v5, p0, Llibcore/net/http/HttpEngine;->cachedResponseHeaders:Llibcore/net/http/ResponseHeaders;

    iget-object v6, p0, Llibcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    invoke-direct {p0, v5, v6}, Llibcore/net/http/HttpEngine;->setResponse(Llibcore/net/http/ResponseHeaders;Ljava/io/InputStream;)V

    goto :goto_10

    .line 271
    :cond_6e
    iget-object v5, p0, Llibcore/net/http/HttpEngine;->responseSource:Llibcore/net/http/ResponseSource;

    sget-object v6, Llibcore/net/http/ResponseSource;->CONDITIONAL_CACHE:Llibcore/net/http/ResponseSource;

    if-ne v5, v6, :cond_77

    .line 272
    iput-object v0, p0, Llibcore/net/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    goto :goto_10

    .line 273
    :cond_77
    iget-object v5, p0, Llibcore/net/http/HttpEngine;->responseSource:Llibcore/net/http/ResponseSource;

    sget-object v6, Llibcore/net/http/ResponseSource;->NETWORK:Llibcore/net/http/ResponseSource;

    if-ne v5, v6, :cond_83

    .line 274
    iget-object v5, p0, Llibcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_10

    .line 276
    :cond_83
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
.end method

.method private maybeCache()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 429
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v0}, Llibcore/net/http/HttpURLConnectionImpl;->getUseCaches()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    if-nez v0, :cond_d

    .line 440
    :cond_c
    :goto_c
    return-void

    .line 434
    :cond_d
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v0, v1}, Llibcore/net/http/ResponseHeaders;->isCacheable(Llibcore/net/http/RequestHeaders;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 439
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-virtual {p0}, Llibcore/net/http/HttpEngine;->getHttpConnectionToCache()Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/ResponseCache;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    move-result-object v0

    iput-object v0, p0, Llibcore/net/http/HttpEngine;->cacheRequest:Ljava/net/CacheRequest;

    goto :goto_c
.end method

.method private prepareRawRequestHeaders()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 660
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v3}, Llibcore/net/http/RequestHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v3

    invoke-direct {p0}, Llibcore/net/http/HttpEngine;->getRequestLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Llibcore/net/http/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    .line 662
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v3}, Llibcore/net/http/RequestHeaders;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1e

    .line 663
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {p0}, Llibcore/net/http/HttpEngine;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Llibcore/net/http/RequestHeaders;->setUserAgent(Ljava/lang/String;)V

    .line 666
    :cond_1e
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v3}, Llibcore/net/http/RequestHeaders;->getHost()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_35

    .line 667
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    iget-object v4, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v4}, Llibcore/net/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {p0, v4}, Llibcore/net/http/HttpEngine;->getOriginAddress(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Llibcore/net/http/RequestHeaders;->setHost(Ljava/lang/String;)V

    .line 670
    :cond_35
    iget v3, p0, Llibcore/net/http/HttpEngine;->httpMinorVersion:I

    if-lez v3, :cond_48

    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v3}, Llibcore/net/http/RequestHeaders;->getConnection()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_48

    .line 671
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    const-string v4, "Keep-Alive"

    invoke-virtual {v3, v4}, Llibcore/net/http/RequestHeaders;->setConnection(Ljava/lang/String;)V

    .line 674
    :cond_48
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v3}, Llibcore/net/http/RequestHeaders;->getAcceptEncoding()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5a

    .line 675
    const/4 v3, 0x1

    iput-boolean v3, p0, Llibcore/net/http/HttpEngine;->transparentGzip:Z

    .line 676
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    const-string v4, "gzip"

    invoke-virtual {v3, v4}, Llibcore/net/http/RequestHeaders;->setAcceptEncoding(Ljava/lang/String;)V

    .line 679
    :cond_5a
    invoke-direct {p0}, Llibcore/net/http/HttpEngine;->hasRequestBody()Z

    move-result v3

    if-eqz v3, :cond_6f

    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v3}, Llibcore/net/http/RequestHeaders;->getContentType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6f

    .line 680
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    const-string v4, "application/x-www-form-urlencoded"

    invoke-virtual {v3, v4}, Llibcore/net/http/RequestHeaders;->setContentType(Ljava/lang/String;)V

    .line 683
    :cond_6f
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v3}, Llibcore/net/http/HttpURLConnectionImpl;->getIfModifiedSince()J

    move-result-wide v1

    .line 684
    .local v1, ifModifiedSince:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_85

    .line 685
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Llibcore/net/http/RequestHeaders;->setIfModifiedSince(Ljava/util/Date;)V

    .line 688
    :cond_85
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    .line 689
    .local v0, cookieHandler:Ljava/net/CookieHandler;
    if-eqz v0, :cond_a0

    .line 690
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    iget-object v4, p0, Llibcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    iget-object v5, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v5}, Llibcore/net/http/RequestHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v5

    invoke-virtual {v5}, Llibcore/net/http/RawHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Llibcore/net/http/RequestHeaders;->addCookies(Ljava/util/Map;)V

    .line 693
    :cond_a0
    return-void
.end method

.method private readHeaders(Llibcore/net/http/RawHeaders;)V
    .registers 6
    .parameter "headers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 587
    :goto_0
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->socketIn:Ljava/io/InputStream;

    invoke-static {v2}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    .line 588
    invoke-virtual {p1, v1}, Llibcore/net/http/RawHeaders;->addLine(Ljava/lang/String;)V

    goto :goto_0

    .line 591
    :cond_10
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    .line 592
    .local v0, cookieHandler:Ljava/net/CookieHandler;
    if-eqz v0, :cond_1f

    .line 593
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-virtual {p1}, Llibcore/net/http/RawHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 595
    :cond_1f
    return-void
.end method

.method private readResponseHeaders()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 543
    :cond_0
    new-instance v0, Llibcore/net/http/RawHeaders;

    invoke-direct {v0}, Llibcore/net/http/RawHeaders;-><init>()V

    .line 544
    .local v0, headers:Llibcore/net/http/RawHeaders;
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->socketIn:Ljava/io/InputStream;

    invoke-static {v1}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Llibcore/net/http/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    .line 545
    invoke-direct {p0, v0}, Llibcore/net/http/HttpEngine;->readHeaders(Llibcore/net/http/RawHeaders;)V

    .line 546
    invoke-virtual {v0}, Llibcore/net/http/RawHeaders;->getResponseCode()I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    .line 547
    new-instance v1, Llibcore/net/http/ResponseHeaders;

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-direct {v1, v2, v0}, Llibcore/net/http/ResponseHeaders;-><init>(Ljava/net/URI;Llibcore/net/http/RawHeaders;)V

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Llibcore/net/http/HttpEngine;->setResponse(Llibcore/net/http/ResponseHeaders;Ljava/io/InputStream;)V

    .line 548
    return-void
.end method

.method private requestString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 701
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v2}, Llibcore/net/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v1

    .line 702
    .local v1, url:Ljava/net/URL;
    invoke-virtual {p0}, Llibcore/net/http/HttpEngine;->includeAuthorityInRequestLine()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 703
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 711
    :cond_10
    :goto_10
    return-object v0

    .line 705
    :cond_11
    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 706
    .local v0, fileOnly:Ljava/lang/String;
    if-nez v0, :cond_1a

    .line 707
    const-string v0, "/"

    goto :goto_10

    .line 708
    :cond_1a
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 709
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method private sendSocketRequest()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    if-nez v0, :cond_7

    .line 282
    invoke-virtual {p0}, Llibcore/net/http/HttpEngine;->connect()V

    .line 285
    :cond_7
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->socketOut:Ljava/io/OutputStream;

    if-nez v0, :cond_13

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    if-nez v0, :cond_13

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->socketIn:Ljava/io/InputStream;

    if-eqz v0, :cond_19

    .line 286
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 289
    :cond_19
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    invoke-virtual {v0}, Llibcore/net/http/HttpConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Llibcore/net/http/HttpEngine;->socketOut:Ljava/io/OutputStream;

    .line 290
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->socketOut:Ljava/io/OutputStream;

    iput-object v0, p0, Llibcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    .line 291
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    invoke-virtual {v0}, Llibcore/net/http/HttpConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Llibcore/net/http/HttpEngine;->socketIn:Ljava/io/InputStream;

    .line 293
    invoke-direct {p0}, Llibcore/net/http/HttpEngine;->hasRequestBody()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 294
    invoke-virtual {p0}, Llibcore/net/http/HttpEngine;->initRequestBodyOut()V

    .line 296
    :cond_36
    return-void
.end method

.method private setResponse(Llibcore/net/http/ResponseHeaders;Ljava/io/InputStream;)V
    .registers 4
    .parameter "headers"
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    if-eqz v0, :cond_a

    .line 358
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 360
    :cond_a
    iput-object p1, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    .line 361
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-virtual {v0}, Llibcore/net/http/ResponseHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/net/http/RawHeaders;->getHttpMinorVersion()I

    move-result v0

    iput v0, p0, Llibcore/net/http/HttpEngine;->httpMinorVersion:I

    .line 362
    if-eqz p2, :cond_1d

    .line 363
    invoke-direct {p0, p2}, Llibcore/net/http/HttpEngine;->initContentStream(Ljava/io/InputStream;)V

    .line 365
    :cond_1d
    return-void
.end method

.method private writeRequestHeaders(I)V
    .registers 8
    .parameter "contentLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 613
    iget-wide v2, p0, Llibcore/net/http/HttpEngine;->sentRequestMillis:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    .line 614
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 617
    :cond_e
    invoke-virtual {p0}, Llibcore/net/http/HttpEngine;->getNetworkRequestHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v1

    .line 618
    .local v1, headersToSend:Llibcore/net/http/RawHeaders;
    invoke-virtual {v1}, Llibcore/net/http/RawHeaders;->toHeaderString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 620
    .local v0, bytes:[B
    const/4 v2, -0x1

    if-eq p1, v2, :cond_31

    array-length v2, v0

    add-int/2addr v2, p1

    const v3, 0x8000

    if-gt v2, v3, :cond_31

    .line 621
    new-instance v2, Ljava/io/BufferedOutputStream;

    iget-object v3, p0, Llibcore/net/http/HttpEngine;->socketOut:Ljava/io/OutputStream;

    array-length v4, v0

    add-int/2addr v4, p1

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v2, p0, Llibcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    .line 624
    :cond_31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Llibcore/net/http/HttpEngine;->sentRequestMillis:J

    .line 625
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 626
    return-void
.end method


# virtual methods
.method protected acceptCacheResponseType(Ljava/net/CacheResponse;)Z
    .registers 3
    .parameter "cacheResponse"

    .prologue
    .line 424
    const/4 v0, 0x1

    return v0
.end method

.method public final automaticallyReleaseConnectionToPool()V
    .registers 3

    .prologue
    .line 452
    const/4 v0, 0x1

    iput-boolean v0, p0, Llibcore/net/http/HttpEngine;->automaticallyReleaseConnectionToPool:Z

    .line 453
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Llibcore/net/http/HttpEngine;->connectionReleased:Z

    if-eqz v0, :cond_15

    .line 454
    sget-object v0, Llibcore/net/http/HttpConnectionPool;->INSTANCE:Llibcore/net/http/HttpConnectionPool;

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    invoke-virtual {v0, v1}, Llibcore/net/http/HttpConnectionPool;->recycle(Llibcore/net/http/HttpConnection;)V

    .line 455
    const/4 v0, 0x0

    iput-object v0, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    .line 457
    :cond_15
    return-void
.end method

.method protected connect()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    if-nez v0, :cond_a

    .line 303
    invoke-virtual {p0}, Llibcore/net/http/HttpEngine;->openSocketConnection()Llibcore/net/http/HttpConnection;

    move-result-object v0

    iput-object v0, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    .line 305
    :cond_a
    return-void
.end method

.method public final getCacheResponse()Ljava/net/CacheResponse;
    .registers 2

    .prologue
    .line 411
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    return-object v0
.end method

.method public final getConnection()Llibcore/net/http/HttpConnection;
    .registers 2

    .prologue
    .line 415
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    return-object v0
.end method

.method protected final getDefaultUserAgent()Ljava/lang/String;
    .registers 4

    .prologue
    .line 728
    const-string v1, "http.agent"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 729
    .local v0, agent:Ljava/lang/String;
    if-eqz v0, :cond_9

    .end local v0           #agent:Ljava/lang/String;
    :goto_8
    return-object v0

    .restart local v0       #agent:Ljava/lang/String;
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Java"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "java.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method protected getHttpConnectionToCache()Ljava/net/HttpURLConnection;
    .registers 2

    .prologue
    .line 443
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    return-object v0
.end method

.method protected getNetworkRequestHeaders()Llibcore/net/http/RawHeaders;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 638
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v2}, Llibcore/net/http/RequestHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v2

    invoke-direct {p0}, Llibcore/net/http/HttpEngine;->getRequestLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Llibcore/net/http/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    .line 640
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v2}, Llibcore/net/http/HttpURLConnectionImpl;->getFixedContentLength()I

    move-result v1

    .line 641
    .local v1, fixedContentLength:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_22

    .line 642
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v2, v1}, Llibcore/net/http/RequestHeaders;->setContentLength(I)V

    .line 650
    :cond_1b
    :goto_1b
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v2}, Llibcore/net/http/RequestHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v2

    return-object v2

    .line 643
    :cond_22
    iget-boolean v2, p0, Llibcore/net/http/HttpEngine;->sendChunked:Z

    if-eqz v2, :cond_2c

    .line 644
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v2}, Llibcore/net/http/RequestHeaders;->setChunked()V

    goto :goto_1b

    .line 645
    :cond_2c
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    instance-of v2, v2, Llibcore/net/http/RetryableOutputStream;

    if-eqz v2, :cond_1b

    .line 646
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    check-cast v2, Llibcore/net/http/RetryableOutputStream;

    invoke-virtual {v2}, Llibcore/net/http/RetryableOutputStream;->contentLength()I

    move-result v0

    .line 647
    .local v0, contentLength:I
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v2, v0}, Llibcore/net/http/RequestHeaders;->setContentLength(I)V

    goto :goto_1b
.end method

.method protected final getOriginAddress(Ljava/net/URL;)Ljava/lang/String;
    .registers 6
    .parameter "url"

    .prologue
    .line 738
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v0

    .line 739
    .local v0, port:I
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 740
    .local v1, result:Ljava/lang/String;
    if-lez v0, :cond_29

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v2}, Llibcore/net/http/HttpURLConnectionImpl;->getDefaultPort()I

    move-result v2

    if-eq v0, v2, :cond_29

    .line 741
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 743
    :cond_29
    return-object v1
.end method

.method public final getRequestBody()Ljava/io/OutputStream;
    .registers 2

    .prologue
    .line 375
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseSource:Llibcore/net/http/ResponseSource;

    if-nez v0, :cond_a

    .line 376
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 378
    :cond_a
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    return-object v0
.end method

.method public final getRequestHeaders()Llibcore/net/http/RequestHeaders;
    .registers 2

    .prologue
    .line 386
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    return-object v0
.end method

.method public final getResponseBody()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 404
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    if-nez v0, :cond_a

    .line 405
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 407
    :cond_a
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    return-object v0
.end method

.method public final getResponseCode()I
    .registers 2

    .prologue
    .line 397
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    if-nez v0, :cond_a

    .line 398
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 400
    :cond_a
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-virtual {v0}, Llibcore/net/http/ResponseHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/net/http/RawHeaders;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public final getResponseHeaders()Llibcore/net/http/ResponseHeaders;
    .registers 2

    .prologue
    .line 390
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    if-nez v0, :cond_a

    .line 391
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 393
    :cond_a
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    return-object v0
.end method

.method public final hasResponse()Z
    .registers 2

    .prologue
    .line 382
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final hasResponseBody()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 555
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-virtual {v2}, Llibcore/net/http/ResponseHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v2

    invoke-virtual {v2}, Llibcore/net/http/RawHeaders;->getResponseCode()I

    move-result v0

    .line 556
    .local v0, responseCode:I
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->method:Ljava/lang/String;

    const-string v3, "HEAD"

    if-eq v2, v3, :cond_28

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->method:Ljava/lang/String;

    const-string v3, "CONNECT"

    if-eq v2, v3, :cond_28

    const/16 v2, 0x64

    if-lt v0, v2, :cond_1f

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_28

    :cond_1f
    const/16 v2, 0xcc

    if-eq v0, v2, :cond_28

    const/16 v2, 0x130

    if-eq v0, v2, :cond_28

    .line 573
    :cond_27
    :goto_27
    return v1

    .line 569
    :cond_28
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-virtual {v2}, Llibcore/net/http/ResponseHeaders;->getContentLength()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_27

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-virtual {v2}, Llibcore/net/http/ResponseHeaders;->isChunked()Z

    move-result v2

    if-nez v2, :cond_27

    .line 573
    const/4 v1, 0x0

    goto :goto_27
.end method

.method protected includeAuthorityInRequestLine()Z
    .registers 2

    .prologue
    .line 724
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v0}, Llibcore/net/http/HttpURLConnectionImpl;->usingProxy()Z

    move-result v0

    return v0
.end method

.method protected initRequestBodyOut()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 319
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v2}, Llibcore/net/http/HttpURLConnectionImpl;->getChunkLength()I

    move-result v0

    .line 320
    .local v0, chunkLength:I
    if-gtz v0, :cond_11

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v2}, Llibcore/net/http/RequestHeaders;->isChunked()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 321
    :cond_11
    const/4 v2, 0x1

    iput-boolean v2, p0, Llibcore/net/http/HttpEngine;->sendChunked:Z

    .line 322
    if-ne v0, v3, :cond_18

    .line 323
    const/16 v0, 0x400

    .line 327
    :cond_18
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->socketOut:Ljava/io/OutputStream;

    if-nez v2, :cond_24

    .line 328
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No socket to write to; was a POST cached?"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 331
    :cond_24
    iget v2, p0, Llibcore/net/http/HttpEngine;->httpMinorVersion:I

    if-nez v2, :cond_2b

    .line 332
    const/4 v2, 0x0

    iput-boolean v2, p0, Llibcore/net/http/HttpEngine;->sendChunked:Z

    .line 335
    :cond_2b
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v2}, Llibcore/net/http/HttpURLConnectionImpl;->getFixedContentLength()I

    move-result v1

    .line 336
    .local v1, fixedContentLength:I
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    if-eqz v2, :cond_36

    .line 350
    :goto_35
    return-void

    .line 338
    :cond_36
    if-eq v1, v3, :cond_45

    .line 339
    invoke-direct {p0, v1}, Llibcore/net/http/HttpEngine;->writeRequestHeaders(I)V

    .line 340
    new-instance v2, Llibcore/net/http/FixedLengthOutputStream;

    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    invoke-direct {v2, v3, v1}, Llibcore/net/http/FixedLengthOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v2, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    goto :goto_35

    .line 341
    :cond_45
    iget-boolean v2, p0, Llibcore/net/http/HttpEngine;->sendChunked:Z

    if-eqz v2, :cond_56

    .line 342
    invoke-direct {p0, v3}, Llibcore/net/http/HttpEngine;->writeRequestHeaders(I)V

    .line 343
    new-instance v2, Llibcore/net/http/ChunkedOutputStream;

    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    invoke-direct {v2, v3, v0}, Llibcore/net/http/ChunkedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v2, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    goto :goto_35

    .line 344
    :cond_56
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v2}, Llibcore/net/http/RequestHeaders;->getContentLength()I

    move-result v2

    if-eq v2, v3, :cond_75

    .line 345
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v2}, Llibcore/net/http/RequestHeaders;->getContentLength()I

    move-result v2

    invoke-direct {p0, v2}, Llibcore/net/http/HttpEngine;->writeRequestHeaders(I)V

    .line 346
    new-instance v2, Llibcore/net/http/RetryableOutputStream;

    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v3}, Llibcore/net/http/RequestHeaders;->getContentLength()I

    move-result v3

    invoke-direct {v2, v3}, Llibcore/net/http/RetryableOutputStream;-><init>(I)V

    iput-object v2, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    goto :goto_35

    .line 348
    :cond_75
    new-instance v2, Llibcore/net/http/RetryableOutputStream;

    invoke-direct {v2}, Llibcore/net/http/RetryableOutputStream;-><init>()V

    iput-object v2, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    goto :goto_35
.end method

.method protected final openSocketConnection()Llibcore/net/http/HttpConnection;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 308
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    iget-object v3, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v3}, Llibcore/net/http/HttpURLConnectionImpl;->getProxy()Ljava/net/Proxy;

    move-result-object v3

    invoke-virtual {p0}, Llibcore/net/http/HttpEngine;->requiresTunnel()Z

    move-result v4

    iget-object v5, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v5}, Llibcore/net/http/HttpURLConnectionImpl;->getConnectTimeout()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Llibcore/net/http/HttpConnection;->connect(Ljava/net/URI;Ljava/net/Proxy;ZI)Llibcore/net/http/HttpConnection;

    move-result-object v1

    .line 310
    .local v1, result:Llibcore/net/http/HttpConnection;
    invoke-virtual {v1}, Llibcore/net/http/HttpConnection;->getAddress()Llibcore/net/http/HttpConnection$Address;

    move-result-object v2

    invoke-virtual {v2}, Llibcore/net/http/HttpConnection$Address;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    .line 311
    .local v0, proxy:Ljava/net/Proxy;
    if-eqz v0, :cond_25

    .line 312
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v2, v0}, Llibcore/net/http/HttpURLConnectionImpl;->setProxy(Ljava/net/Proxy;)V

    .line 314
    :cond_25
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v2}, Llibcore/net/http/HttpURLConnectionImpl;->getReadTimeout()I

    move-result v2

    invoke-virtual {v1, v2}, Llibcore/net/http/HttpConnection;->setSoTimeout(I)V

    .line 315
    return-object v1
.end method

.method public final readResponse()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 755
    invoke-virtual {p0}, Llibcore/net/http/HttpEngine;->hasResponse()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 806
    :cond_6
    :goto_6
    return-void

    .line 759
    :cond_7
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseSource:Llibcore/net/http/ResponseSource;

    if-nez v1, :cond_13

    .line 760
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "readResponse() without sendRequest()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 763
    :cond_13
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseSource:Llibcore/net/http/ResponseSource;

    invoke-virtual {v1}, Llibcore/net/http/ResponseSource;->requiresConnection()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 767
    iget-wide v1, p0, Llibcore/net/http/HttpEngine;->sentRequestMillis:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_34

    .line 768
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    instance-of v1, v1, Llibcore/net/http/RetryableOutputStream;

    if-eqz v1, :cond_93

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    check-cast v1, Llibcore/net/http/RetryableOutputStream;

    invoke-virtual {v1}, Llibcore/net/http/RetryableOutputStream;->contentLength()I

    move-result v0

    .line 771
    .local v0, contentLength:I
    :goto_31
    invoke-direct {p0, v0}, Llibcore/net/http/HttpEngine;->writeRequestHeaders(I)V

    .line 774
    .end local v0           #contentLength:I
    :cond_34
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    if-eqz v1, :cond_4c

    .line 775
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    invoke-virtual {v1}, Llibcore/net/http/AbstractHttpOutputStream;->close()V

    .line 776
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    instance-of v1, v1, Llibcore/net/http/RetryableOutputStream;

    if-eqz v1, :cond_4c

    .line 777
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    check-cast v1, Llibcore/net/http/RetryableOutputStream;

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    invoke-virtual {v1, v2}, Llibcore/net/http/RetryableOutputStream;->writeToSocket(Ljava/io/OutputStream;)V

    .line 781
    :cond_4c
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 782
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->socketOut:Ljava/io/OutputStream;

    iput-object v1, p0, Llibcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    .line 784
    invoke-direct {p0}, Llibcore/net/http/HttpEngine;->readResponseHeaders()V

    .line 785
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    iget-wide v2, p0, Llibcore/net/http/HttpEngine;->sentRequestMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Llibcore/net/http/ResponseHeaders;->setLocalTimestamps(JJ)V

    .line 787
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseSource:Llibcore/net/http/ResponseSource;

    sget-object v2, Llibcore/net/http/ResponseSource;->CONDITIONAL_CACHE:Llibcore/net/http/ResponseSource;

    if-ne v1, v2, :cond_9a

    .line 788
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->cachedResponseHeaders:Llibcore/net/http/ResponseHeaders;

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-virtual {v1, v2}, Llibcore/net/http/ResponseHeaders;->validate(Llibcore/net/http/ResponseHeaders;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 789
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    instance-of v1, v1, Llibcore/net/http/HttpResponseCache;

    if-eqz v1, :cond_80

    .line 790
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    check-cast v1, Llibcore/net/http/HttpResponseCache;

    invoke-virtual {v1}, Llibcore/net/http/HttpResponseCache;->trackConditionalCacheHit()V

    .line 793
    :cond_80
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Llibcore/net/http/HttpEngine;->release(Z)V

    .line 794
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->cachedResponseHeaders:Llibcore/net/http/ResponseHeaders;

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-virtual {v1, v2}, Llibcore/net/http/ResponseHeaders;->combine(Llibcore/net/http/ResponseHeaders;)Llibcore/net/http/ResponseHeaders;

    move-result-object v1

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    invoke-direct {p0, v1, v2}, Llibcore/net/http/HttpEngine;->setResponse(Llibcore/net/http/ResponseHeaders;Ljava/io/InputStream;)V

    goto/16 :goto_6

    .line 768
    :cond_93
    const/4 v0, -0x1

    goto :goto_31

    .line 797
    :cond_95
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 801
    :cond_9a
    invoke-virtual {p0}, Llibcore/net/http/HttpEngine;->hasResponseBody()Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 802
    invoke-direct {p0}, Llibcore/net/http/HttpEngine;->maybeCache()V

    .line 805
    :cond_a3
    invoke-direct {p0}, Llibcore/net/http/HttpEngine;->getTransferStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Llibcore/net/http/HttpEngine;->initContentStream(Ljava/io/InputStream;)V

    goto/16 :goto_6
.end method

.method final readTrailers()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 581
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-virtual {v0}, Llibcore/net/http/ResponseHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v0

    invoke-direct {p0, v0}, Llibcore/net/http/HttpEngine;->readHeaders(Llibcore/net/http/RawHeaders;)V

    .line 582
    return-void
.end method

.method public final release(Z)V
    .registers 6
    .parameter "reusable"

    .prologue
    const/4 v3, 0x0

    .line 465
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    if-ne v1, v2, :cond_c

    .line 466
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 469
    :cond_c
    iget-boolean v1, p0, Llibcore/net/http/HttpEngine;->connectionReleased:Z

    if-nez v1, :cond_44

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    if-eqz v1, :cond_44

    .line 470
    const/4 v1, 0x1

    iput-boolean v1, p0, Llibcore/net/http/HttpEngine;->connectionReleased:Z

    .line 473
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    if-eqz v1, :cond_22

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    iget-boolean v1, v1, Llibcore/net/http/AbstractHttpOutputStream;->closed:Z

    if-nez v1, :cond_22

    .line 474
    const/4 p1, 0x0

    .line 478
    :cond_22
    invoke-direct {p0}, Llibcore/net/http/HttpEngine;->hasConnectionCloseHeader()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 479
    const/4 p1, 0x0

    .line 482
    :cond_29
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    instance-of v1, v1, Llibcore/net/http/UnknownLengthHttpInputStream;

    if-eqz v1, :cond_30

    .line 483
    const/4 p1, 0x0

    .line 486
    :cond_30
    if-eqz p1, :cond_3b

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    if-eqz v1, :cond_3b

    .line 489
    :try_start_36
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    invoke-static {v1}, Llibcore/io/Streams;->skipAll(Ljava/io/InputStream;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3b} :catch_45

    .line 495
    :cond_3b
    :goto_3b
    if-nez p1, :cond_48

    .line 496
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    invoke-virtual {v1}, Llibcore/net/http/HttpConnection;->closeSocketAndStreams()V

    .line 497
    iput-object v3, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    .line 503
    :cond_44
    :goto_44
    return-void

    .line 490
    :catch_45
    move-exception v0

    .line 491
    .local v0, e:Ljava/io/IOException;
    const/4 p1, 0x0

    goto :goto_3b

    .line 498
    .end local v0           #e:Ljava/io/IOException;
    :cond_48
    iget-boolean v1, p0, Llibcore/net/http/HttpEngine;->automaticallyReleaseConnectionToPool:Z

    if-eqz v1, :cond_44

    .line 499
    sget-object v1, Llibcore/net/http/HttpConnectionPool;->INSTANCE:Llibcore/net/http/HttpConnectionPool;

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    invoke-virtual {v1, v2}, Llibcore/net/http/HttpConnectionPool;->recycle(Llibcore/net/http/HttpConnection;)V

    .line 500
    iput-object v3, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    goto :goto_44
.end method

.method protected requiresTunnel()Z
    .registers 2

    .prologue
    .line 747
    const/4 v0, 0x0

    return v0
.end method

.method public final sendRequest()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseSource:Llibcore/net/http/ResponseSource;

    if-eqz v1, :cond_5

    .line 237
    :cond_4
    :goto_4
    return-void

    .line 210
    :cond_5
    invoke-direct {p0}, Llibcore/net/http/HttpEngine;->prepareRawRequestHeaders()V

    .line 211
    invoke-direct {p0}, Llibcore/net/http/HttpEngine;->initResponseSource()V

    .line 212
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    instance-of v1, v1, Llibcore/net/http/HttpResponseCache;

    if-eqz v1, :cond_1a

    .line 213
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    check-cast v1, Llibcore/net/http/HttpResponseCache;

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->responseSource:Llibcore/net/http/ResponseSource;

    invoke-virtual {v1, v2}, Llibcore/net/http/HttpResponseCache;->trackResponse(Llibcore/net/http/ResponseSource;)V

    .line 221
    :cond_1a
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v1}, Llibcore/net/http/RequestHeaders;->isOnlyIfCached()Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseSource:Llibcore/net/http/ResponseSource;

    invoke-virtual {v1}, Llibcore/net/http/ResponseSource;->requiresConnection()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 222
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseSource:Llibcore/net/http/ResponseSource;

    sget-object v2, Llibcore/net/http/ResponseSource;->CONDITIONAL_CACHE:Llibcore/net/http/ResponseSource;

    if-ne v1, v2, :cond_35

    .line 223
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 225
    :cond_35
    sget-object v1, Llibcore/net/http/ResponseSource;->CACHE:Llibcore/net/http/ResponseSource;

    iput-object v1, p0, Llibcore/net/http/HttpEngine;->responseSource:Llibcore/net/http/ResponseSource;

    .line 226
    sget-object v1, Llibcore/net/http/HttpEngine;->BAD_GATEWAY_RESPONSE:Ljava/net/CacheResponse;

    iput-object v1, p0, Llibcore/net/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    .line 227
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    invoke-virtual {v1}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Llibcore/net/http/RawHeaders;->fromMultimap(Ljava/util/Map;)Llibcore/net/http/RawHeaders;

    move-result-object v0

    .line 228
    .local v0, rawResponseHeaders:Llibcore/net/http/RawHeaders;
    new-instance v1, Llibcore/net/http/ResponseHeaders;

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-direct {v1, v2, v0}, Llibcore/net/http/ResponseHeaders;-><init>(Ljava/net/URI;Llibcore/net/http/RawHeaders;)V

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    invoke-virtual {v2}, Ljava/net/CacheResponse;->getBody()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Llibcore/net/http/HttpEngine;->setResponse(Llibcore/net/http/ResponseHeaders;Ljava/io/InputStream;)V

    .line 231
    .end local v0           #rawResponseHeaders:Llibcore/net/http/RawHeaders;
    :cond_57
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseSource:Llibcore/net/http/ResponseSource;

    invoke-virtual {v1}, Llibcore/net/http/ResponseSource;->requiresConnection()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 232
    invoke-direct {p0}, Llibcore/net/http/HttpEngine;->sendSocketRequest()V

    goto :goto_4

    .line 233
    :cond_63
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    if-eqz v1, :cond_4

    .line 234
    sget-object v1, Llibcore/net/http/HttpConnectionPool;->INSTANCE:Llibcore/net/http/HttpConnectionPool;

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    invoke-virtual {v1, v2}, Llibcore/net/http/HttpConnectionPool;->recycle(Llibcore/net/http/HttpConnection;)V

    .line 235
    const/4 v1, 0x0

    iput-object v1, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    goto :goto_4
.end method
