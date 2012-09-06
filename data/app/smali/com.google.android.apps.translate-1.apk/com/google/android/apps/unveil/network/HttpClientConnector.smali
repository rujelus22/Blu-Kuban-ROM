.class public Lcom/google/android/apps/unveil/network/HttpClientConnector;
.super Lcom/google/android/apps/unveil/network/AbstractConnector;
.source "HttpClientConnector.java"


# static fields
.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private final httpClient:Lorg/apache/http/client/HttpClient;

.field private final responseConsumer:Lcom/google/android/apps/unveil/network/utils/ResponseContentTransferrer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/network/HttpClientConnector;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/client/HttpClient;Landroid/net/ConnectivityManager;Lcom/google/android/apps/unveil/env/Provider;Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;)V
    .registers 6
    .parameter "httpClient"
    .parameter "connectivityManager"
    .parameter
    .parameter "requestFactory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/HttpClient;",
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
    .line 40
    .local p3, frontendUrlProvider:Lcom/google/android/apps/unveil/env/Provider;,"Lcom/google/android/apps/unveil/env/Provider<Ljava/net/URL;>;"
    invoke-static {p2}, Lcom/google/android/apps/unveil/network/HttpClientConnector;->connectionManagerConnectivityProvider(Landroid/net/ConnectivityManager;)Lcom/google/android/apps/unveil/env/Provider;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lcom/google/android/apps/unveil/network/AbstractConnector;-><init>(Lcom/google/android/apps/unveil/env/Provider;Lcom/google/android/apps/unveil/env/Provider;Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;)V

    .line 35
    new-instance v0, Lcom/google/android/apps/unveil/network/utils/ResponseContentTransferrer;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/network/utils/ResponseContentTransferrer;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/network/HttpClientConnector;->responseConsumer:Lcom/google/android/apps/unveil/network/utils/ResponseContentTransferrer;

    .line 43
    iput-object p1, p0, Lcom/google/android/apps/unveil/network/HttpClientConnector;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 44
    return-void
.end method

.method public static newHttpClientConnector(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/apps/unveil/env/Provider;Ljava/lang/String;)Lcom/google/android/apps/unveil/network/HttpClientConnector;
    .registers 11
    .parameter "context"
    .parameter "frontendUrl"
    .parameter
    .parameter "installationId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/unveil/env/Provider",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/apps/unveil/network/HttpClientConnector;"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, userAgent:Lcom/google/android/apps/unveil/env/Provider;,"Lcom/google/android/apps/unveil/env/Provider<Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_5} :catch_1f

    .line 59
    .local v1, url:Ljava/net/URL;
    new-instance v3, Lcom/google/android/apps/unveil/network/HttpClientConnector;

    invoke-static {p0}, Lcom/google/android/apps/unveil/network/HttpClientFactory;->make(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v4

    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-static {v1}, Lcom/google/android/apps/unveil/env/Providers;->staticProvider(Ljava/lang/Object;)Lcom/google/android/apps/unveil/env/Provider;

    move-result-object v5

    invoke-static {p2, p3}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;->newAnonymousRequestFactory(Lcom/google/android/apps/unveil/env/Provider;Ljava/lang/String;)Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;

    move-result-object v6

    invoke-direct {v3, v4, v2, v5, v6}, Lcom/google/android/apps/unveil/network/HttpClientConnector;-><init>(Lorg/apache/http/client/HttpClient;Landroid/net/ConnectivityManager;Lcom/google/android/apps/unveil/env/Provider;Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;)V

    return-object v3

    .line 56
    .end local v1           #url:Ljava/net/URL;
    :catch_1f
    move-exception v0

    .line 57
    .local v0, e:Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public blockingRequest(Ljava/lang/Class;Lorg/apache/http/client/methods/HttpPost;)Lcom/google/android/apps/unveil/network/UnveilResponse;
    .registers 6
    .parameter
    .parameter "post"
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
    .line 69
    .local p1, responseClazz:Ljava/lang/Class;,"Ljava/lang/Class<TResponseType;>;"
    :try_start_0
    new-instance v1, Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler;

    invoke-direct {v1, p1}, Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler;-><init>(Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/google/android/apps/unveil/network/HttpClientConnector;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v2, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Lcom/google/android/apps/unveil/network/UnveilResponse;
    :try_end_e
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_e} :catch_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_17

    move-result-object v1

    return-object v1

    .line 71
    :catch_10
    move-exception v0

    .line 72
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    new-instance v1, Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;

    invoke-direct {v1, v0}, Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 73
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_17
    move-exception v0

    .line 74
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;

    invoke-direct {v1, v0}, Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public blockingRequest(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/google/android/apps/unveil/network/fetch/FetchResponse;
    .registers 6
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v2, Lcom/google/android/apps/unveil/network/fetch/FetchResponse$HttpResponseHandler;

    iget-object v3, p0, Lcom/google/android/apps/unveil/network/HttpClientConnector;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-direct {v2, v3}, Lcom/google/android/apps/unveil/network/fetch/FetchResponse$HttpResponseHandler;-><init>(Lorg/apache/http/client/HttpClient;)V

    .line 83
    .local v2, responseHandler:Lcom/google/android/apps/unveil/network/fetch/FetchResponse$HttpResponseHandler;
    :try_start_7
    iget-object v3, p0, Lcom/google/android/apps/unveil/network/HttpClientConnector;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v3, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 84
    .local v1, response:Lorg/apache/http/HttpResponse;
    iget-object v3, p0, Lcom/google/android/apps/unveil/network/HttpClientConnector;->responseConsumer:Lcom/google/android/apps/unveil/network/utils/ResponseContentTransferrer;

    invoke-virtual {v3, v1}, Lcom/google/android/apps/unveil/network/utils/ResponseContentTransferrer;->consumeAndRelease(Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/unveil/network/fetch/FetchResponse$HttpResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Lcom/google/android/apps/unveil/network/fetch/FetchResponse;
    :try_end_16
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_7 .. :try_end_16} :catch_18
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_16} :catch_1f
    .catch Lcom/google/android/apps/unveil/network/RequestFailedException; {:try_start_7 .. :try_end_16} :catch_26

    move-result-object v3

    return-object v3

    .line 85
    .end local v1           #response:Lorg/apache/http/HttpResponse;
    :catch_18
    move-exception v0

    .line 86
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    new-instance v3, Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;

    invoke-direct {v3, v0}, Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 87
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1f
    move-exception v0

    .line 88
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;

    invoke-direct {v3, v0}, Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 89
    .end local v0           #e:Ljava/io/IOException;
    :catch_26
    move-exception v0

    .line 90
    .local v0, e:Lcom/google/android/apps/unveil/network/RequestFailedException;
    new-instance v3, Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;

    invoke-direct {v3, v0}, Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method
