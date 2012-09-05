.class public Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;
.super Ljava/lang/Object;
.source "AccessProtectedResource.java"

# interfaces
.implements Lcom/google/api/client/http/HttpExecuteInterceptor;
.implements Lcom/google/api/client/http/HttpRequestInitializer;
.implements Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$1;,
        Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;
    }
.end annotation


# static fields
.field private static final ALLOWED_METHODS:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/google/api/client/http/HttpMethod;",
            ">;"
        }
    .end annotation
.end field

.field static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private accessToken:Ljava/lang/String;

.field private final authorizationServerUrl:Ljava/lang/String;

.field private final clientId:Ljava/lang/String;

.field private final clientSecret:Ljava/lang/String;

.field private final jsonFactory:Lcom/google/api/client/json/JsonFactory;

.field private final method:Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

.field private final refreshToken:Ljava/lang/String;

.field private final tokenLock:Ljava/util/concurrent/locks/Lock;

.field private final transport:Lcom/google/api/client/http/HttpTransport;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 83
    const-class v0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->LOGGER:Ljava/util/logging/Logger;

    .line 112
    sget-object v0, Lcom/google/api/client/http/HttpMethod;->POST:Lcom/google/api/client/http/HttpMethod;

    sget-object v1, Lcom/google/api/client/http/HttpMethod;->PUT:Lcom/google/api/client/http/HttpMethod;

    sget-object v2, Lcom/google/api/client/http/HttpMethod;->DELETE:Lcom/google/api/client/http/HttpMethod;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->ALLOWED_METHODS:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;)V
    .registers 5
    .parameter "accessToken"
    .parameter "method"

    .prologue
    const/4 v1, 0x0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->tokenLock:Ljava/util/concurrent/locks/Lock;

    .line 148
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->accessToken:Ljava/lang/String;

    .line 149
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->method:Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    .line 150
    iput-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 151
    iput-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 152
    iput-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->authorizationServerUrl:Ljava/lang/String;

    .line 153
    iput-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->clientId:Ljava/lang/String;

    .line 154
    iput-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->clientSecret:Ljava/lang/String;

    .line 155
    iput-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->refreshToken:Ljava/lang/String;

    .line 156
    return-void
.end method

