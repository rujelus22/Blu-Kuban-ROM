.class Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;
.super Llibcore/net/http/HttpEngine;
.source "HttpsURLConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/net/http/HttpsURLConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HttpsEngine"
.end annotation


# instance fields
.field private final enclosing:Llibcore/net/http/HttpsURLConnectionImpl;

.field private sslSocket:Ljavax/net/ssl/SSLSocket;


# direct methods
.method private constructor <init>(Llibcore/net/http/HttpURLConnectionImpl;Ljava/lang/String;Llibcore/net/http/RawHeaders;Llibcore/net/http/HttpConnection;Llibcore/net/http/RetryableOutputStream;Llibcore/net/http/HttpsURLConnectionImpl;)V
    .registers 8
    .parameter "policy"
    .parameter "method"
    .parameter "requestHeaders"
    .parameter "connection"
    .parameter "requestBody"
    .parameter "enclosing"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 420
    invoke-direct/range {p0 .. p5}, Llibcore/net/http/HttpEngine;-><init>(Llibcore/net/http/HttpURLConnectionImpl;Ljava/lang/String;Llibcore/net/http/RawHeaders;Llibcore/net/http/HttpConnection;Llibcore/net/http/RetryableOutputStream;)V

    .line 421
    if-eqz p4, :cond_e

    invoke-virtual {p4}, Llibcore/net/http/HttpConnection;->getSecureSocketIfConnected()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    :goto_9
    iput-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->sslSocket:Ljavax/net/ssl/SSLSocket;

    .line 422
    iput-object p6, p0, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->enclosing:Llibcore/net/http/HttpsURLConnectionImpl;

    .line 423
    return-void

    .line 421
    :cond_e
    const/4 v0, 0x0

    goto :goto_9
.end method

.method synthetic constructor <init>(Llibcore/net/http/HttpURLConnectionImpl;Ljava/lang/String;Llibcore/net/http/RawHeaders;Llibcore/net/http/HttpConnection;Llibcore/net/http/RetryableOutputStream;Llibcore/net/http/HttpsURLConnectionImpl;Llibcore/net/http/HttpsURLConnectionImpl$1;)V
    .registers 8
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 399
    invoke-direct/range {p0 .. p6}, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;-><init>(Llibcore/net/http/HttpURLConnectionImpl;Ljava/lang/String;Llibcore/net/http/RawHeaders;Llibcore/net/http/HttpConnection;Llibcore/net/http/RetryableOutputStream;Llibcore/net/http/HttpsURLConnectionImpl;)V

    return-void
.end method

.method static synthetic access$300(Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;)Ljavax/net/ssl/SSLSocket;
    .registers 2
    .parameter "x0"

    .prologue
    .line 399
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->sslSocket:Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method

