.class public Lcom/google/api/client/auth/oauth2/TokenResponseException;
.super Lcom/google/api/client/http/HttpResponseException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x37cc5b6d7204050cL


# instance fields
.field private final transient details:Lcom/google/api/client/auth/oauth2/a;


# direct methods
.method private constructor <init>(Lcom/google/api/client/http/p;Lcom/google/api/client/auth/oauth2/a;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1, p3}, Lcom/google/api/client/http/HttpResponseException;-><init>(Lcom/google/api/client/http/p;Ljava/lang/String;)V

    .line 57
    iput-object p2, p0, Lcom/google/api/client/auth/oauth2/TokenResponseException;->details:Lcom/google/api/client/auth/oauth2/a;

    .line 58
    return-void
.end method

.method public static from(Lcom/google/api/client/json/c;Lcom/google/api/client/http/p;)Lcom/google/api/client/auth/oauth2/TokenResponseException;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-static {p0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-virtual {p1}, Lcom/google/api/client/http/p;->a()Ljava/lang/String;

    move-result-object v0

    .line 85
    :try_start_8
    invoke-virtual {p1}, Lcom/google/api/client/http/p;->c()Z

    move-result v2

    if-nez v2, :cond_49

    if-eqz v0, :cond_49

    const-string v2, "application/json"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 87
    new-instance v0, Lcom/google/api/client/http/c/b;

    invoke-direct {v0, p0}, Lcom/google/api/client/http/c/b;-><init>(Lcom/google/api/client/json/c;)V

    const-class v2, Lcom/google/api/client/auth/oauth2/a;

    invoke-virtual {v0, p1, v2}, Lcom/google/api/client/http/c/b;->a(Lcom/google/api/client/http/p;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/a;
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_25} :catch_4e

    .line 88
    :try_start_25
    invoke-virtual {v0}, Lcom/google/api/client/auth/oauth2/a;->toPrettyString()Ljava/lang/String;
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_58

    move-result-object v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 97
    :goto_2c
    invoke-static {p1}, Lcom/google/api/client/http/HttpResponseException;->computeMessageBuffer(Lcom/google/api/client/http/p;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 98
    invoke-static {v0}, Lcom/google/common/base/al;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 99
    sget-object v3, Lcom/google/api/client/util/t;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :cond_3f
    new-instance v0, Lcom/google/api/client/auth/oauth2/TokenResponseException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/google/api/client/auth/oauth2/TokenResponseException;-><init>(Lcom/google/api/client/http/p;Lcom/google/api/client/auth/oauth2/a;Ljava/lang/String;)V

    return-object v0

    .line 90
    :cond_49
    :try_start_49
    invoke-virtual {p1}, Lcom/google/api/client/http/p;->h()Ljava/lang/String;
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4e

    move-result-object v0

    goto :goto_2c

    .line 92
    :catch_4e
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    .line 94
    :goto_51
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2c

    .line 92
    :catch_58
    move-exception v2

    goto :goto_51
.end method


# virtual methods
.method public final getDetails()Lcom/google/api/client/auth/oauth2/a;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/TokenResponseException;->details:Lcom/google/api/client/auth/oauth2/a;

    return-object v0
.end method