.method private getAccessTokenFromRequest(Lcom/google/api/client/http/HttpRequest;)Ljava/lang/String;
    .registers 10
    .parameter "request"

    .prologue
    const/4 v5, 0x0

    .line 316
    sget-object v6, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$1;->$SwitchMap$com$google$api$client$auth$oauth2$draft10$AccessProtectedResource$Method:[I

    iget-object v7, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->method:Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    invoke-virtual {v7}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_4c

    .line 328
    iget-object v1, p1, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    check-cast v1, Lcom/google/api/client/http/UrlEncodedContent;

    .line 330
    .local v1, content:Lcom/google/api/client/http/UrlEncodedContent;
    iget-object v2, v1, Lcom/google/api/client/http/UrlEncodedContent;->data:Ljava/lang/Object;

    check-cast v2, Lcom/google/api/client/util/GenericData;

    .line 331
    .local v2, data:Lcom/google/api/client/util/GenericData;
    const-string v6, "oauth_token"

    invoke-virtual {v2, v6}, Lcom/google/api/client/util/GenericData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 332
    .local v0, bodyParam:Ljava/lang/Object;
    if-nez v0, :cond_47

    .end local v0           #bodyParam:Ljava/lang/Object;
    .end local v1           #content:Lcom/google/api/client/http/UrlEncodedContent;
    .end local v2           #data:Lcom/google/api/client/util/GenericData;
    :cond_1e
    :goto_1e
    return-object v5

    .line 318
    :pswitch_1f
    iget-object v6, p1, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    iget-object v3, v6, Lcom/google/api/client/http/HttpHeaders;->authorization:Ljava/lang/String;

    .line 319
    .local v3, header:Ljava/lang/String;
    if-eqz v3, :cond_1e

    const-string v6, "OAuth "

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 320
    const-string v5, "OAuth "

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1e

    .line 324
    .end local v3           #header:Ljava/lang/String;
    :pswitch_38
    iget-object v6, p1, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    const-string v7, "oauth_token"

    invoke-virtual {v6, v7}, Lcom/google/api/client/http/GenericUrl;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 325
    .local v4, param:Ljava/lang/Object;
    if-eqz v4, :cond_1e

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1e

    .line 332
    .end local v4           #param:Ljava/lang/Object;
    .restart local v0       #bodyParam:Ljava/lang/Object;
    .restart local v1       #content:Lcom/google/api/client/http/UrlEncodedContent;
    .restart local v2       #data:Lcom/google/api/client/util/GenericData;
    :cond_47
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1e

    .line 316
    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_38
    .end packed-switch
.end method


# virtual methods
.method protected executeRefreshToken()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->refreshToken:Ljava/lang/String;

    if-eqz v1, :cond_20

    .line 382
    new-instance v0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$RefreshTokenGrant;

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->transport:Lcom/google/api/client/http/HttpTransport;

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    iget-object v3, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->authorizationServerUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->clientId:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->clientSecret:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->refreshToken:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$RefreshTokenGrant;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    .local v0, request:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$RefreshTokenGrant;
    invoke-virtual {v0}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$RefreshTokenGrant;->execute()Lcom/google/api/client/auth/oauth2/draft10/AccessTokenResponse;

    move-result-object v1

    iget-object v1, v1, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenResponse;->accessToken:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->setAccessToken(Ljava/lang/String;)V

    .line 389
    const/4 v1, 0x1

    .line 391
    .end local v0           #request:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$RefreshTokenGrant;
    :goto_1f
    return v1

    :cond_20
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method public final getAccessToken()Ljava/lang/String;
    .registers 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 193
    :try_start_5
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->accessToken:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_d

    .line 195
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_d
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getClientId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientSecret()Ljava/lang/String;
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->clientSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonFactory()Lcom/google/api/client/json/JsonFactory;
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTransport()Lcom/google/api/client/http/HttpTransport;
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->transport:Lcom/google/api/client/http/HttpTransport;

    return-object v0
.end method

.method public handleResponse(Lcom/google/api/client/http/HttpRequest;Lcom/google/api/client/http/HttpResponse;Z)Z
    .registers 9
    .parameter "request"
    .parameter "response"
    .parameter "retrySupported"

    .prologue
    const/4 v3, 0x0

    .line 346
    iget v2, p2, Lcom/google/api/client/http/HttpResponse;->statusCode:I

    const/16 v4, 0x191

    if-ne v2, v4, :cond_3a

    .line 349
    :try_start_7
    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_c
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_7 .. :try_end_c} :catch_2e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_3c

    .line 352
    :try_start_c
    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->accessToken:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->getAccessTokenFromRequest(Lcom/google/api/client/http/HttpRequest;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->refreshToken()Z
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_27

    move-result v2

    if-eqz v2, :cond_25

    :cond_1e
    const/4 v2, 0x1

    .line 354
    :goto_1f
    :try_start_1f
    iget-object v4, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 363
    :goto_24
    return v2

    :cond_25
    move v2, v3

    .line 352
    goto :goto_1f

    .line 354
    :catchall_27
    move-exception v2

    iget-object v4, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
    :try_end_2e
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_1f .. :try_end_2e} :catch_2e
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_2e} :catch_3c

    .line 356
    :catch_2e
    move-exception v0

    .line 357
    .local v0, e:Lcom/google/api/client/http/HttpResponseException;
    :try_start_2f
    sget-object v2, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->LOGGER:Ljava/util/logging/Logger;

    iget-object v4, v0, Lcom/google/api/client/http/HttpResponseException;->response:Lcom/google/api/client/http/HttpResponse;

    invoke-virtual {v4}, Lcom/google/api/client/http/HttpResponse;->parseAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_3a} :catch_3c

    .end local v0           #e:Lcom/google/api/client/http/HttpResponseException;
    :cond_3a
    :goto_3a
    move v2, v3

    .line 363
    goto :goto_24

    .line 359
    :catch_3c
    move-exception v1

    .line 360
    .local v1, exception:Ljava/io/IOException;
    sget-object v2, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_3a
