.class public Lcom/google/api/client/googleapis/services/GoogleClient;
.super Lcom/google/api/client/http/json/JsonHttpClient;
.source "GoogleClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/services/GoogleClient$Builder;
    }
.end annotation


# instance fields
.field private final methodOverride:Lcom/google/api/client/googleapis/MethodOverride;


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
    .line 79
    invoke-direct/range {p0 .. p6}, Lcom/google/api/client/http/json/JsonHttpClient;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/json/JsonHttpRequestInitializer;Lcom/google/api/client/http/HttpRequestInitializer;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/google/api/client/googleapis/MethodOverride;

    invoke-direct {v0}, Lcom/google/api/client/googleapis/MethodOverride;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/googleapis/services/GoogleClient;->methodOverride:Lcom/google/api/client/googleapis/MethodOverride;

    .line 85
    return-void
.end method


# virtual methods
.method protected buildHttpRequest(Lcom/google/api/client/http/HttpMethod;Ljava/lang/String;Lcom/google/api/client/http/json/JsonHttpRequest;)Lcom/google/api/client/http/HttpRequest;
    .registers 6
    .parameter "method"
    .parameter "uriTemplate"
    .parameter "jsonHttpRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-super {p0, p1, p2, p3}, Lcom/google/api/client/http/json/JsonHttpClient;->buildHttpRequest(Lcom/google/api/client/http/HttpMethod;Ljava/lang/String;Lcom/google/api/client/http/json/JsonHttpRequest;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    .line 100
    .local v0, httpRequest:Lcom/google/api/client/http/HttpRequest;
    iget-object v1, p0, Lcom/google/api/client/googleapis/services/GoogleClient;->methodOverride:Lcom/google/api/client/googleapis/MethodOverride;

    invoke-virtual {v1, v0}, Lcom/google/api/client/googleapis/MethodOverride;->intercept(Lcom/google/api/client/http/HttpRequest;)V

    .line 101
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
    .line 121
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/api/client/http/json/JsonHttpClient;->execute(Lcom/google/api/client/http/HttpMethod;Ljava/lang/String;Ljava/lang/Object;Lcom/google/api/client/http/json/JsonHttpRequest;)Lcom/google/api/client/http/HttpResponse;
    :try_end_3
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 122
    :catch_5
    move-exception v0

    .line 123
    .local v0, e:Lcom/google/api/client/http/HttpResponseException;
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/GoogleClient;->getJsonFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponseException;->getResponse()Lcom/google/api/client/http/HttpResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->from(Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpResponse;)Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;

    move-result-object v1

    throw v1
.end method
