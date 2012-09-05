.class public Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAuthorizationRequestUrl;
.super Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl;
.source "GoogleAuthorizationRequestUrl.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 50
    const-string v0, "https://accounts.google.com/o/oauth2/auth"

    invoke-direct {p0, v0}, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl;-><init>(Ljava/lang/String;)V

    .line 51
    return-void
.end method
