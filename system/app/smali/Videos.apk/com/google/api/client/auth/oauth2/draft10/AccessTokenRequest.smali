.class public Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;
.super Lcom/google/api/client/util/GenericData;
.source "AccessTokenRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;,
        Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$RefreshTokenGrant;
    }
.end annotation


# instance fields
.field public authorizationServerUrl:Ljava/lang/String;

.field public clientId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "client_id"
    .end annotation
.end field

.field public clientSecret:Ljava/lang/String;

.field public grantType:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "grant_type"
    .end annotation
.end field

.field public jsonFactory:Lcom/google/api/client/json/JsonFactory;

.field public transport:Lcom/google/api/client/http/HttpTransport;

.field public useBasicAuthorization:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/google/api/client/util/GenericData;-><init>()V

    .line 391
    sget-object v0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;->NONE:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->grantType:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;

    .line 335
    return-void
.end method

.method protected constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "transport"
    .parameter "jsonFactory"
    .parameter "authorizationServerUrl"
    .parameter "clientSecret"

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;-><init>()V

    .line 346
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpTransport;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 347
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/JsonFactory;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 348
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->authorizationServerUrl:Ljava/lang/String;

    .line 349
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->clientSecret:Ljava/lang/String;

    .line 350
    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "transport"
    .parameter "jsonFactory"
    .parameter "authorizationServerUrl"
    .parameter "clientId"
    .parameter "clientSecret"

    .prologue
    .line 361
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->clientId:Ljava/lang/String;

    .line 363
    return-void
.end method


# virtual methods
.method public final execute()Lcom/google/api/client/auth/oauth2/draft10/AccessTokenResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->executeUnparsed()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    const-class v1, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenResponse;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpResponse;->parseAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenResponse;

    return-object v0
.end method

.method public final executeUnparsed()Lcom/google/api/client/http/HttpResponse;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 445
    new-instance v1, Lcom/google/api/client/http/json/JsonHttpParser;

    invoke-direct {v1}, Lcom/google/api/client/http/json/JsonHttpParser;-><init>()V

    .line 446
    .local v1, parser:Lcom/google/api/client/http/json/JsonHttpParser;
    iget-object v3, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    iput-object v3, v1, Lcom/google/api/client/http/json/JsonHttpParser;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 447
    new-instance v0, Lcom/google/api/client/http/UrlEncodedContent;

    invoke-direct {v0}, Lcom/google/api/client/http/UrlEncodedContent;-><init>()V

    .line 448
    .local v0, content:Lcom/google/api/client/http/UrlEncodedContent;
    iput-object p0, v0, Lcom/google/api/client/http/UrlEncodedContent;->data:Ljava/lang/Object;

    .line 449
    iget-object v3, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    invoke-virtual {v3}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v3

    new-instance v4, Lcom/google/api/client/http/GenericUrl;

    iget-object v5, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->authorizationServerUrl:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v0}, Lcom/google/api/client/http/HttpRequestFactory;->buildPostRequest(Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v2

    .line 451
    .local v2, request:Lcom/google/api/client/http/HttpRequest;
    invoke-virtual {v2, v1}, Lcom/google/api/client/http/HttpRequest;->addParser(Lcom/google/api/client/http/HttpParser;)V

    .line 452
    iget-boolean v3, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->useBasicAuthorization:Z

    if-eqz v3, :cond_36

    .line 453
    iget-object v3, v2, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    iget-object v4, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->clientId:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->clientSecret:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/google/api/client/http/HttpHeaders;->setBasicAuthentication(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    :goto_31
    invoke-virtual {v2}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v3

    return-object v3

    .line 455
    :cond_36
    const-string v3, "client_secret"

    iget-object v4, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->clientSecret:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31
.end method
