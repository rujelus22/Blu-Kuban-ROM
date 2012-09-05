.class public Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAuthorizationRequestUrl;
.super Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl;
.source "GoogleAuthorizationRequestUrl.java"


# instance fields
.field private accessType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "access_type"
    .end annotation
.end field

.field private approvalPrompt:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "approval_prompt"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 65
    const-string v0, "https://accounts.google.com/o/oauth2/auth"

    invoke-direct {p0, v0}, Lcom/google/api/client/auth/oauth2/draft10/AuthorizationRequestUrl;-><init>(Ljava/lang/String;)V

    .line 66
    return-void
.end method
