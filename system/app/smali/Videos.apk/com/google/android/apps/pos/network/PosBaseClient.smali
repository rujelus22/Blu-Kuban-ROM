.class public abstract Lcom/google/android/apps/pos/network/PosBaseClient;
.super Ljava/lang/Object;
.source "PosBaseClient.java"


# instance fields
.field protected accessToken:Ljava/lang/String;

.field protected apiKey:Ljava/lang/String;

.field protected appId:Ljava/lang/String;

.field protected applicationName:Ljava/lang/String;

.field protected basePath:Ljava/lang/String;

.field protected baseServer:Ljava/lang/String;

.field protected globalSource:Ljava/lang/String;

.field protected final jsonFactory:Lcom/google/api/client/json/JsonFactory;

.field protected final jsonParser:Lcom/google/api/client/http/json/JsonHttpParser;

.field protected final methodOverride:Lcom/google/api/client/googleapis/MethodOverride;

.field protected prettyPrint:Ljava/lang/Boolean;

.field protected pvtCookie:Ljava/lang/String;

.field protected pvtOriginToken:Ljava/lang/String;

.field protected pvtXOrigin:Ljava/lang/String;

.field protected final requestFactory:Lcom/google/api/client/http/HttpRequestFactory;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/HttpRequestInitializer;Lcom/google/api/client/json/JsonFactory;)V
    .registers 7
    .parameter "baseServer"
    .parameter "basePath"
    .parameter "transport"
    .parameter "requestInitializer"
    .parameter "jsonFactory"

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lcom/google/api/client/googleapis/MethodOverride;

    invoke-direct {v0}, Lcom/google/api/client/googleapis/MethodOverride;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/pos/network/PosBaseClient;->methodOverride:Lcom/google/api/client/googleapis/MethodOverride;

    .line 109
    const-string v0, "https://www.google.com"

    iput-object v0, p0, Lcom/google/android/apps/pos/network/PosBaseClient;->pvtXOrigin:Ljava/lang/String;

    .line 120
    iput-object p1, p0, Lcom/google/android/apps/pos/network/PosBaseClient;->baseServer:Ljava/lang/String;

    .line 121
    iput-object p2, p0, Lcom/google/android/apps/pos/network/PosBaseClient;->basePath:Ljava/lang/String;

    .line 122
    iput-object p5, p0, Lcom/google/android/apps/pos/network/PosBaseClient;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 123
    new-instance v0, Lcom/google/api/client/http/json/JsonHttpParser;

    invoke-direct {v0}, Lcom/google/api/client/http/json/JsonHttpParser;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/pos/network/PosBaseClient;->jsonParser:Lcom/google/api/client/http/json/JsonHttpParser;

    .line 124
    iget-object v0, p0, Lcom/google/android/apps/pos/network/PosBaseClient;->jsonParser:Lcom/google/api/client/http/json/JsonHttpParser;

    iput-object p5, v0, Lcom/google/api/client/http/json/JsonHttpParser;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 125
    invoke-virtual {p3, p4}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/network/PosBaseClient;->requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

    .line 126
    return-void
.end method

