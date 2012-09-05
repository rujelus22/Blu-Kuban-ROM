.class public final Lcom/google/api/client/googleapis/auth/oauth/GoogleOAuthAuthorizeTemporaryTokenUrl;
.super Lcom/google/api/client/auth/oauth/OAuthAuthorizeTemporaryTokenUrl;
.source "GoogleOAuthAuthorizeTemporaryTokenUrl.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 66
    const-string v0, "https://www.google.com/accounts/OAuthAuthorizeToken"

    invoke-direct {p0, v0}, Lcom/google/api/client/auth/oauth/OAuthAuthorizeTemporaryTokenUrl;-><init>(Ljava/lang/String;)V

    .line 67
    return-void
.end method
