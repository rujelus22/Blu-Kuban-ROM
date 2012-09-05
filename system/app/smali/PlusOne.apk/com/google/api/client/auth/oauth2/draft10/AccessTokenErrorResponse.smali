.class public Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse;
.super Lcom/google/api/client/util/GenericData;
.source "AccessTokenErrorResponse.java"


# instance fields
.field public error:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field public errorDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "error_description"
    .end annotation
.end field

.field public errorUri:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "error_uri"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/api/client/util/GenericData;-><init>()V

    .line 33
    return-void
.end method