.end method

.method public final initialize(Lcom/google/api/client/http/HttpRequest;)V
    .registers 2
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    iput-object p0, p1, Lcom/google/api/client/http/HttpRequest;->interceptor:Lcom/google/api/client/http/HttpExecuteInterceptor;

    .line 273
    iput-object p0, p1, Lcom/google/api/client/http/HttpRequest;->unsuccessfulResponseHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    .line 274
    return-void
.end method

.method public intercept(Lcom/google/api/client/http/HttpRequest;)V
    .registers 10
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, accessToken:Ljava/lang/String;
    if-nez v0, :cond_7

    .line 313
    :goto_6
    return-void

    .line 288
    :cond_7
    sget-object v3, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$1;->$SwitchMap$com$google$api$client$auth$oauth2$draft10$AccessProtectedResource$Method:[I

    iget-object v4, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->method:Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    invoke-virtual {v4}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_6a

    goto :goto_6

    .line 290
    :pswitch_15
    iget-object v3, p1, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OAuth "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/api/client/http/HttpHeaders;->authorization:Ljava/lang/String;

    goto :goto_6

    .line 293
    :pswitch_2d
    iget-object v3, p1, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    const-string v4, "oauth_token"

    invoke-virtual {v3, v4, v0}, Lcom/google/api/client/http/GenericUrl;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 296
    :pswitch_35
    sget-object v3, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->ALLOWED_METHODS:Ljava/util/EnumSet;

    iget-object v4, p1, Lcom/google/api/client/http/HttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "expected one of these HTTP methods: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->ALLOWED_METHODS:Ljava/util/EnumSet;

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 299
    iget-object v1, p1, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    check-cast v1, Lcom/google/api/client/http/UrlEncodedContent;

    .line 300
    .local v1, content:Lcom/google/api/client/http/UrlEncodedContent;
    if-nez v1, :cond_57

    .line 301
    new-instance v1, Lcom/google/api/client/http/UrlEncodedContent;

    .end local v1           #content:Lcom/google/api/client/http/UrlEncodedContent;
    invoke-direct {v1}, Lcom/google/api/client/http/UrlEncodedContent;-><init>()V

    .line 302
    .restart local v1       #content:Lcom/google/api/client/http/UrlEncodedContent;
    iput-object v1, p1, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    .line 305
    :cond_57
    iget-object v2, v1, Lcom/google/api/client/http/UrlEncodedContent;->data:Ljava/lang/Object;

    check-cast v2, Lcom/google/api/client/util/GenericData;

    .line 306
    .local v2, data:Lcom/google/api/client/util/GenericData;
    if-nez v2, :cond_64

    .line 307
    new-instance v2, Lcom/google/api/client/util/GenericData;

    .end local v2           #data:Lcom/google/api/client/util/GenericData;
    invoke-direct {v2}, Lcom/google/api/client/util/GenericData;-><init>()V

    .line 308
    .restart local v2       #data:Lcom/google/api/client/util/GenericData;
    iput-object v2, v1, Lcom/google/api/client/http/UrlEncodedContent;->data:Ljava/lang/Object;

    .line 310
    :cond_64
    const-string v3, "oauth_token"

    invoke-virtual {v2, v3, v0}, Lcom/google/api/client/util/GenericData;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 288
    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_2d
        :pswitch_35
    .end packed-switch
.end method

.method protected onAccessToken(Ljava/lang/String;)V
    .registers 2
    .parameter "accessToken"

    .prologue
    .line 407
    return-void
.end method

.method public final refreshToken()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 265
    :try_start_5
    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->executeRefreshToken()Z
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_f

    move-result v0

    .line 267
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_f
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final setAccessToken(Ljava/lang/String;)V
    .registers 4
    .parameter "accessToken"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 207
    :try_start_5
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->accessToken:Ljava/lang/String;

    .line 208
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->onAccessToken(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_10

    .line 210
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 212
    return-void

    .line 210
    :catchall_10
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
