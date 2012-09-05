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
    .line 84
    const-class v0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->LOGGER:Ljava/util/logging/Logger;

    .line 113
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

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->tokenLock:Ljava/util/concurrent/locks/Lock;

    .line 153
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->accessToken:Ljava/lang/String;

    .line 154
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->method:Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    .line 155
    iput-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 156
    iput-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 157
    iput-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->authorizationServerUrl:Ljava/lang/String;

    .line 158
    iput-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->clientId:Ljava/lang/String;

    .line 159
    iput-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->clientSecret:Ljava/lang/String;

    .line 160
    iput-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->refreshToken:Ljava/lang/String;

    .line 161
    return-void
.end method

.method private getAccessTokenFromRequest(Lcom/google/api/client/http/HttpRequest;)Ljava/lang/String;
    .registers 10
    .parameter "request"

    .prologue
    const/4 v5, 0x0

    .line 322
    sget-object v6, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$1;->$SwitchMap$com$google$api$client$auth$oauth2$draft10$AccessProtectedResource$Method:[I

    iget-object v7, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->method:Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    invoke-virtual {v7}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_56

    .line 334
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getContent()Lcom/google/api/client/http/HttpContent;

    move-result-object v1

    check-cast v1, Lcom/google/api/client/http/UrlEncodedContent;

    .line 336
    .local v1, content:Lcom/google/api/client/http/UrlEncodedContent;
    invoke-virtual {v1}, Lcom/google/api/client/http/UrlEncodedContent;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/client/util/GenericData;

    .line 337
    .local v2, data:Lcom/google/api/client/util/GenericData;
    const-string v6, "oauth_token"

    invoke-virtual {v2, v6}, Lcom/google/api/client/util/GenericData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 338
    .local v0, bodyParam:Ljava/lang/Object;
    if-nez v0, :cond_51

    .end local v0           #bodyParam:Ljava/lang/Object;
    .end local v1           #content:Lcom/google/api/client/http/UrlEncodedContent;
    .end local v2           #data:Lcom/google/api/client/util/GenericData;
    :cond_22
    :goto_22
    return-object v5

    .line 324
    :pswitch_23
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/api/client/http/HttpHeaders;->getAuthorization()Ljava/lang/String;

    move-result-object v3

    .line 325
    .local v3, header:Ljava/lang/String;
    if-eqz v3, :cond_22

    const-string v6, "OAuth "

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 326
    const-string v5, "OAuth "

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_22

    .line 330
    .end local v3           #header:Ljava/lang/String;
    :pswitch_40
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getUrl()Lcom/google/api/client/http/GenericUrl;

    move-result-object v6

    const-string v7, "oauth_token"

    invoke-virtual {v6, v7}, Lcom/google/api/client/http/GenericUrl;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 331
    .local v4, param:Ljava/lang/Object;
    if-eqz v4, :cond_22

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_22

    .line 338
    .end local v4           #param:Ljava/lang/Object;
    .restart local v0       #bodyParam:Ljava/lang/Object;
    .restart local v1       #content:Lcom/google/api/client/http/UrlEncodedContent;
    .restart local v2       #data:Lcom/google/api/client/util/GenericData;
    :cond_51
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_22

    .line 322
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_23
        :pswitch_40
    .end packed-switch
.end method


# virtual methods
.method protected final executeAccessTokenRequest(Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;)Z
    .registers 5
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 417
    :try_start_0
    invoke-virtual {p1}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->execute()Lcom/google/api/client/auth/oauth2/draft10/AccessTokenResponse;

    move-result-object v2

    iget-object v1, v2, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenResponse;->accessToken:Ljava/lang/String;
    :try_end_6
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_0 .. :try_end_6} :catch_d

    .line 425
    .local v1, newAccessToken:Ljava/lang/String;
    :goto_6
    invoke-virtual {p0, v1}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->setAccessToken(Ljava/lang/String;)V

    .line 426
    if-eqz v1, :cond_17

    const/4 v2, 0x1

    :goto_c
    return v2

    .line 418
    .end local v1           #newAccessToken:Ljava/lang/String;
    :catch_d
    move-exception v0

    .line 421
    .local v0, e:Lcom/google/api/client/http/HttpResponseException;
    const/4 v1, 0x0

    .line 423
    .restart local v1       #newAccessToken:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponseException;->getResponse()Lcom/google/api/client/http/HttpResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/http/HttpResponse;->ignore()V

    goto :goto_6

    .line 426
    .end local v0           #e:Lcom/google/api/client/http/HttpResponseException;
    :cond_17
    const/4 v2, 0x0

    goto :goto_c
.end method

