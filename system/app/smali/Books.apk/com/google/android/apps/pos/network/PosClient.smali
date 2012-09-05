.class public Lcom/google/android/apps/pos/network/PosClient;
.super Ljava/lang/Object;
.source "PosClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/pos/network/PosClient$1;,
        Lcom/google/android/apps/pos/network/PosClient$PosRequest;,
        Lcom/google/android/apps/pos/network/PosClient$PosPlusoneRequest;,
        Lcom/google/android/apps/pos/network/PosClient$BatchInsertRequest;,
        Lcom/google/android/apps/pos/network/PosClient$InsertRequest;,
        Lcom/google/android/apps/pos/network/PosClient$BatchDeleteRequest;,
        Lcom/google/android/apps/pos/network/PosClient$DeleteRequest;,
        Lcom/google/android/apps/pos/network/PosClient$BatchGetRequest;,
        Lcom/google/android/apps/pos/network/PosClient$GetRequest;,
        Lcom/google/android/apps/pos/network/PosClient$ListRequest;,
        Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequest;,
        Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;,
        Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;,
        Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;,
        Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;,
        Lcom/google/android/apps/pos/network/PosClient$ListRequestJson;,
        Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson;
    }
.end annotation


# static fields
.field private static final BASE_SERVER:Ljava/lang/String;

.field static final TAG:Ljava/lang/String;


# instance fields
.field private accessToken:Ljava/lang/String;

.field private apiKey:Ljava/lang/String;

.field private applicationName:Ljava/lang/String;

.field private globalContainer:Ljava/lang/String;

.field private globalSource:Ljava/lang/String;

.field private final jsonFactory:Lcom/google/api/client/json/JsonFactory;

.field private final methodOverride:Lcom/google/api/client/googleapis/MethodOverride;

.field private prettyPrint:Ljava/lang/Boolean;

.field private pvtCookie:Ljava/lang/String;

.field private pvtOriginToken:Ljava/lang/String;

.field private pvtXOrigin:Ljava/lang/String;

.field private final requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

