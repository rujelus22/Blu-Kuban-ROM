.class public Lcom/google/api/client/auth/oauth/OAuthAuthorizeTemporaryTokenUrl;
.super Lcom/google/api/client/http/GenericUrl;
.source "OAuthAuthorizeTemporaryTokenUrl.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "encodedUserAuthorizationUrl"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method
