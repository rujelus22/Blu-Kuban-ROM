.class Llibcore/net/http/HttpURLConnectionImpl;
.super Ljava/net/HttpURLConnection;
.source "HttpURLConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/net/http/HttpURLConnectionImpl$Retry;
    }
.end annotation


# instance fields
.field private final defaultPort:I

.field protected httpEngine:Llibcore/net/http/HttpEngine;

.field protected httpEngineFailure:Ljava/io/IOException;

.field private proxy:Ljava/net/Proxy;

.field private final rawRequestHeaders:Llibcore/net/http/RawHeaders;

.field private redirectionCount:I


# direct methods
.method protected constructor <init>(Ljava/net/URL;I)V
    .registers 4
    .parameter "url"
    .parameter "port"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 60
    new-instance v0, Llibcore/net/http/RawHeaders;

    invoke-direct {v0}, Llibcore/net/http/RawHeaders;-><init>()V

    iput-object v0, p0, Llibcore/net/http/HttpURLConnectionImpl;->rawRequestHeaders:Llibcore/net/http/RawHeaders;

    .line 69
    iput p2, p0, Llibcore/net/http/HttpURLConnectionImpl;->defaultPort:I

    .line 70
    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;ILjava/net/Proxy;)V
    .registers 4
    .parameter "url"
    .parameter "port"
    .parameter "proxy"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Llibcore/net/http/HttpURLConnectionImpl;-><init>(Ljava/net/URL;I)V

    .line 74
    iput-object p3, p0, Llibcore/net/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    .line 75
    return-void
.end method