.field private final serverUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 39
    const-class v0, Lcom/google/android/apps/pos/network/PosClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/pos/network/PosClient;->TAG:Ljava/lang/String;

    .line 53
    const-string v0, "PosFrontend"

    const-string v1, "https://www.googleapis.com"

    invoke-static {v0, v1}, Lcom/google/android/apps/pos/network/LogUtil;->getLogTagProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/pos/network/PosClient;->BASE_SERVER:Ljava/lang/String;

    .line 54
    const-string v0, "https://www.googleapis.com"

    sget-object v1, Lcom/google/android/apps/pos/network/PosClient;->BASE_SERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    sget-object v0, Lcom/google/android/apps/pos/network/PosClient;->TAG:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 55
    sget-object v0, Lcom/google/android/apps/pos/network/PosClient;->TAG:Ljava/lang/String;

    const-string v1, "Using custom POS base server: %s "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/google/android/apps/pos/network/PosClient;->BASE_SERVER:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_38
    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)V
    .registers 9
    .parameter "httpTransport"
    .parameter "jsonFactory"

    .prologue
    .line 140
    sget-object v1, Lcom/google/android/apps/pos/network/PosClient;->BASE_SERVER:Ljava/lang/String;

    const-string v2, "/rpc"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/pos/network/PosClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/HttpRequestInitializer;Lcom/google/api/client/json/JsonFactory;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/HttpRequestInitializer;Lcom/google/api/client/json/JsonFactory;)V
    .registers 8
    .parameter "baseServer"
    .parameter "basePath"
    .parameter "transport"
    .parameter "requestInitializer"
    .parameter "jsonFactory"

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const-string v0, "native:android_app"

    iput-object v0, p0, Lcom/google/android/apps/pos/network/PosClient;->globalSource:Ljava/lang/String;

    .line 122
    new-instance v0, Lcom/google/api/client/googleapis/MethodOverride;

    invoke-direct {v0}, Lcom/google/api/client/googleapis/MethodOverride;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/pos/network/PosClient;->methodOverride:Lcom/google/api/client/googleapis/MethodOverride;

    .line 137
    const-string v0, "https://www.google.com"

    iput-object v0, p0, Lcom/google/android/apps/pos/network/PosClient;->pvtXOrigin:Ljava/lang/String;

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/network/PosClient;->serverUrl:Ljava/lang/String;

    .line 154
    invoke-static {p5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/JsonFactory;

    iput-object v0, p0, Lcom/google/android/apps/pos/network/PosClient;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 155
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpTransport;

    invoke-virtual {v0, p4}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/network/PosClient;->requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

    .line 157
    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/apps/pos/network/PosClient;[Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;)Lcom/google/android/apps/pos/network/BatchResponseItemJson;
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/apps/pos/network/PosClient;->executeAndParseSingleResponseItem([Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;)Lcom/google/android/apps/pos/network/BatchResponseItemJson;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/google/android/apps/pos/network/PosClient;[Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;)Ljava/util/List;
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/apps/pos/network/PosClient;->executeAndParse([Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private buildHttpRequest(Lcom/google/api/client/http/HttpMethod;Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/HttpRequest;
    .registers 12
    .parameter "httpMethod"
    .parameter "requestUrl"
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1209
    iget-object v4, p0, Lcom/google/android/apps/pos/network/PosClient;->serverUrl:Ljava/lang/String;

    invoke-static {v4, p2, p3}, Lcom/google/api/client/googleapis/GoogleUrl;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/GoogleUrl;

    move-result-object v2

    .line 1210
    .local v2, url:Lcom/google/api/client/googleapis/GoogleUrl;
    iget-object v4, p0, Lcom/google/android/apps/pos/network/PosClient;->apiKey:Ljava/lang/String;

    iput-object v4, v2, Lcom/google/api/client/googleapis/GoogleUrl;->key:Ljava/lang/String;

    .line 1211
    const-string v4, "json"

    iput-object v4, v2, Lcom/google/api/client/googleapis/GoogleUrl;->alt:Ljava/lang/String;

    .line 1212
    iget-object v4, p0, Lcom/google/android/apps/pos/network/PosClient;->prettyPrint:Ljava/lang/Boolean;

    iput-object v4, v2, Lcom/google/api/client/googleapis/GoogleUrl;->prettyprint:Ljava/lang/Boolean;

    .line 1214
    iget-object v4, p0, Lcom/google/android/apps/pos/network/PosClient;->requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v2, v5}, Lcom/google/api/client/http/HttpRequestFactory;->buildRequest(Lcom/google/api/client/http/HttpMethod;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v1

    .line 1215
    .local v1, httpRequest:Lcom/google/api/client/http/HttpRequest;
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v0

    .line 1216
    .local v0, httpHeaders:Lcom/google/api/client/http/HttpHeaders;
    const-string v3, "G+ SDK/1.0.0;"

    .line 1217
    .local v3, userAgent:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/apps/pos/network/PosClient;->applicationName:Ljava/lang/String;

    if-eqz v4, :cond_34

    .line 1218
    const-string v4, "%s; %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/apps/pos/network/PosClient;->applicationName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1220
    :cond_34
    invoke-virtual {v0, v3}, Lcom/google/api/client/http/HttpHeaders;->setUserAgent(Ljava/lang/String;)V

    .line 1221
    invoke-direct {p0}, Lcom/google/android/apps/pos/network/PosClient;->hasPvtCredentials()Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 1222
    const-string v4, "X-GFE-SSL"

    const-string v5, "yes"

    invoke-virtual {v0, v4, v5}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    const-string v4, "Cookie"

    iget-object v5, p0, Lcom/google/android/apps/pos/network/PosClient;->pvtCookie:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    const-string v4, "OriginToken"

    iget-object v5, p0, Lcom/google/android/apps/pos/network/PosClient;->pvtOriginToken:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    const-string v4, "X-Origin"

    iget-object v5, p0, Lcom/google/android/apps/pos/network/PosClient;->pvtXOrigin:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    :cond_59
    :goto_59
    iget-object v4, p0, Lcom/google/android/apps/pos/network/PosClient;->methodOverride:Lcom/google/api/client/googleapis/MethodOverride;

    invoke-virtual {v4, v1}, Lcom/google/api/client/googleapis/MethodOverride;->intercept(Lcom/google/api/client/http/HttpRequest;)V

    .line 1232
    return-object v1

    .line 1226
    :cond_5f
    iget-object v4, p0, Lcom/google/android/apps/pos/network/PosClient;->accessToken:Ljava/lang/String;

    if-eqz v4, :cond_59

    .line 1227
    new-instance v4, Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessProtectedResource;

    iget-object v5, p0, Lcom/google/android/apps/pos/network/PosClient;->accessToken:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessProtectedResource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessProtectedResource;->intercept(Lcom/google/api/client/http/HttpRequest;)V

    goto :goto_59
.end method

.method private createParserForResponse(Lcom/google/api/client/http/HttpResponse;)Lcom/google/api/client/json/JsonParser;
    .registers 5
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1236
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 1238
    .local v0, content:Ljava/io/InputStream;
    :try_start_4
    iget-object v2, p0, Lcom/google/android/apps/pos/network/PosClient;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    invoke-virtual {v2, v0}, Lcom/google/api/client/json/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lcom/google/api/client/json/JsonParser;

    move-result-object v1

    .line 1239
    .local v1, parser:Lcom/google/api/client/json/JsonParser;
    invoke-virtual {v1}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_14

    .line 1240
    const/4 v0, 0x0

    .line 1243
    if-eqz v0, :cond_13

    .line 1244
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_13
    return-object v1

    .line 1243
    .end local v1           #parser:Lcom/google/api/client/json/JsonParser;
    :catchall_14
    move-exception v2

    if-eqz v0, :cond_1a

    .line 1244
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1a
    throw v2
.end method

.method private executeAndParse([Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;)Ljava/util/List;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/pos/network/BatchResponseItemJson;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1187
    array-length v1, p1

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_24

    aget-object v2, p1, v0

    .line 1188
    iget-object v3, p0, Lcom/google/android/apps/pos/network/PosClient;->globalSource:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 1189
    iget-object v3, p0, Lcom/google/android/apps/pos/network/PosClient;->globalSource:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;->setSource(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;

    .line 1191
    :cond_14
    iget-object v3, p0, Lcom/google/android/apps/pos/network/PosClient;->globalContainer:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 1192
    iget-object v3, p0, Lcom/google/android/apps/pos/network/PosClient;->globalContainer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;->setContainer(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;

    .line 1187
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1197
    :cond_24
    sget-object v0, Lcom/google/api/client/http/HttpMethod;->POST:Lcom/google/api/client/http/HttpMethod;

    const-string v1, ""

    invoke-direct {p0, v0, v1, v4}, Lcom/google/android/apps/pos/network/PosClient;->buildHttpRequest(Lcom/google/api/client/http/HttpMethod;Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    .line 1198
    new-instance v1, Lcom/google/api/client/http/json/JsonHttpContent;

    iget-object v2, p0, Lcom/google/android/apps/pos/network/PosClient;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    invoke-direct {v1, v2, p1}, Lcom/google/api/client/http/json/JsonHttpContent;-><init>(Lcom/google/api/client/json/JsonFactory;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpRequest;->setContent(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    .line 1201
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    .line 1202
    invoke-direct {p0, v0}, Lcom/google/android/apps/pos/network/PosClient;->createParserForResponse(Lcom/google/api/client/http/HttpResponse;)Lcom/google/api/client/json/JsonParser;

    move-result-object v0

    .line 1203
    const-class v1, Ljava/util/ArrayList;

    const-class v2, Lcom/google/android/apps/pos/network/BatchResponseItemJson;

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/api/client/json/JsonParser;->parseArrayAndClose(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private executeAndParseSingleResponseItem([Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;)Lcom/google/android/apps/pos/network/BatchResponseItemJson;
    .registers 5
    .parameter "posRequestsJson"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1177
    invoke-direct {p0, p1}, Lcom/google/android/apps/pos/network/PosClient;->executeAndParse([Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;)Ljava/util/List;

    move-result-object v0

    .line 1178
    .local v0, batchResponseItemList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/pos/network/BatchResponseItemJson;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_13

    .line 1179
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Expected single BatchResponseItem result"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1181
    :cond_13
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/pos/network/BatchResponseItemJson;

    return-object v1
.end method

.method private hasPvtCredentials()Z
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/apps/pos/network/PosClient;->pvtCookie:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/apps/pos/network/PosClient;->pvtOriginToken:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/apps/pos/network/PosClient;->pvtXOrigin:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/apps/pos/network/PosClient;->apiKey:Ljava/lang/String;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public createBatchDeleteRequest([Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$BatchDeleteRequest;
    .registers 6
    .parameter "ids"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/apps/pos/network/PosClient$BatchDeleteRequest",
            "<",
            "Lcom/google/android/apps/pos/model/Plusones;",
            ">;"
        }
    .end annotation

    .prologue
    .line 913
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    array-length v2, p1

    new-array v0, v2, [Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;

    .line 915
    .local v0, deleteRequests:[Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    array-length v2, p1

    if-ge v1, v2, :cond_16

    .line 916
    new-instance v2, Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;

    aget-object v3, p1, v1

    invoke-direct {v2, v3}, Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 915
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 918
    :cond_16
    new-instance v2, Lcom/google/android/apps/pos/network/PosClient$BatchDeleteRequest;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/google/android/apps/pos/network/PosClient$BatchDeleteRequest;-><init>(Lcom/google/android/apps/pos/network/PosClient;[Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;Lcom/google/android/apps/pos/network/PosClient$1;)V

    return-object v2
.end method

.method public createBatchGetRequest([Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$BatchGetRequest;
    .registers 6
    .parameter "ids"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/apps/pos/network/PosClient$BatchGetRequest",
            "<",
            "Lcom/google/android/apps/pos/model/Plusones;",
            ">;"
        }
    .end annotation

    .prologue
    .line 806
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    array-length v2, p1

    new-array v0, v2, [Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;

    .line 808
    .local v0, getRequests:[Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    array-length v2, p1

    if-ge v1, v2, :cond_16

    .line 809
    new-instance v2, Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;

    aget-object v3, p1, v1

    invoke-direct {v2, v3}, Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 808
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 811
    :cond_16
    new-instance v2, Lcom/google/android/apps/pos/network/PosClient$BatchGetRequest;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/google/android/apps/pos/network/PosClient$BatchGetRequest;-><init>(Lcom/google/android/apps/pos/network/PosClient;[Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;Lcom/google/android/apps/pos/network/PosClient$1;)V

    return-object v2
.end method

.method public createBatchInsertRequest(Ljava/util/Map;)Lcom/google/android/apps/pos/network/PosClient$BatchInsertRequest;
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/apps/pos/network/PosClient$BatchInsertRequest",
            "<",
            "Lcom/google/android/apps/pos/model/Plusones;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1089
    .local p1, ids:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    new-array v4, v5, [Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;

    .line 1091
    .local v4, insertRequests:[Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;
    const/4 v3, 0x0

    .line 1092
    .local v3, index:I
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1093
    .local v2, id:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v6, v5}, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;-><init>(Ljava/lang/String;)V

    aput-object v6, v4, v3

    .line 1094
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1095
    .local v0, abuseToken:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 1096
    aget-object v5, v4, v3

    invoke-virtual {v5, v0}, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;->setAbuseToken(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;

    .line 1098
    :cond_3c
    add-int/lit8 v3, v3, 0x1

    .line 1099
    goto :goto_12

    .line 1100
    .end local v0           #abuseToken:Ljava/lang/String;
    .end local v2           #id:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3f
    new-instance v5, Lcom/google/android/apps/pos/network/PosClient$BatchInsertRequest;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v4, v6}, Lcom/google/android/apps/pos/network/PosClient$BatchInsertRequest;-><init>(Lcom/google/android/apps/pos/network/PosClient;[Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;Lcom/google/android/apps/pos/network/PosClient$1;)V

    return-object v5
.end method

.method public createGetSignUpStateRequest()Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequest",
            "<",
            "Lcom/google/android/apps/pos/model/SignUpState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 686
    new-instance v0, Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequest;-><init>(Lcom/google/android/apps/pos/network/PosClient;Lcom/google/android/apps/pos/network/PosClient$1;)V

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .registers 2
    .parameter "accessToken"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/google/android/apps/pos/network/PosClient;->accessToken:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setApiKey(Ljava/lang/String;)V
    .registers 2
    .parameter "apiKey"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/android/apps/pos/network/PosClient;->apiKey:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setContainer(Ljava/lang/String;)V
    .registers 2
    .parameter "container"

    .prologue
    .line 229
    iput-object p1, p0, Lcom/google/android/apps/pos/network/PosClient;->globalContainer:Ljava/lang/String;

    .line 230
    return-void
.end method
