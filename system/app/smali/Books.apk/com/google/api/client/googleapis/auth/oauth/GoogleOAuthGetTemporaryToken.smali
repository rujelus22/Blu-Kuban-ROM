.class public final Lcom/google/api/client/googleapis/auth/oauth/GoogleOAuthGetTemporaryToken;
.super Lcom/google/api/client/auth/oauth/OAuthGetTemporaryToken;
.source "GoogleOAuthGetTemporaryToken.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 60
    const-string v0, "https://www.google.com/accounts/OAuthGetRequestToken"

    invoke-direct {p0, v0}, Lcom/google/api/client/auth/oauth/OAuthGetTemporaryToken;-><init>(Ljava/lang/String;)V

    .line 61
    return-void
.end method