.method protected executeRefreshToken()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 391
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->refreshToken:Ljava/lang/String;

    if-eqz v1, :cond_1a

    .line 392
    new-instance v0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$RefreshTokenGrant;

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->transport:Lcom/google/api/client/http/HttpTransport;

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    iget-object v3, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->authorizationServerUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->clientId:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->clientSecret:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->refreshToken:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$RefreshTokenGrant;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    .local v0, request:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$RefreshTokenGrant;
    invoke-virtual {p0, v0}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->executeAccessTokenRequest(Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;)Z

    move-result v1

    .line 400
    .end local v0           #request:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$RefreshTokenGrant;
    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method public final getAccessToken()Ljava/lang/String;
    .registers 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 199
    :try_start_5
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->accessToken:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_d

    .line 201
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_d
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public handleResponse(Lcom/google/api/client/http/HttpRequest;Lcom/google/api/client/http/HttpResponse;Z)Z
    .registers 9
    .parameter "request"
    .parameter "response"
    .parameter "retrySupported"

    .prologue
    const/4 v3, 0x0

    .line 352
    invoke-virtual {p2}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v2

    const/16 v4, 0x191

    if-ne v2, v4, :cond_3e

    .line 355
    :try_start_9
    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_e
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_9 .. :try_end_e} :catch_30
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_40

    .line 358
    :try_start_e
    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->accessToken:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->getAccessTokenFromRequest(Lcom/google/api/client/http/HttpRequest;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->refreshToken()Z
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_29

    move-result v2

    if-eqz v2, :cond_27

    :cond_20
    const/4 v2, 0x1

    .line 361
    :goto_21
    :try_start_21
    iget-object v4, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 370
    :goto_26
    return v2

    :cond_27
    move v2, v3

    .line 358
    goto :goto_21

    .line 361
    :catchall_29
    move-exception v2

    iget-object v4, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
    :try_end_30
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_21 .. :try_end_30} :catch_30
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_30} :catch_40

    .line 363
    :catch_30
    move-exception v0

    .line 364
    .local v0, e:Lcom/google/api/client/http/HttpResponseException;
    :try_start_31
    sget-object v2, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponseException;->getResponse()Lcom/google/api/client/http/HttpResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/api/client/http/HttpResponse;->parseAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_3e} :catch_40

    .end local v0           #e:Lcom/google/api/client/http/HttpResponseException;
    :cond_3e
    :goto_3e
    move v2, v3

    .line 370
    goto :goto_26

    .line 366
    :catch_40
    move-exception v1

    .line 367
    .local v1, exception:Ljava/io/IOException;
    sget-object v2, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_3e
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
    .line 278
    invoke-virtual {p1, p0}, Lcom/google/api/client/http/HttpRequest;->setInterceptor(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/http/HttpRequest;

    .line 279
    invoke-virtual {p1, p0}, Lcom/google/api/client/http/HttpRequest;->setUnsuccessfulResponseHandler(Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;)Lcom/google/api/client/http/HttpRequest;

    .line 280
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
    .line 290
    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, accessToken:Ljava/lang/String;
    if-nez v0, :cond_7

    .line 319
    :goto_6
    return-void

    .line 294
    :cond_7
    sget-object v3, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$1;->$SwitchMap$com$google$api$client$auth$oauth2$draft10$AccessProtectedResource$Method:[I

    iget-object v4, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->method:Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    invoke-virtual {v4}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_78

    goto :goto_6

    .line 296
    :pswitch_15
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OAuth "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/api/client/http/HttpHeaders;->setAuthorization(Ljava/lang/String;)V

    goto :goto_6

    .line 299
    :pswitch_30
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getUrl()Lcom/google/api/client/http/GenericUrl;

    move-result-object v3

    const-string v4, "oauth_token"

    invoke-virtual {v3, v4, v0}, Lcom/google/api/client/http/GenericUrl;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 302
    :pswitch_3a
    sget-object v3, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->ALLOWED_METHODS:Ljava/util/EnumSet;

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getMethod()Lcom/google/api/client/http/HttpMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "expected one of these HTTP methods: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->ALLOWED_METHODS:Ljava/util/EnumSet;

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 305
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getContent()Lcom/google/api/client/http/HttpContent;

    move-result-object v1

    check-cast v1, Lcom/google/api/client/http/UrlEncodedContent;

    .line 306
    .local v1, content:Lcom/google/api/client/http/UrlEncodedContent;
    if-nez v1, :cond_62

    .line 307
    new-instance v1, Lcom/google/api/client/http/UrlEncodedContent;

    .end local v1           #content:Lcom/google/api/client/http/UrlEncodedContent;
    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/google/api/client/http/UrlEncodedContent;-><init>(Ljava/lang/Object;)V

    .line 308
    .restart local v1       #content:Lcom/google/api/client/http/UrlEncodedContent;
    invoke-virtual {p1, v1}, Lcom/google/api/client/http/HttpRequest;->setContent(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    .line 311
    :cond_62
    invoke-virtual {v1}, Lcom/google/api/client/http/UrlEncodedContent;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/client/util/GenericData;

    .line 312
    .local v2, data:Lcom/google/api/client/util/GenericData;
    if-nez v2, :cond_72

    .line 313
    new-instance v2, Lcom/google/api/client/util/GenericData;

    .end local v2           #data:Lcom/google/api/client/util/GenericData;
    invoke-direct {v2}, Lcom/google/api/client/util/GenericData;-><init>()V

    .line 314
    .restart local v2       #data:Lcom/google/api/client/util/GenericData;
    invoke-virtual {v1, v2}, Lcom/google/api/client/http/UrlEncodedContent;->setData(Ljava/lang/Object;)Lcom/google/api/client/http/UrlEncodedContent;

    .line 316
    :cond_72
    const-string v3, "oauth_token"

    invoke-virtual {v2, v3, v0}, Lcom/google/api/client/util/GenericData;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 294
    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_15
        :pswitch_30
        :pswitch_3a
    .end packed-switch
.end method

.method protected onAccessToken(Ljava/lang/String;)V
    .registers 2
    .parameter "accessToken"

    .prologue
    .line 442
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
    .line 269
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 271
    :try_start_5
    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->executeRefreshToken()Z
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_f

    move-result v0

    .line 273
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
    .line 211
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 213
    :try_start_5
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->accessToken:Ljava/lang/String;

    .line 214
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->onAccessToken(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_10

    .line 216
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 218
    return-void

    .line 216
    :catchall_10
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
