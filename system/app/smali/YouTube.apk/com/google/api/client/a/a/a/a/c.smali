.class public final Lcom/google/api/client/a/a/a/a/c;
.super Lcom/google/api/client/auth/oauth2/draft10/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/google/api/client/auth/oauth2/draft10/b;-><init>()V

    .line 123
    const-string v0, "https://accounts.google.com/o/oauth2/token"

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->d:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/p;Lcom/google/api/client/json/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    const-string v3, "https://accounts.google.com/o/oauth2/token"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/api/client/auth/oauth2/draft10/b;-><init>(Lcom/google/api/client/http/p;Lcom/google/api/client/json/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v0, "https://accounts.google.com/o/oauth2/token"

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->d:Ljava/lang/String;

    .line 137
    return-void
.end method
