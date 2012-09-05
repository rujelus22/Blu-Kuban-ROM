.class public Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl;
.super Lcom/google/api/client/http/GenericUrl;
.source "AuthorizationRequestUrl.java"


# instance fields
.field public clientId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "client_id"
    .end annotation
.end field

.field public redirectUri:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "redirect_uri"
    .end annotation
.end field

.field public responseType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "response_type"
    .end annotation
.end field

.field public scope:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field public state:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "encodedAuthorizationServerUrl"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    .line 89
    const-string v0, "code"

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl;->responseType:Ljava/lang/String;

    .line 127
    return-void
.end method
