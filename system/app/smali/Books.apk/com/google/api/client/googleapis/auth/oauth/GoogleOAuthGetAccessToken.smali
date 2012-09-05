.class public final Lcom/google/api/client/googleapis/auth/oauth/GoogleOAuthGetAccessToken;
.super Lcom/google/api/client/auth/oauth/OAuthGetAccessToken;
.source "GoogleOAuthGetAccessToken.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    const-string v0, "https://www.google.com/accounts/OAuthGetAccessToken"

    invoke-direct {p0, v0}, Lcom/google/api/client/auth/oauth/OAuthGetAccessToken;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method