.method private hasPvtCredentials()Z
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/apps/pos/network/PosBaseClient;->pvtCookie:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/apps/pos/network/PosBaseClient;->pvtOriginToken:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/apps/pos/network/PosBaseClient;->pvtXOrigin:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/apps/pos/network/PosBaseClient;->apiKey:Ljava/lang/String;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method protected buildHttpRequest(Lcom/google/api/client/http/HttpMethod;Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/HttpRequest;
    .registers 9
    .parameter "httpMethod"
    .parameter "requestUrl"
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/android/apps/pos/network/PosBaseClient;->baseServer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/pos/network/PosBaseClient;->basePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2, p3}, Lcom/google/api/client/googleapis/GoogleUrl;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/GoogleUrl;

    move-result-object v1

    .line 194
    .local v1, url:Lcom/google/api/client/googleapis/GoogleUrl;
    iget-object v2, p0, Lcom/google/android/apps/pos/network/PosBaseClient;->apiKey:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/api/client/googleapis/GoogleUrl;->key:Ljava/lang/String;

    .line 195
    const-string v2, "json"

    iput-object v2, v1, Lcom/google/api/client/googleapis/GoogleUrl;->alt:Ljava/lang/String;

    .line 196
    iget-object v2, p0, Lcom/google/android/apps/pos/network/PosBaseClient;->prettyPrint:Ljava/lang/Boolean;

    iput-object v2, v1, Lcom/google/api/client/googleapis/GoogleUrl;->prettyprint:Ljava/lang/Boolean;

    .line 198
    iget-object v2, p0, Lcom/google/android/apps/pos/network/PosBaseClient;->requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v1, v3}, Lcom/google/api/client/http/HttpRequestFactory;->buildRequest(Lcom/google/api/client/http/HttpMethod;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    .line 199
    .local v0, httpRequest:Lcom/google/api/client/http/HttpRequest;
    iget-object v2, p0, Lcom/google/android/apps/pos/network/PosBaseClient;->applicationName:Ljava/lang/String;

    if-eqz v2, :cond_36

    .line 200
    iget-object v2, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    iget-object v3, p0, Lcom/google/android/apps/pos/network/PosBaseClient;->applicationName:Ljava/lang/String;

    iput-object v3, v2, Lcom/google/api/client/http/HttpHeaders;->userAgent:Ljava/lang/String;

    .line 202
    :cond_36
    iget-object v2, p0, Lcom/google/android/apps/pos/network/PosBaseClient;->appId:Ljava/lang/String;

    if-eqz v2, :cond_43

    .line 203
    iget-object v2, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    const-string v3, "app_id"

    iget-object v4, p0, Lcom/google/android/apps/pos/network/PosBaseClient;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_43
    invoke-direct {p0}, Lcom/google/android/apps/pos/network/PosBaseClient;->hasPvtCredentials()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 206
    iget-object v2, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    const-string v3, "X-GFE-SSL"

    const-string v4, "yes"

    invoke-virtual {v2, v3, v4}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v2, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    const-string v3, "Cookie"

    iget-object v4, p0, Lcom/google/android/apps/pos/network/PosBaseClient;->pvtCookie:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v2, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    const-string v3, "OriginToken"

    iget-object v4, p0, Lcom/google/android/apps/pos/network/PosBaseClient;->pvtOriginToken:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v2, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    const-string v3, "X-Origin"

    iget-object v4, p0, Lcom/google/android/apps/pos/network/PosBaseClient;->pvtXOrigin:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_6d
    :goto_6d
    iget-object v2, p0, Lcom/google/android/apps/pos/network/PosBaseClient;->methodOverride:Lcom/google/api/client/googleapis/MethodOverride;

    invoke-virtual {v2, v0}, Lcom/google/api/client/googleapis/MethodOverride;->intercept(Lcom/google/api/client/http/HttpRequest;)V

    .line 216
    return-object v0

    .line 210
    :cond_73
    iget-object v2, p0, Lcom/google/android/apps/pos/network/PosBaseClient;->accessToken:Ljava/lang/String;

    if-eqz v2, :cond_6d

    .line 211
    new-instance v2, Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessProtectedResource;

    iget-object v3, p0, Lcom/google/android/apps/pos/network/PosBaseClient;->accessToken:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessProtectedResource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessProtectedResource;->intercept(Lcom/google/api/client/http/HttpRequest;)V

    goto :goto_6d
.end method

.method protected createSerializer(Ljava/lang/Object;)Lcom/google/api/client/http/json/JsonHttpContent;
    .registers 4
    .parameter "body"

    .prologue
    .line 225
    new-instance v0, Lcom/google/api/client/http/json/JsonHttpContent;

    invoke-direct {v0}, Lcom/google/api/client/http/json/JsonHttpContent;-><init>()V

    .line 226
    .local v0, jsonHttpContent:Lcom/google/api/client/http/json/JsonHttpContent;
    iget-object v1, p0, Lcom/google/android/apps/pos/network/PosBaseClient;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    iput-object v1, v0, Lcom/google/api/client/http/json/JsonHttpContent;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 227
    iput-object p1, v0, Lcom/google/api/client/http/json/JsonHttpContent;->data:Ljava/lang/Object;

    .line 228
    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .registers 2
    .parameter "accessToken"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/google/android/apps/pos/network/PosBaseClient;->accessToken:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setApiKey(Ljava/lang/String;)V
    .registers 2
    .parameter "apiKey"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/android/apps/pos/network/PosBaseClient;->apiKey:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .registers 2
    .parameter "appId"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/google/android/apps/pos/network/PosBaseClient;->appId:Ljava/lang/String;

    .line 152
    return-void
.end method
