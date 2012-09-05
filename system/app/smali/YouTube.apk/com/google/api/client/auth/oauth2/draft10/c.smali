.class public Lcom/google/api/client/auth/oauth2/draft10/c;
.super Lcom/google/api/client/util/p;
.source "SourceFile"


# instance fields
.field public accessToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "access_token"
    .end annotation
.end field

.field public expiresIn:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "expires_in"
    .end annotation
.end field

.field public refreshToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "refresh_token"
    .end annotation
.end field

.field public scope:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/api/client/util/p;-><init>()V

    return-void
.end method
