.class public Lcom/google/api/client/http/json/JsonHttpClient;
.super Ljava/lang/Object;
.source "JsonHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/http/json/JsonHttpClient$Builder;
    }
.end annotation


# instance fields
.field private final applicationName:Ljava/lang/String;

.field private final baseUrl:Ljava/lang/String;

.field private final jsonFactory:Lcom/google/api/client/json/JsonFactory;

.field private jsonHttpParser:Lcom/google/api/client/http/json/JsonHttpParser;

.field private final jsonHttpRequestInitializer:Lcom/google/api/client/http/json/JsonHttpRequestInitializer;

.field private final requestFactory:Lcom/google/api/client/http/HttpRequestFactory;


# direct methods
.method protected constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/json/JsonHttpRequestInitializer;Lcom/google/api/client/http/HttpRequestInitializer;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "transport"
    .parameter "jsonHttpRequestInitializer"
    .parameter "httpRequestInitializer"
    .parameter "jsonFactory"
    .parameter "baseUrl"
    .parameter "applicationName"

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-object p2, p0, Lcom/google/api/client/http/json/JsonHttpClient;->jsonHttpRequestInitializer:Lcom/google/api/client/http/json/JsonHttpRequestInitializer;

    .line 203
    invoke-static {p5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->baseUrl:Ljava/lang/String;

    .line 204
    iput-object p6, p0, Lcom/google/api/client/http/json/JsonHttpClient;->applicationName:Ljava/lang/String;

    .line 205
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/JsonFactory;

    iput-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 206
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    if-nez p3, :cond_23

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v0

    :goto_20
    iput-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

    .line 209
    return-void

    .line 207
    :cond_23
    invoke-virtual {p1, p3}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v0

    goto :goto_20
.end method


# virtual methods
.method protected buildHttpRequest(Lcom/google/api/client/http/HttpMethod;Ljava/lang/String;Lcom/google/api/client/http/json/JsonHttpRequest;)Lcom/google/api/client/http/HttpRequest;
    .registers 8
    .parameter "method"
    .parameter "uriTemplate"
    .parameter "jsonHttpRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    new-instance v1, Lcom/google/api/client/http/GenericUrl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpClient;->getBaseUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, p3, v3}, Lcom/google/api/client/http/UriTemplate;->expand(Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    .line 225
    .local v1, url:Lcom/google/api/client/http/GenericUrl;
    iget-object v2, p0, Lcom/google/api/client/http/json/JsonHttpClient;->requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v1, v3}, Lcom/google/api/client/http/HttpRequestFactory;->buildRequest(Lcom/google/api/client/http/HttpMethod;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    .line 226
    .local v0, httpRequest:Lcom/google/api/client/http/HttpRequest;
    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpClient;->getJsonHttpParser()Lcom/google/api/client/http/json/JsonHttpParser;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/api/client/http/HttpRequest;->addParser(Lcom/google/api/client/http/HttpParser;)V

    .line 227
    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpClient;->getApplicationName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3e

    .line 228
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpClient;->getApplicationName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/api/client/http/HttpHeaders;->setUserAgent(Ljava/lang/String;)V

    .line 230
    :cond_3e
    return-object v0
.end method

.method protected createParser()Lcom/google/api/client/http/json/JsonHttpParser;
    .registers 3

    .prologue
    .line 126
    new-instance v0, Lcom/google/api/client/http/json/JsonHttpParser;

    iget-object v1, p0, Lcom/google/api/client/http/json/JsonHttpClient;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    invoke-direct {v0, v1}, Lcom/google/api/client/http/json/JsonHttpParser;-><init>(Lcom/google/api/client/json/JsonFactory;)V

    return-object v0
.end method

.method protected createSerializer(Ljava/lang/Object;)Lcom/google/api/client/http/json/JsonHttpContent;
    .registers 4
    .parameter "body"

    .prologue
    .line 136
    new-instance v0, Lcom/google/api/client/http/json/JsonHttpContent;

    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpClient;->getJsonFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/api/client/http/json/JsonHttpContent;-><init>(Lcom/google/api/client/json/JsonFactory;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected execute(Lcom/google/api/client/http/HttpMethod;Ljava/lang/String;Ljava/lang/Object;Lcom/google/api/client/http/json/JsonHttpRequest;)Lcom/google/api/client/http/HttpResponse;
    .registers 8
    .parameter "method"
    .parameter "uriTemplate"
    .parameter "body"
    .parameter "jsonHttpRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-virtual {p0, p1, p2, p4}, Lcom/google/api/client/http/json/JsonHttpClient;->buildHttpRequest(Lcom/google/api/client/http/HttpMethod;Ljava/lang/String;Lcom/google/api/client/http/json/JsonHttpRequest;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    .line 249
    .local v0, request:Lcom/google/api/client/http/HttpRequest;
    if-eqz p3, :cond_16

    .line 250
    invoke-virtual {p0, p3}, Lcom/google/api/client/http/json/JsonHttpClient;->createSerializer(Ljava/lang/Object;)Lcom/google/api/client/http/json/JsonHttpContent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpRequest;->setContent(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    .line 251
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpRequest;->setEnableGZipContent(Z)Lcom/google/api/client/http/HttpRequest;

    .line 257
    :cond_11
    :goto_11
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    return-object v1

    .line 252
    :cond_16
    sget-object v1, Lcom/google/api/client/http/HttpMethod;->POST:Lcom/google/api/client/http/HttpMethod;

    if-eq p1, v1, :cond_22

    sget-object v1, Lcom/google/api/client/http/HttpMethod;->PUT:Lcom/google/api/client/http/HttpMethod;

    if-eq p1, v1, :cond_22

    sget-object v1, Lcom/google/api/client/http/HttpMethod;->PATCH:Lcom/google/api/client/http/HttpMethod;

    if-ne p1, v1, :cond_11

    .line 255
    :cond_22
    const-string v1, "application/json"

    const-string v2, " "

    invoke-static {v1, v2}, Lcom/google/api/client/http/ByteArrayContent;->fromString(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/ByteArrayContent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpRequest;->setContent(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    goto :goto_11
.end method

.method public getApplicationName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->applicationName:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getJsonFactory()Lcom/google/api/client/json/JsonFactory;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    return-object v0
.end method

.method public final getJsonHttpParser()Lcom/google/api/client/http/json/JsonHttpParser;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->jsonHttpParser:Lcom/google/api/client/http/json/JsonHttpParser;

    if-nez v0, :cond_a

    .line 116
    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpClient;->createParser()Lcom/google/api/client/http/json/JsonHttpParser;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->jsonHttpParser:Lcom/google/api/client/http/json/JsonHttpParser;

    .line 118
    :cond_a
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->jsonHttpParser:Lcom/google/api/client/http/json/JsonHttpParser;

    return-object v0
.end method

.method public final getJsonHttpRequestInitializer()Lcom/google/api/client/http/json/JsonHttpRequestInitializer;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->jsonHttpRequestInitializer:Lcom/google/api/client/http/json/JsonHttpRequestInitializer;

    return-object v0
.end method

.method public final getRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

    return-object v0
.end method

.method protected initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V
    .registers 3
    .parameter "jsonHttpRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpClient;->getJsonHttpRequestInitializer()Lcom/google/api/client/http/json/JsonHttpRequestInitializer;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 164
    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpClient;->getJsonHttpRequestInitializer()Lcom/google/api/client/http/json/JsonHttpRequestInitializer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/api/client/http/json/JsonHttpRequestInitializer;->initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V

    .line 166
    :cond_d
    return-void
.end method
