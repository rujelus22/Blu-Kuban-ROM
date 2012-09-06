.class public Lcom/google/android/apps/unveil/network/HttpUrlConnectionConnector;
.super Lcom/google/android/apps/unveil/network/AbstractConnector;
.source "HttpUrlConnectionConnector.java"


# static fields
.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 96
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/network/HttpUrlConnectionConnector;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(Landroid/net/ConnectivityManager;Lcom/google/android/apps/unveil/env/Provider;Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;)V
    .registers 5
    .parameter "connectivityManager"
    .parameter
    .parameter "requestFactory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/ConnectivityManager;",
            "Lcom/google/android/apps/unveil/env/Provider",
            "<",
            "Ljava/net/URL;",
            ">;",
            "Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 100
    .local p2, frontendUrlProvider:Lcom/google/android/apps/unveil/env/Provider;,"Lcom/google/android/apps/unveil/env/Provider<Ljava/net/URL;>;"
    invoke-static {p1}, Lcom/google/android/apps/unveil/network/HttpUrlConnectionConnector;->connectionManagerConnectivityProvider(Landroid/net/ConnectivityManager;)Lcom/google/android/apps/unveil/env/Provider;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/apps/unveil/network/AbstractConnector;-><init>(Lcom/google/android/apps/unveil/env/Provider;Lcom/google/android/apps/unveil/env/Provider;Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;)V

    .line 103
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    if-nez v0, :cond_15

    .line 104
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 106
    :cond_15
    return-void
.end method

.method private static asHttpResponse(Ljava/net/HttpURLConnection;)Lorg/apache/http/HttpResponse;
    .registers 12
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 211
    new-instance v2, Lorg/apache/http/message/BasicHttpResponse;

    new-instance v5, Lorg/apache/http/message/BasicStatusLine;

    new-instance v6, Lorg/apache/http/ProtocolVersion;

    const-string v7, "HTTP"

    invoke-direct {v6, v7, v9, v9}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    invoke-direct {v2, v5}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;)V

    .line 214
    .local v2, httpResponse:Lorg/apache/http/message/BasicHttpResponse;
    sget-object v5, Lcom/google/android/apps/unveil/network/HttpUrlConnectionConnector;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v6, "%s %d %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    const/4 v8, 0x2

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    .line 217
    .local v1, headerFields:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_48
    :goto_48
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_70

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 218
    .local v0, h:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_48

    .line 222
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/apache/http/message/BasicHttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    .line 225
    .end local v0           #h:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_70
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_89

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 227
    .local v4, responseBody:Ljava/io/InputStream;
    :goto_7c
    new-instance v5, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-static {v4}, Lcom/google/android/apps/unveil/env/StreamLoader;->getByteArrayForStream(Ljava/io/InputStream;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v2, v5}, Lorg/apache/http/message/BasicHttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 229
    return-object v2

    .line 225
    .end local v4           #responseBody:Ljava/io/InputStream;
    :cond_89
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    goto :goto_7c
.end method

.method private static configureConnectionForRequest(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/net/HttpURLConnection;)V
    .registers 3
    .parameter "request"
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 179
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 180
    instance-of v0, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 181
    invoke-static {p0, p1}, Lcom/google/android/apps/unveil/network/HttpUrlConnectionConnector;->copyRequestHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/net/HttpURLConnection;)V

    .line 182
    return-void
.end method

