.class public abstract Lcom/google/api/client/auth/oauth/AbstractOAuthGetToken;
.super Lcom/google/api/client/http/GenericUrl;
.source "AbstractOAuthGetToken.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "authorizationServerUrl"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method
