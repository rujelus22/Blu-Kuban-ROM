.class public final Lcom/google/api/client/http/b/c;
.super Lcom/google/api/client/http/r;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/api/client/http/r;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;)Lcom/google/api/client/http/u;
    .registers 4
    .parameter

    .prologue
    .line 32
    new-instance v0, Lcom/google/api/client/http/b/a;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, p1}, Lcom/google/api/client/http/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/String;)Lcom/google/api/client/http/u;
    .registers 4
    .parameter

    .prologue
    .line 32
    new-instance v0, Lcom/google/api/client/http/b/a;

    const-string v1, "GET"

    invoke-direct {v0, v1, p1}, Lcom/google/api/client/http/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final synthetic c(Ljava/lang/String;)Lcom/google/api/client/http/u;
    .registers 4
    .parameter

    .prologue
    .line 32
    new-instance v0, Lcom/google/api/client/http/b/a;

    const-string v1, "HEAD"

    invoke-direct {v0, v1, p1}, Lcom/google/api/client/http/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c()Z
    .registers 2

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic e(Ljava/lang/String;)Lcom/google/api/client/http/u;
    .registers 4
    .parameter

    .prologue
    .line 32
    new-instance v0, Lcom/google/api/client/http/b/a;

    const-string v1, "POST"

    invoke-direct {v0, v1, p1}, Lcom/google/api/client/http/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final synthetic f(Ljava/lang/String;)Lcom/google/api/client/http/u;
    .registers 4
    .parameter

    .prologue
    .line 32
    new-instance v0, Lcom/google/api/client/http/b/a;

    const-string v1, "PUT"

    invoke-direct {v0, v1, p1}, Lcom/google/api/client/http/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
