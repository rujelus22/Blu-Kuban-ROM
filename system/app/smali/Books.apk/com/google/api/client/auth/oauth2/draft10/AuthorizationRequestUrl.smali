.class public Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl;
.super Lcom/google/api/client/http/GenericUrl;
.source "AuthorizationRequestUrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl$ResponseType;
    }
.end annotation


# instance fields
.field public responseType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "response_type"
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
