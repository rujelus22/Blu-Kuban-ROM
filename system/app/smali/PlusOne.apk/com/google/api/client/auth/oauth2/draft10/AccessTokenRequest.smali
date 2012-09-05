.class public Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;
.super Lcom/google/api/client/util/GenericData;
.source "AccessTokenRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;,
        Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$RefreshTokenGrant;,
        Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$AssertionGrant;,
        Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$ResourceOwnerPasswordCredentialsGrant;,
        Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$AuthorizationCodeGrant;
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

.field public scope:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field public transport:Lcom/google/api/client/http/HttpTransport;

.field public useBasicAuthorization:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/google/api/client/util/GenericData;-><init>()V

    .line 397
    sget-object v0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;->NONE:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->grantType:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;

    .line 330
    return-void
.end method

.method protected constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)V
    .registers 5
    .parameter "transport"
    .parameter "jsonFactory"
    .parameter "authorizationServerUrl"

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;-><init>()V

    .line 340
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpTransport;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 341
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/JsonFactory;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 342
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->authorizationServerUrl:Ljava/lang/String;

    .line 343
    return-void
.end method

.method protected constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "transport"
    .parameter "jsonFactory"
    .parameter "authorizationServerUrl"
    .parameter "clientSecret"

    .prologue
    .line 354
    invoke-direct {p0, p1, p2, p3}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)V

    .line 355
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->clientSecret:Ljava/lang/String;

    .line 356
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
    .line 367
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->clientId:Ljava/lang/String;

    .line 369
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
    .line 475
    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->executeUnparsed()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    const-class v1, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenResponse;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpResponse;->parseAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenResponse;

    return-object v0
.end method

.method public final executeUnparsed()Lcom/google/api/client/http/HttpResponse;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 451
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    invoke-virtual {v1}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v1

    new-instance v2, Lcom/google/api/client/http/GenericUrl;

    iget-object v3, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->authorizationServerUrl:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/google/api/client/http/UrlEncodedContent;

    invoke-direct {v3, p0}, Lcom/google/api/client/http/UrlEncodedContent;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/api/client/http/HttpRequestFactory;->buildPostRequest(Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    .line 453
    .local v0, request:Lcom/google/api/client/http/HttpRequest;
    new-instance v1, Lcom/google/api/client/http/json/JsonHttpParser;

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    invoke-direct {v1, v2}, Lcom/google/api/client/http/json/JsonHttpParser;-><init>(Lcom/google/api/client/json/JsonFactory;)V

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpRequest;->addParser(Lcom/google/api/client/http/HttpParser;)V

    .line 454
    iget-boolean v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->useBasicAuthorization:Z

    if-eqz v1, :cond_34

    .line 455
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v1

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->clientId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->clientSecret:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/api/client/http/HttpHeaders;->setBasicAuthentication(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :goto_2f
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    return-object v1

    .line 457
    :cond_34
    const-string v1, "client_secret"

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->clientSecret:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f
.end method