.method private getAuthorizationCredentials(Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .parameter "challenge"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v11, -0x1

    .line 416
    const-string v10, " "

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 417
    .local v3, idx:I
    if-ne v3, v11, :cond_b

    .line 439
    :cond_a
    :goto_a
    return-object v9

    .line 420
    :cond_b
    const/4 v10, 0x0

    invoke-virtual {p1, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 421
    .local v7, scheme:Ljava/lang/String;
    const-string v10, "realm=\""

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v6, v10, 0x7

    .line 422
    .local v6, realm:I
    const/4 v5, 0x0

    .line 423
    .local v5, prompt:Ljava/lang/String;
    if-eq v6, v11, :cond_27

    .line 424
    const/16 v10, 0x22

    invoke-virtual {p1, v10, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 425
    .local v2, end:I
    if-eq v2, v11, :cond_27

    .line 426
    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 430
    .end local v2           #end:I
    :cond_27
    invoke-direct {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getConnectToInetAddress()Ljava/net/InetAddress;

    move-result-object v10

    invoke-direct {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getConnectToPort()I

    move-result v11

    iget-object v12, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v12}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12, v5, v7}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;

    move-result-object v4

    .line 432
    .local v4, pa:Ljava/net/PasswordAuthentication;
    if-eqz v4, :cond_a

    .line 436
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 437
    .local v8, usernameAndPassword:Ljava/lang/String;
    sget-object v9, Ljava/nio/charset/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 438
    .local v0, bytes:[B
    invoke-static {v0}, Llibcore/io/Base64;->encode([B)Ljava/lang/String;

    move-result-object v1

    .line 439
    .local v1, encoded:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_a
.end method

.method private getConnectToHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 206
    invoke-virtual {p0}, Llibcore/net/http/HttpURLConnectionImpl;->usingProxy()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Llibcore/net/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    invoke-virtual {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method private getConnectToInetAddress()Ljava/net/InetAddress;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    invoke-virtual {p0}, Llibcore/net/http/HttpURLConnectionImpl;->usingProxy()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Llibcore/net/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    invoke-virtual {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_12
.end method

.method private getConnectToPort()I
    .registers 3

    .prologue
    .line 212
    invoke-virtual {p0}, Llibcore/net/http/HttpURLConnectionImpl;->usingProxy()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Llibcore/net/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    .line 215
    .local v0, hostPort:I
    :goto_12
    if-gez v0, :cond_18

    invoke-virtual {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getDefaultPort()I

    move-result v0

    .end local v0           #hostPort:I
    :cond_18
    return v0

    .line 212
    :cond_19
    invoke-virtual {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v0

    goto :goto_12
.end method

.method private getResponse()Llibcore/net/http/HttpEngine;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    invoke-direct {p0}, Llibcore/net/http/HttpURLConnectionImpl;->initHttpEngine()V

    .line 267
    iget-object v5, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    invoke-virtual {v5}, Llibcore/net/http/HttpEngine;->hasResponse()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 268
    iget-object v5, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    .line 314
    :goto_d
    return-object v5

    .line 305
    .local v1, requestBody:Ljava/io/OutputStream;
    .local v2, responseCode:I
    .local v3, retry:Llibcore/net/http/HttpURLConnectionImpl$Retry;
    .local v4, retryMethod:Ljava/lang/String;
    :cond_e
    :try_start_e
    sget-object v5, Llibcore/net/http/HttpURLConnectionImpl$Retry;->DIFFERENT_CONNECTION:Llibcore/net/http/HttpURLConnectionImpl$Retry;

    if-ne v3, v5, :cond_17

    .line 306
    iget-object v5, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    invoke-virtual {v5}, Llibcore/net/http/HttpEngine;->automaticallyReleaseConnectionToPool()V

    .line 309
    :cond_17
    iget-object v5, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Llibcore/net/http/HttpEngine;->release(Z)V

    .line 311
    iget-object v5, p0, Llibcore/net/http/HttpURLConnectionImpl;->rawRequestHeaders:Llibcore/net/http/RawHeaders;

    iget-object v6, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    invoke-virtual {v6}, Llibcore/net/http/HttpEngine;->getConnection()Llibcore/net/http/HttpConnection;

    move-result-object v6

    check-cast v1, Llibcore/net/http/RetryableOutputStream;

    .end local v1           #requestBody:Ljava/io/OutputStream;
    invoke-virtual {p0, v4, v5, v6, v1}, Llibcore/net/http/HttpURLConnectionImpl;->newHttpEngine(Ljava/lang/String;Llibcore/net/http/RawHeaders;Llibcore/net/http/HttpConnection;Llibcore/net/http/RetryableOutputStream;)Llibcore/net/http/HttpEngine;

    move-result-object v5

    iput-object v5, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    .line 273
    .end local v2           #responseCode:I
    .end local v3           #retry:Llibcore/net/http/HttpURLConnectionImpl$Retry;
    .end local v4           #retryMethod:Ljava/lang/String;
    :cond_2d
    iget-object v5, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    invoke-virtual {v5}, Llibcore/net/http/HttpEngine;->sendRequest()V

    .line 274
    iget-object v5, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    invoke-virtual {v5}, Llibcore/net/http/HttpEngine;->readResponse()V

    .line 276
    invoke-direct {p0}, Llibcore/net/http/HttpURLConnectionImpl;->processResponseHeaders()Llibcore/net/http/HttpURLConnectionImpl$Retry;

    move-result-object v3

    .line 277
    .restart local v3       #retry:Llibcore/net/http/HttpURLConnectionImpl$Retry;
    sget-object v5, Llibcore/net/http/HttpURLConnectionImpl$Retry;->NONE:Llibcore/net/http/HttpURLConnectionImpl$Retry;

    if-ne v3, v5, :cond_47

    .line 278
    iget-object v5, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    invoke-virtual {v5}, Llibcore/net/http/HttpEngine;->automaticallyReleaseConnectionToPool()V

    .line 314
    iget-object v5, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    goto :goto_d

    .line 285
    :cond_47
    iget-object v4, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    .line 286
    .restart local v4       #retryMethod:Ljava/lang/String;
    iget-object v5, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    invoke-virtual {v5}, Llibcore/net/http/HttpEngine;->getRequestBody()Ljava/io/OutputStream;

    move-result-object v1

    .line 293
    .restart local v1       #requestBody:Ljava/io/OutputStream;
    invoke-virtual {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v2

    .line 294
    .restart local v2       #responseCode:I
    const/16 v5, 0x12c

    if-eq v2, v5, :cond_63

    const/16 v5, 0x12d

    if-eq v2, v5, :cond_63

    const/16 v5, 0x12e

    if-eq v2, v5, :cond_63

    const/16 v5, 0x12f

    if-ne v2, v5, :cond_66

    .line 296
    :cond_63
    const-string v4, "GET"

    .line 297
    const/4 v1, 0x0

    .line 300
    :cond_66
    if-eqz v1, :cond_e

    instance-of v5, v1, Llibcore/net/http/RetryableOutputStream;

    if-nez v5, :cond_e

    .line 301
    new-instance v5, Ljava/net/HttpRetryException;

    const-string v6, "Cannot retry streamed HTTP body"

    iget-object v7, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    invoke-virtual {v7}, Llibcore/net/http/HttpEngine;->getResponseCode()I

    move-result v7

    invoke-direct {v5, v6, v7}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_7a} :catch_7a

    .line 315
    .end local v1           #requestBody:Ljava/io/OutputStream;
    .end local v2           #responseCode:I
    .end local v3           #retry:Llibcore/net/http/HttpURLConnectionImpl$Retry;
    .end local v4           #retryMethod:Ljava/lang/String;
    :catch_7a
    move-exception v0

    .line 316
    .local v0, e:Ljava/io/IOException;
    iput-object v0, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    .line 317
    throw v0
.end method

.method private initHttpEngine()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    iget-object v1, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    if-eqz v1, :cond_7

    .line 227
    iget-object v1, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    throw v1

    .line 228
    :cond_7
    iget-object v1, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    if-eqz v1, :cond_c

    .line 248
    :goto_b
    return-void

    .line 232
    :cond_c
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/URLConnection;->connected:Z

    .line 234
    :try_start_f
    iget-boolean v1, p0, Ljava/net/URLConnection;->doOutput:Z

    if-eqz v1, :cond_1d

    .line 235
    iget-object v1, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    const-string v2, "GET"

    if-ne v1, v2, :cond_2e

    .line 237
    const-string v1, "POST"

    iput-object v1, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    .line 243
    :cond_1d
    iget-object v1, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    iget-object v2, p0, Llibcore/net/http/HttpURLConnectionImpl;->rawRequestHeaders:Llibcore/net/http/RawHeaders;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Llibcore/net/http/HttpURLConnectionImpl;->newHttpEngine(Ljava/lang/String;Llibcore/net/http/RawHeaders;Llibcore/net/http/HttpConnection;Llibcore/net/http/RetryableOutputStream;)Llibcore/net/http/HttpEngine;

    move-result-object v1

    iput-object v1, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_29} :catch_2a

    goto :goto_b

    .line 244
    :catch_2a
    move-exception v0

    .line 245
    .local v0, e:Ljava/io/IOException;
    iput-object v0, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    .line 246
    throw v0

    .line 238
    .end local v0           #e:Ljava/io/IOException;
    :cond_2e
    :try_start_2e
    iget-object v1, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    const-string v2, "POST"

    if-eq v1, v2, :cond_1d

    iget-object v1, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    const-string v2, "PUT"

    if-eq v1, v2, :cond_1d

    .line 240
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not support writing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_55} :catch_2a
.end method

.method private processResponseHeaders()Llibcore/net/http/HttpURLConnectionImpl$Retry;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    invoke-virtual {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_96

    .line 376
    sget-object v3, Llibcore/net/http/HttpURLConnectionImpl$Retry;->NONE:Llibcore/net/http/HttpURLConnectionImpl$Retry;

    :goto_9
    return-object v3

    .line 339
    :sswitch_a
    invoke-virtual {p0}, Llibcore/net/http/HttpURLConnectionImpl;->usingProxy()Z

    move-result v3

    if-nez v3, :cond_18

    .line 340
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 345
    :cond_18
    :sswitch_18
    invoke-virtual {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v3

    iget-object v4, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    invoke-virtual {v4}, Llibcore/net/http/HttpEngine;->getResponseHeaders()Llibcore/net/http/ResponseHeaders;

    move-result-object v4

    iget-object v5, p0, Llibcore/net/http/HttpURLConnectionImpl;->rawRequestHeaders:Llibcore/net/http/RawHeaders;

    invoke-virtual {p0, v3, v4, v5}, Llibcore/net/http/HttpURLConnectionImpl;->processAuthHeader(ILlibcore/net/http/ResponseHeaders;Llibcore/net/http/RawHeaders;)Z

    move-result v0

    .line 347
    .local v0, credentialsFound:Z
    if-eqz v0, :cond_2d

    sget-object v3, Llibcore/net/http/HttpURLConnectionImpl$Retry;->SAME_CONNECTION:Llibcore/net/http/HttpURLConnectionImpl$Retry;

    goto :goto_9

    :cond_2d
    sget-object v3, Llibcore/net/http/HttpURLConnectionImpl$Retry;->NONE:Llibcore/net/http/HttpURLConnectionImpl$Retry;

    goto :goto_9

    .line 353
    .end local v0           #credentialsFound:Z
    :sswitch_30
    invoke-virtual {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getInstanceFollowRedirects()Z

    move-result v3

    if-nez v3, :cond_39

    .line 354
    sget-object v3, Llibcore/net/http/HttpURLConnectionImpl$Retry;->NONE:Llibcore/net/http/HttpURLConnectionImpl$Retry;

    goto :goto_9

    .line 356
    :cond_39
    iget v3, p0, Llibcore/net/http/HttpURLConnectionImpl;->redirectionCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Llibcore/net/http/HttpURLConnectionImpl;->redirectionCount:I

    const/4 v4, 0x5

    if-le v3, v4, :cond_4a

    .line 357
    new-instance v3, Ljava/net/ProtocolException;

    const-string v4, "Too many redirects"

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 359
    :cond_4a
    const-string v3, "Location"

    invoke-virtual {p0, v3}, Llibcore/net/http/HttpURLConnectionImpl;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, location:Ljava/lang/String;
    if-nez v1, :cond_55

    .line 361
    sget-object v3, Llibcore/net/http/HttpURLConnectionImpl$Retry;->NONE:Llibcore/net/http/HttpURLConnectionImpl$Retry;

    goto :goto_9

    .line 363
    :cond_55
    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 364
    .local v2, previousUrl:Ljava/net/URL;
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 365
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_71

    .line 366
    sget-object v3, Llibcore/net/http/HttpURLConnectionImpl$Retry;->NONE:Llibcore/net/http/HttpURLConnectionImpl$Retry;

    goto :goto_9

    .line 368
    :cond_71
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_91

    invoke-virtual {v2}, Ljava/net/URL;->getEffectivePort()I

    move-result v3

    iget-object v4, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getEffectivePort()I

    move-result v4

    if-ne v3, v4, :cond_91

    .line 370
    sget-object v3, Llibcore/net/http/HttpURLConnectionImpl$Retry;->SAME_CONNECTION:Llibcore/net/http/HttpURLConnectionImpl$Retry;

    goto/16 :goto_9

    .line 372
    :cond_91
    sget-object v3, Llibcore/net/http/HttpURLConnectionImpl$Retry;->DIFFERENT_CONNECTION:Llibcore/net/http/HttpURLConnectionImpl$Retry;

    goto/16 :goto_9

    .line 337
    nop

    :sswitch_data_96
    .sparse-switch
        0x12c -> :sswitch_30
        0x12d -> :sswitch_30
        0x12e -> :sswitch_30
        0x12f -> :sswitch_30
        0x191 -> :sswitch_18
        0x197 -> :sswitch_a
    .end sparse-switch
.end method


# virtual methods
.method public final addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "field"
    .parameter "value"

    .prologue
    .line 493
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_c

    .line 494
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add request property after connection is made"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_c
    if-nez p1, :cond_16

    .line 497
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_16
    iget-object v0, p0, Llibcore/net/http/HttpURLConnectionImpl;->rawRequestHeaders:Llibcore/net/http/RawHeaders;

    invoke-virtual {v0, p1, p2}, Llibcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    return-void
.end method

.method public final connect()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Llibcore/net/http/HttpURLConnectionImpl;->initHttpEngine()V

    .line 80
    :try_start_3
    iget-object v1, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    invoke-virtual {v1}, Llibcore/net/http/HttpEngine;->sendRequest()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_9

    .line 85
    return-void

    .line 81
    :catch_9
    move-exception v0

    .line 82
    .local v0, e:Ljava/io/IOException;
    iput-object v0, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    .line 83
    throw v0
.end method

.method public final disconnect()V
    .registers 3

    .prologue
    .line 89
    iget-object v0, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    if-eqz v0, :cond_a

    .line 90
    iget-object v0, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llibcore/net/http/HttpEngine;->release(Z)V

    .line 92
    :cond_a
    return-void
.end method

.method final getChunkLength()I
    .registers 2

    .prologue
    .line 459
    iget v0, p0, Ljava/net/HttpURLConnection;->chunkLength:I

    return v0
.end method

.method final getDefaultPort()I
    .registers 2

    .prologue
    .line 449
    iget v0, p0, Llibcore/net/http/HttpURLConnectionImpl;->defaultPort:I

    return v0
.end method

.method public final getErrorStream()Ljava/io/InputStream;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 100
    :try_start_1
    invoke-direct {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getResponse()Llibcore/net/http/HttpEngine;

    move-result-object v1

    .line 101
    .local v1, response:Llibcore/net/http/HttpEngine;
    invoke-virtual {v1}, Llibcore/net/http/HttpEngine;->hasResponseBody()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {v1}, Llibcore/net/http/HttpEngine;->getResponseCode()I

    move-result v3

    const/16 v4, 0x190

    if-lt v3, v4, :cond_17

    .line 103
    invoke-virtual {v1}, Llibcore/net/http/HttpEngine;->getResponseBody()Ljava/io/InputStream;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_16} :catch_18

    move-result-object v2

    .line 107
    .end local v1           #response:Llibcore/net/http/HttpEngine;
    :cond_17
    :goto_17
    return-object v2

    .line 106
    :catch_18
    move-exception v0

    .line 107
    .local v0, e:Ljava/io/IOException;
    goto :goto_17
.end method

.method final getFixedContentLength()I
    .registers 2

    .prologue
    .line 454
    iget v0, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    return v0
.end method

.method public final getHeaderField(I)Ljava/lang/String;
    .registers 4
    .parameter "position"

    .prologue
    .line 117
    :try_start_0
    invoke-direct {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getResponse()Llibcore/net/http/HttpEngine;

    move-result-object v1

    invoke-virtual {v1}, Llibcore/net/http/HttpEngine;->getResponseHeaders()Llibcore/net/http/ResponseHeaders;

    move-result-object v1

    invoke-virtual {v1}, Llibcore/net/http/ResponseHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v1

    invoke-virtual {v1, p1}, Llibcore/net/http/RawHeaders;->getValue(I)Ljava/lang/String;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v1

    .line 119
    :goto_10
    return-object v1

    .line 118
    :catch_11
    move-exception v0

    .line 119
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public final getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "fieldName"

    .prologue
    .line 130
    :try_start_0
    invoke-direct {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getResponse()Llibcore/net/http/HttpEngine;

    move-result-object v2

    invoke-virtual {v2}, Llibcore/net/http/HttpEngine;->getResponseHeaders()Llibcore/net/http/ResponseHeaders;

    move-result-object v2

    invoke-virtual {v2}, Llibcore/net/http/ResponseHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v1

    .line 131
    .local v1, rawHeaders:Llibcore/net/http/RawHeaders;
    if-nez p1, :cond_13

    invoke-virtual {v1}, Llibcore/net/http/RawHeaders;->getStatusLine()Ljava/lang/String;

    move-result-object v2

    .line 135
    .end local v1           #rawHeaders:Llibcore/net/http/RawHeaders;
    :goto_12
    return-object v2

    .line 131
    .restart local v1       #rawHeaders:Llibcore/net/http/RawHeaders;
    :cond_13
    invoke-virtual {v1, p1}, Llibcore/net/http/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_18

    move-result-object v2

    goto :goto_12

    .line 134
    .end local v1           #rawHeaders:Llibcore/net/http/RawHeaders;
    :catch_18
    move-exception v0

    .line 135
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_12
.end method

.method public final getHeaderFieldKey(I)Ljava/lang/String;
    .registers 4
    .parameter "position"

    .prologue
    .line 141
    :try_start_0
    invoke-direct {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getResponse()Llibcore/net/http/HttpEngine;

    move-result-object v1

    invoke-virtual {v1}, Llibcore/net/http/HttpEngine;->getResponseHeaders()Llibcore/net/http/ResponseHeaders;

    move-result-object v1

    invoke-virtual {v1}, Llibcore/net/http/ResponseHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v1

    invoke-virtual {v1, p1}, Llibcore/net/http/RawHeaders;->getFieldName(I)Ljava/lang/String;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v1

    .line 143
    :goto_10
    return-object v1

    .line 142
    :catch_11
    move-exception v0

    .line 143
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public final getHeaderFields()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 149
    :try_start_0
    invoke-direct {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getResponse()Llibcore/net/http/HttpEngine;

    move-result-object v1

    invoke-virtual {v1}, Llibcore/net/http/HttpEngine;->getResponseHeaders()Llibcore/net/http/ResponseHeaders;

    move-result-object v1

    invoke-virtual {v1}, Llibcore/net/http/ResponseHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v1

    invoke-virtual {v1}, Llibcore/net/http/RawHeaders;->toMultimap()Ljava/util/Map;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v1

    .line 151
    :goto_10
    return-object v1

    .line 150
    :catch_11
    move-exception v0

    .line 151
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_10
.end method

.method getHttpEngine()Llibcore/net/http/HttpEngine;
    .registers 2

    .prologue
    .line 322
    iget-object v0, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    return-object v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    iget-boolean v2, p0, Ljava/net/URLConnection;->doInput:Z

    if-nez v2, :cond_c

    .line 165
    new-instance v2, Ljava/net/ProtocolException;

    const-string v3, "This protocol does not support input"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 168
    :cond_c
    invoke-direct {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getResponse()Llibcore/net/http/HttpEngine;

    move-result-object v0

    .line 176
    .local v0, response:Llibcore/net/http/HttpEngine;
    invoke-virtual {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v2

    const/16 v3, 0x190

    if-lt v2, v3, :cond_24

    .line 177
    new-instance v2, Ljava/io/FileNotFoundException;

    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 180
    :cond_24
    invoke-virtual {v0}, Llibcore/net/http/HttpEngine;->getResponseBody()Ljava/io/InputStream;

    move-result-object v1

    .line 181
    .local v1, result:Ljava/io/InputStream;
    if-nez v1, :cond_47

    .line 182
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No response body exists; responseCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 184
    :cond_47
    return-object v1
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p0}, Llibcore/net/http/HttpURLConnectionImpl;->connect()V

    .line 190
    iget-object v1, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    invoke-virtual {v1}, Llibcore/net/http/HttpEngine;->getRequestBody()Ljava/io/OutputStream;

    move-result-object v0

    .line 191
    .local v0, result:Ljava/io/OutputStream;
    if-nez v0, :cond_26

    .line 192
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "method does not support a request body: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    :cond_26
    iget-object v1, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    invoke-virtual {v1}, Llibcore/net/http/HttpEngine;->hasResponse()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 194
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "cannot write request body after response has been read"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    :cond_36
    return-object v0
.end method

.method public final getPermission()Ljava/security/Permission;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getConnectToHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getConnectToPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, connectToAddress:Ljava/lang/String;
    new-instance v1, Ljava/net/SocketPermission;

    const-string v2, "connect, resolve"

    invoke-direct {v1, v0, v2}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method final getProxy()Ljava/net/Proxy;
    .registers 2

    .prologue
    .line 463
    iget-object v0, p0, Llibcore/net/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public final getRequestProperties()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 156
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_c

    .line 157
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access request header fields after connection is set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_c
    iget-object v0, p0, Llibcore/net/http/HttpURLConnectionImpl;->rawRequestHeaders:Llibcore/net/http/RawHeaders;

    invoke-virtual {v0}, Llibcore/net/http/RawHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "field"

    .prologue
    .line 219
    if-nez p1, :cond_4

    .line 220
    const/4 v0, 0x0

    .line 222
    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Llibcore/net/http/HttpURLConnectionImpl;->rawRequestHeaders:Llibcore/net/http/RawHeaders;

    invoke-virtual {v0, p1}, Llibcore/net/http/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public final getResponseCode()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 479
    invoke-direct {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getResponse()Llibcore/net/http/HttpEngine;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/net/http/HttpEngine;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 475
    invoke-direct {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getResponse()Llibcore/net/http/HttpEngine;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/net/http/HttpEngine;->getResponseHeaders()Llibcore/net/http/ResponseHeaders;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/net/http/ResponseHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/net/http/RawHeaders;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected newHttpEngine(Ljava/lang/String;Llibcore/net/http/RawHeaders;Llibcore/net/http/HttpConnection;Llibcore/net/http/RetryableOutputStream;)Llibcore/net/http/HttpEngine;
    .registers 11
    .parameter "method"
    .parameter "requestHeaders"
    .parameter "connection"
    .parameter "requestBody"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    new-instance v0, Llibcore/net/http/HttpEngine;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Llibcore/net/http/HttpEngine;-><init>(Llibcore/net/http/HttpURLConnectionImpl;Ljava/lang/String;Llibcore/net/http/RawHeaders;Llibcore/net/http/HttpConnection;Llibcore/net/http/RetryableOutputStream;)V

    return-object v0
.end method

.method final processAuthHeader(ILlibcore/net/http/ResponseHeaders;Llibcore/net/http/RawHeaders;)Z
    .registers 9
    .parameter "responseCode"
    .parameter "response"
    .parameter "successorRequestHeaders"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x197

    .line 388
    if-eq p1, v4, :cond_e

    const/16 v3, 0x191

    if-eq p1, v3, :cond_e

    .line 389
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 393
    :cond_e
    if-ne p1, v4, :cond_1e

    invoke-virtual {p2}, Llibcore/net/http/ResponseHeaders;->getProxyAuthenticate()Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, challenge:Ljava/lang/String;
    :goto_14
    if-nez v0, :cond_23

    .line 397
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Received authentication challenge is null"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 393
    .end local v0           #challenge:Ljava/lang/String;
    :cond_1e
    invoke-virtual {p2}, Llibcore/net/http/ResponseHeaders;->getWwwAuthenticate()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 399
    .restart local v0       #challenge:Ljava/lang/String;
    :cond_23
    invoke-direct {p0, v0}, Llibcore/net/http/HttpURLConnectionImpl;->getAuthorizationCredentials(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, credentials:Ljava/lang/String;
    if-nez v1, :cond_2b

    .line 401
    const/4 v3, 0x0

    .line 409
    :goto_2a
    return v3

    .line 405
    :cond_2b
    if-ne p1, v4, :cond_34

    const-string v2, "Proxy-Authorization"

    .line 408
    .local v2, fieldName:Ljava/lang/String;
    :goto_2f
    invoke-virtual {p3, v2, v1}, Llibcore/net/http/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const/4 v3, 0x1

    goto :goto_2a

    .line 405
    .end local v2           #fieldName:Ljava/lang/String;
    :cond_34
    const-string v2, "Authorization"

    goto :goto_2f
.end method

.method final setProxy(Ljava/net/Proxy;)V
    .registers 2
    .parameter "proxy"

    .prologue
    .line 467
    iput-object p1, p0, Llibcore/net/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    .line 468
    return-void
.end method

.method public final setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "field"
    .parameter "newValue"

    .prologue
    .line 483
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_c

    .line 484
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set request property after connection is made"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_c
    if-nez p1, :cond_16

    .line 487
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_16
    iget-object v0, p0, Llibcore/net/http/HttpURLConnectionImpl;->rawRequestHeaders:Llibcore/net/http/RawHeaders;

    invoke-virtual {v0, p1, p2}, Llibcore/net/http/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    return-void
.end method

.method public final usingProxy()Z
    .registers 3

    .prologue
    .line 471
    iget-object v0, p0, Llibcore/net/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_10

    iget-object v0, p0, Llibcore/net/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
