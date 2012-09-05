.class public Lcom/google/api/client/auth/oauth/OAuthCallbackUrl;
.super Lcom/google/api/client/http/GenericUrl;
.source "OAuthCallbackUrl.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "encodedUrl"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    .line 42
    return-void
.end method
