.class public final Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse;
.super Lcom/google/api/client/util/p;
.source "SourceFile"


# instance fields
.field public error:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
    .end annotation
.end field

.field public errorDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "error_description"
    .end annotation
.end field

.field public errorUri:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "error_uri"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/api/client/util/p;-><init>()V

    .line 33
    return-void
.end method
