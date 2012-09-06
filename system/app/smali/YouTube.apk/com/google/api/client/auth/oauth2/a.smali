.class public Lcom/google/api/client/auth/oauth2/a;
.super Lcom/google/api/client/json/b;
.source "SourceFile"


# instance fields
.field private error:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
    .end annotation
.end field

.field private errorDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
        a = "error_description"
    .end annotation
.end field

.field private errorUri:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
        a = "error_uri"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/api/client/json/b;-><init>()V

    return-void
.end method
