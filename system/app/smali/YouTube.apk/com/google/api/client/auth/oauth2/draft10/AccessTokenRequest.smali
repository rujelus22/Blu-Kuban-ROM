.class public Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;
.super Lcom/google/api/client/util/o;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Lcom/google/api/client/http/r;

.field public b:Lcom/google/api/client/json/c;

.field public c:Ljava/lang/String;

.field public clientId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
        a = "client_id"
    .end annotation
.end field

.field public d:Ljava/lang/String;

.field public e:Z

.field public grantType:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;
    .annotation runtime Lcom/google/api/client/util/r;
        a = "grant_type"
    .end annotation
.end field

.field public scope:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/google/api/client/util/o;-><init>()V

    .line 412
    sget-object v0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;->NONE:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->grantType:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;

    .line 345
    return-void
.end method

.method private constructor <init>(Lcom/google/api/client/http/r;Lcom/google/api/client/json/c;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;-><init>()V

    .line 355
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/r;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->a:Lcom/google/api/client/http/r;

    .line 356
    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/c;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->b:Lcom/google/api/client/json/c;

    .line 357
    invoke-static {p3}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->d:Ljava/lang/String;

    .line 358
    return-void
.end method

.method private constructor <init>(Lcom/google/api/client/http/r;Lcom/google/api/client/json/c;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 369
    invoke-direct {p0, p1, p2, p3}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;-><init>(Lcom/google/api/client/http/r;Lcom/google/api/client/json/c;Ljava/lang/String;)V

    .line 370
    invoke-static {p4}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->c:Ljava/lang/String;

    .line 371
    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/r;Lcom/google/api/client/json/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 382
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;-><init>(Lcom/google/api/client/http/r;Lcom/google/api/client/json/c;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-static {p4}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->clientId:Ljava/lang/String;

    .line 384
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/api/client/auth/oauth2/draft10/c;
    .registers 5

    .prologue
    .line 490
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->a:Lcom/google/api/client/http/r;

    invoke-virtual {v0}, Lcom/google/api/client/http/r;->a()Lcom/google/api/client/http/n;

    move-result-object v0

    new-instance v1, Lcom/google/api/client/http/g;

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/api/client/http/g;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/api/client/http/w;

    invoke-direct {v2, p0}, Lcom/google/api/client/http/w;-><init>(Ljava/lang/Object;)V

    sget-object v3, Lcom/google/api/client/http/HttpMethod;->POST:Lcom/google/api/client/http/HttpMethod;

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/api/client/http/n;->a(Lcom/google/api/client/http/HttpMethod;Lcom/google/api/client/http/g;Lcom/google/api/client/http/h;)Lcom/google/api/client/http/l;

    move-result-object v0

    new-instance v1, Lcom/google/api/client/http/c/b;

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->b:Lcom/google/api/client/json/c;

    invoke-direct {v1, v2}, Lcom/google/api/client/http/c/b;-><init>(Lcom/google/api/client/json/c;)V

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/l;->a(Lcom/google/api/client/http/k;)V

    iget-boolean v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->e:Z

    if-eqz v1, :cond_3e

    invoke-virtual {v0}, Lcom/google/api/client/http/l;->e()Lcom/google/api/client/http/j;

    move-result-object v1

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->clientId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/api/client/http/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_31
    invoke-virtual {v0}, Lcom/google/api/client/http/l;->h()Lcom/google/api/client/http/p;

    move-result-object v0

    const-class v1, Lcom/google/api/client/auth/oauth2/draft10/c;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/draft10/c;

    return-object v0

    :cond_3e
    const-string v1, "client_secret"

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->c:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31
.end method
