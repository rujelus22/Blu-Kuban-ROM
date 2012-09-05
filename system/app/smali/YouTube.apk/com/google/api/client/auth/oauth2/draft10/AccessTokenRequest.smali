.class public Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;
.super Lcom/google/api/client/util/p;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/api/client/http/p;

.field public b:Lcom/google/api/client/json/c;

.field public c:Ljava/lang/String;

.field public clientId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "client_id"
    .end annotation
.end field

.field public d:Ljava/lang/String;

.field public e:Z

.field public grantType:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "grant_type"
    .end annotation
.end field

.field public scope:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/google/api/client/util/p;-><init>()V

    .line 397
    sget-object v0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;->NONE:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->grantType:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;

    .line 330
    return-void
.end method

.method private constructor <init>(Lcom/google/api/client/http/p;Lcom/google/api/client/json/c;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;-><init>()V

    .line 340
    invoke-static {p1}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/p;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->a:Lcom/google/api/client/http/p;

    .line 341
    invoke-static {p2}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/c;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->b:Lcom/google/api/client/json/c;

    .line 342
    invoke-static {p3}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->d:Ljava/lang/String;

    .line 343
    return-void
.end method

.method private constructor <init>(Lcom/google/api/client/http/p;Lcom/google/api/client/json/c;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 354
    invoke-direct {p0, p1, p2, p3}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;-><init>(Lcom/google/api/client/http/p;Lcom/google/api/client/json/c;Ljava/lang/String;)V

    .line 355
    invoke-static {p4}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->c:Ljava/lang/String;

    .line 356
    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/p;Lcom/google/api/client/json/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 367
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;-><init>(Lcom/google/api/client/http/p;Lcom/google/api/client/json/c;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-static {p4}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->clientId:Ljava/lang/String;

    .line 369
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/api/client/auth/oauth2/draft10/c;
    .registers 6

    .prologue
    .line 475
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->a:Lcom/google/api/client/http/p;

    invoke-virtual {v0}, Lcom/google/api/client/http/p;->a()Lcom/google/api/client/http/m;

    move-result-object v0

    new-instance v1, Lcom/google/api/client/http/f;

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/api/client/http/f;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/api/client/http/u;

    invoke-direct {v2, p0}, Lcom/google/api/client/http/u;-><init>(Ljava/lang/Object;)V

    sget-object v3, Lcom/google/api/client/http/HttpMethod;->POST:Lcom/google/api/client/http/HttpMethod;

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/api/client/http/m;->a(Lcom/google/api/client/http/HttpMethod;Lcom/google/api/client/http/f;Lcom/google/api/client/http/g;)Lcom/google/api/client/http/k;

    move-result-object v0

    new-instance v1, Lcom/google/api/client/http/c/b;

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->b:Lcom/google/api/client/json/c;

    invoke-direct {v1, v2}, Lcom/google/api/client/http/c/b;-><init>(Lcom/google/api/client/json/c;)V

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/k;->a(Lcom/google/api/client/http/j;)V

    iget-boolean v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->e:Z

    if-eqz v1, :cond_9b

    iget-object v1, v0, Lcom/google/api/client/http/k;->b:Lcom/google/api/client/http/i;

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->clientId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/api/client/util/u;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/api/client/util/g;->a([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/api/client/util/u;->a([B)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Basic "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/api/client/http/i;->authorization:Ljava/lang/String;

    :goto_64
    invoke-virtual {v0}, Lcom/google/api/client/http/k;->a()Lcom/google/api/client/http/o;

    move-result-object v0

    const-class v1, Lcom/google/api/client/auth/oauth2/draft10/c;

    iget-object v2, v0, Lcom/google/api/client/http/o;->h:Lcom/google/api/client/http/k;

    iget-object v3, v0, Lcom/google/api/client/http/o;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/api/client/http/k;->a(Ljava/lang/String;)Lcom/google/api/client/http/j;

    move-result-object v2

    if-nez v2, :cond_c2

    invoke-virtual {v0}, Lcom/google/api/client/http/o;->a()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, v0, Lcom/google/api/client/http/o;->b:Ljava/lang/String;

    if-nez v2, :cond_a7

    if-eqz v1, :cond_a3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing Content-Type header in response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/api/client/http/o;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9b
    const-string v1, "client_secret"

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->c:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_64

    :cond_a3
    const/4 v0, 0x0

    :goto_a4
    check-cast v0, Lcom/google/api/client/auth/oauth2/draft10/c;

    return-object v0

    :cond_a7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No parser defined for Content-Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/google/api/client/http/o;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c2
    invoke-interface {v2, v0, v1}, Lcom/google/api/client/http/j;->a(Lcom/google/api/client/http/o;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a4
.end method
