.class public Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessTokenRequest;
.super Ljava/lang/Object;
.source "GoogleAccessTokenRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessTokenRequest$GoogleAssertionGrant;,
        Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessTokenRequest$GoogleRefreshTokenGrant;,
        Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessTokenRequest$GoogleAuthorizationCodeGrant;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    return-void
.end method

.method static init(Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;)V
    .registers 2
    .parameter "request"

    .prologue
    .line 190
    const-string v0, "https://accounts.google.com/o/oauth2/token"

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->authorizationServerUrl:Ljava/lang/String;

    .line 191
    return-void
.end method
