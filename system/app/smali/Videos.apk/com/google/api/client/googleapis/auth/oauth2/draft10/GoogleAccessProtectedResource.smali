.class public Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessProtectedResource;
.super Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;
.source "GoogleAccessProtectedResource.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "accessToken"

    .prologue
    .line 70
    sget-object v0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;->AUTHORIZATION_HEADER:Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    invoke-direct {p0, p1, v0}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;-><init>(Ljava/lang/String;Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;)V

    .line 71
    return-void
.end method


# virtual methods
.method protected executeRefreshToken()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessProtectedResource;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 100
    new-instance v0, Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessTokenRequest$GoogleRefreshTokenGrant;

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessProtectedResource;->getTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessProtectedResource;->getJsonFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessProtectedResource;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessProtectedResource;->getClientSecret()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessProtectedResource;->getRefreshToken()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessTokenRequest$GoogleRefreshTokenGrant;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .local v0, request:Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessTokenRequest$GoogleRefreshTokenGrant;
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessTokenRequest$GoogleRefreshTokenGrant;->execute()Lcom/google/api/client/auth/oauth2/draft10/AccessTokenResponse;

    move-result-object v1

    iget-object v1, v1, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenResponse;->accessToken:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessProtectedResource;->setAccessToken(Ljava/lang/String;)V

    .line 103
    const/4 v1, 0x1

    .line 105
    .end local v0           #request:Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessTokenRequest$GoogleRefreshTokenGrant;
    :goto_29
    return v1

    :cond_2a
    const/4 v1, 0x0

    goto :goto_29
.end method
