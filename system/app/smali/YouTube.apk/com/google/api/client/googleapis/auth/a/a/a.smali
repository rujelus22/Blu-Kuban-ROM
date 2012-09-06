.class public final Lcom/google/api/client/googleapis/auth/a/a/a;
.super Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 73
    sget-object v0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;->AUTHORIZATION_HEADER:Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    invoke-direct {p0, p1, v0}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;-><init>(Ljava/lang/String;Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;)V

    .line 74
    return-void
.end method


# virtual methods
.method protected final f()Z
    .registers 7

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/a/a/a;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 104
    new-instance v0, Lcom/google/api/client/googleapis/auth/a/a/c;

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/a/a/a;->a()Lcom/google/api/client/http/r;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/a/a/a;->b()Lcom/google/api/client/json/c;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/a/a/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/a/a/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/a/a/a;->e()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/api/client/googleapis/auth/a/a/c;-><init>(Lcom/google/api/client/http/r;Lcom/google/api/client/json/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0, v0}, Lcom/google/api/client/googleapis/auth/a/a/a;->a(Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;)Z

    move-result v0

    .line 108
    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method
