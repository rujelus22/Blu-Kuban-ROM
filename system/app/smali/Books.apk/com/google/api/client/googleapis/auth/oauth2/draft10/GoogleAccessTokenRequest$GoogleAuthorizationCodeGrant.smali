.class public Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessTokenRequest$GoogleAuthorizationCodeGrant;
.super Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$AuthorizationCodeGrant;
.source "GoogleAccessTokenRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessTokenRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GoogleAuthorizationCodeGrant"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$AuthorizationCodeGrant;-><init>()V

    .line 67
    invoke-static {p0}, Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessTokenRequest;->init(Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;)V

    .line 68
    return-void
.end method