.method private makeSslConnection(Z)Z
    .registers 5
    .parameter "tlsTolerant"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 459
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    if-nez v0, :cond_21

    .line 460
    invoke-virtual {p0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->openSocketConnection()Llibcore/net/http/HttpConnection;

    move-result-object v0

    iput-object v0, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    .line 461
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    invoke-virtual {v0}, Llibcore/net/http/HttpConnection;->getAddress()Llibcore/net/http/HttpConnection$Address;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/net/http/HttpConnection$Address;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 462
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    invoke-virtual {p0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->getRequestHeaders()Llibcore/net/http/RequestHeaders;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->makeTunnel(Llibcore/net/http/HttpURLConnectionImpl;Llibcore/net/http/HttpConnection;Llibcore/net/http/RequestHeaders;)V

    .line 470
    :cond_21
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    invoke-virtual {v0}, Llibcore/net/http/HttpConnection;->getSecureSocketIfConnected()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    iput-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->sslSocket:Ljavax/net/ssl/SSLSocket;

    .line 473
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->sslSocket:Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_2f

    .line 474
    const/4 v0, 0x1

    .line 478
    :goto_2e
    return v0

    .line 477
    :cond_2f
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    iget-object v1, p0, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->enclosing:Llibcore/net/http/HttpsURLConnectionImpl;

    invoke-virtual {v1}, Llibcore/net/http/HttpsURLConnectionImpl;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Llibcore/net/http/HttpConnection;->setupSecureSocket(Ljavax/net/ssl/SSLSocketFactory;Z)V

    .line 478
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method private makeTunnel(Llibcore/net/http/HttpURLConnectionImpl;Llibcore/net/http/HttpConnection;Llibcore/net/http/RequestHeaders;)V
    .registers 12
    .parameter "policy"
    .parameter "connection"
    .parameter "requestHeaders"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 488
    invoke-virtual {p3}, Llibcore/net/http/RequestHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v2

    .line 490
    .local v2, rawRequestHeaders:Llibcore/net/http/RawHeaders;
    :goto_4
    new-instance v0, Llibcore/net/http/HttpsURLConnectionImpl$ProxyConnectEngine;

    invoke-direct {v0, p1, v2, p2}, Llibcore/net/http/HttpsURLConnectionImpl$ProxyConnectEngine;-><init>(Llibcore/net/http/HttpURLConnectionImpl;Llibcore/net/http/RawHeaders;Llibcore/net/http/HttpConnection;)V

    .line 491
    .local v0, connect:Llibcore/net/http/HttpEngine;
    invoke-virtual {v0}, Llibcore/net/http/HttpEngine;->sendRequest()V

    .line 492
    invoke-virtual {v0}, Llibcore/net/http/HttpEngine;->readResponse()V

    .line 494
    invoke-virtual {v0}, Llibcore/net/http/HttpEngine;->getResponseCode()I

    move-result v4

    .line 495
    .local v4, responseCode:I
    invoke-virtual {v0}, Llibcore/net/http/HttpEngine;->getResponseCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_50

    .line 508
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected response code for CONNECT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 499
    :sswitch_33
    new-instance v3, Llibcore/net/http/RawHeaders;

    invoke-direct {v3, v2}, Llibcore/net/http/RawHeaders;-><init>(Llibcore/net/http/RawHeaders;)V

    .line 500
    .end local v2           #rawRequestHeaders:Llibcore/net/http/RawHeaders;
    .local v3, rawRequestHeaders:Llibcore/net/http/RawHeaders;
    const/16 v5, 0x197

    invoke-virtual {v0}, Llibcore/net/http/HttpEngine;->getResponseHeaders()Llibcore/net/http/ResponseHeaders;

    move-result-object v6

    invoke-virtual {p1, v5, v6, v3}, Llibcore/net/http/HttpURLConnectionImpl;->processAuthHeader(ILlibcore/net/http/ResponseHeaders;Llibcore/net/http/RawHeaders;)Z

    move-result v1

    .line 502
    .local v1, credentialsFound:Z
    if-eqz v1, :cond_46

    move-object v2, v3

    .line 503
    .end local v3           #rawRequestHeaders:Llibcore/net/http/RawHeaders;
    .restart local v2       #rawRequestHeaders:Llibcore/net/http/RawHeaders;
    goto :goto_4

    .line 505
    .end local v2           #rawRequestHeaders:Llibcore/net/http/RawHeaders;
    .restart local v3       #rawRequestHeaders:Llibcore/net/http/RawHeaders;
    :cond_46
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Failed to authenticate with proxy"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 497
    .end local v1           #credentialsFound:Z
    .end local v3           #rawRequestHeaders:Llibcore/net/http/RawHeaders;
    .restart local v2       #rawRequestHeaders:Llibcore/net/http/RawHeaders;
    :sswitch_4e
    return-void

    .line 495
    nop

    :sswitch_data_50
    .sparse-switch
        0xc8 -> :sswitch_4e
        0x197 -> :sswitch_33
    .end sparse-switch
.end method


# virtual methods
.method protected acceptCacheResponseType(Ljava/net/CacheResponse;)Z
    .registers 3
    .parameter "cacheResponse"

    .prologue
    .line 514
    instance-of v0, p1, Ljava/net/SecureCacheResponse;

    return v0
.end method

.method protected connect()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 432
    const/4 v2, 0x1

    :try_start_2
    invoke-direct {p0, v2}, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->makeSslConnection(Z)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_17

    move-result v0

    .line 444
    .local v0, connectionReused:Z
    :goto_6
    if-nez v0, :cond_16

    .line 445
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    iget-object v3, p0, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->enclosing:Llibcore/net/http/HttpsURLConnectionImpl;

    invoke-virtual {v3}, Llibcore/net/http/HttpsURLConnectionImpl;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Llibcore/net/http/HttpConnection;->verifySecureSocketHostname(Ljavax/net/ssl/HostnameVerifier;)Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    iput-object v2, p0, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->sslSocket:Ljavax/net/ssl/SSLSocket;

    .line 447
    :cond_16
    return-void

    .line 433
    .end local v0           #connectionReused:Z
    :catch_17
    move-exception v1

    .line 436
    .local v1, e:Ljava/io/IOException;
    instance-of v2, v1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_25

    invoke-virtual {v1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/cert/CertificateException;

    if-eqz v2, :cond_25

    .line 438
    throw v1

    .line 440
    :cond_25
    invoke-virtual {p0, v3}, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->release(Z)V

    .line 441
    invoke-direct {p0, v3}, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->makeSslConnection(Z)Z

    move-result v0

    .restart local v0       #connectionReused:Z
    goto :goto_6
.end method

.method protected getHttpConnectionToCache()Ljava/net/HttpURLConnection;
    .registers 2

    .prologue
    .line 523
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->enclosing:Llibcore/net/http/HttpsURLConnectionImpl;

    return-object v0
.end method

.method protected includeAuthorityInRequestLine()Z
    .registers 2

    .prologue
    .line 519
    const/4 v0, 0x0

    return v0
.end method