.method private static copyRequestHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/net/HttpURLConnection;)V
    .registers 9
    .parameter "request"
    .parameter "connection"

    .prologue
    .line 189
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    .local v0, arr$:[Lorg/apache/http/Header;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_6
    if-ge v2, v3, :cond_2f

    aget-object v1, v0, v2

    .line 190
    .local v1, h:Lorg/apache/http/Header;
    const-string v4, "accept-encoding"

    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 191
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 193
    :cond_24
    sget-object v4, Lcom/google/android/apps/unveil/network/HttpUrlConnectionConnector;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v5, "Ignoring accept-encoding header to allow URLConnection to manage compression"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_21

    .line 196
    .end local v1           #h:Lorg/apache/http/Header;
    :cond_2f
    return-void
.end method

.method private static execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .registers 5
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    .local p1, responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<TT;>;"
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 145
    .local v0, connection:Ljava/net/HttpURLConnection;
    invoke-static {p0, v0}, Lcom/google/android/apps/unveil/network/HttpUrlConnectionConnector;->configureConnectionForRequest(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/net/HttpURLConnection;)V

    .line 146
    invoke-static {p0, v0}, Lcom/google/android/apps/unveil/network/HttpUrlConnectionConnector;->maybePostContent(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/net/HttpURLConnection;)V

    .line 147
    invoke-static {v0}, Lcom/google/android/apps/unveil/network/HttpUrlConnectionConnector;->asHttpResponse(Ljava/net/HttpURLConnection;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 148
    .local v1, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 149
    invoke-interface {p1, v1}, Lorg/apache/http/client/ResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method private static getCookieProvider(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/google/android/apps/unveil/env/Provider;
    .registers 2
    .parameter "request"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            ")",
            "Lcom/google/android/apps/unveil/env/Provider",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 153
    new-instance v0, Lcom/google/android/apps/unveil/network/HttpUrlConnectionConnector$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/unveil/network/HttpUrlConnectionConnector$1;-><init>(Lorg/apache/http/client/methods/HttpUriRequest;)V

    return-object v0
.end method

.method private static maybePostContent(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/net/HttpURLConnection;)V
    .registers 5
    .parameter "request"
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    instance-of v2, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v2, :cond_18

    .line 201
    check-cast p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    .end local p0
    invoke-interface {p0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 202
    .local v0, content:Ljava/io/InputStream;
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 204
    .local v1, out:Ljava/io/OutputStream;
    invoke-static {v0, v1}, Lcom/google/android/apps/unveil/env/StreamLoader;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 205
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 207
    .end local v0           #content:Ljava/io/InputStream;
    .end local v1           #out:Ljava/io/OutputStream;
    :cond_18
    return-void
.end method


# virtual methods
.method public blockingRequest(Ljava/lang/Class;Lorg/apache/http/client/methods/HttpPost;)Lcom/google/android/apps/unveil/network/UnveilResponse;
    .registers 5
    .parameter
    .parameter "request"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseType:",
            "Lcom/google/protobuf/GeneratedMessageLite;",
            ">(",
            "Ljava/lang/Class",
            "<TResponseType;>;",
            "Lorg/apache/http/client/methods/HttpPost;",
            ")",
            "Lcom/google/android/apps/unveil/network/UnveilResponse",
            "<TResponseType;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;
        }
    .end annotation

    .prologue
    .line 112
    .local p1, responseClass:Ljava/lang/Class;,"Ljava/lang/Class<TResponseType;>;"
    :try_start_0
    new-instance v1, Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler;

    invoke-direct {v1, p1}, Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler;-><init>(Ljava/lang/Class;)V

    invoke-static {p2, v1}, Lcom/google/android/apps/unveil/network/HttpUrlConnectionConnector;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/network/UnveilResponse;
    :try_end_b
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_b} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_13

    return-object v1

    .line 113
    :catch_c
    move-exception v0

    .line 114
    .local v0, e:Ljava/net/MalformedURLException;
    new-instance v1, Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;

    invoke-direct {v1, v0}, Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 115
    .end local v0           #e:Ljava/net/MalformedURLException;
    :catch_13
    move-exception v0

    .line 116
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;

    invoke-direct {v1, v0}, Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public blockingRequest(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/google/android/apps/unveil/network/fetch/FetchResponse;
    .registers 5
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;
        }
    .end annotation

    .prologue
    .line 123
    :try_start_0
    new-instance v1, Lcom/google/android/apps/unveil/network/fetch/FetchResponse$HttpResponseHandler;

    invoke-static {p1}, Lcom/google/android/apps/unveil/network/HttpUrlConnectionConnector;->getCookieProvider(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/google/android/apps/unveil/env/Provider;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/apps/unveil/network/fetch/FetchResponse$HttpResponseHandler;-><init>(Lcom/google/android/apps/unveil/env/Provider;)V

    invoke-static {p1, v1}, Lcom/google/android/apps/unveil/network/HttpUrlConnectionConnector;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_f} :catch_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_17

    return-object v1

    .line 124
    :catch_10
    move-exception v0

    .line 125
    .local v0, e:Ljava/lang/IllegalStateException;
    new-instance v1, Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;

    invoke-direct {v1, v0}, Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 126
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_17
    move-exception v0

    .line 127
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;

    invoke-direct {v1, v0}, Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .registers 4
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 135
    .local v0, connection:Ljava/net/HttpURLConnection;
    invoke-static {p1, v0}, Lcom/google/android/apps/unveil/network/HttpUrlConnectionConnector;->configureConnectionForRequest(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/net/HttpURLConnection;)V

    .line 136
    invoke-static {p1, v0}, Lcom/google/android/apps/unveil/network/HttpUrlConnectionConnector;->maybePostContent(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/net/HttpURLConnection;)V

    .line 137
    invoke-static {v0}, Lcom/google/android/apps/unveil/network/HttpUrlConnectionConnector;->asHttpResponse(Ljava/net/HttpURLConnection;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    return-object v1
.end method
