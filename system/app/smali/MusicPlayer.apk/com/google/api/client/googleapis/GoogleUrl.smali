.class public Lcom/google/api/client/googleapis/GoogleUrl;
.super Lcom/google/api/client/http/GenericUrl;
.source "GoogleUrl.java"


# instance fields
.field public alt:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/api/client/http/GenericUrl;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "encodedUrl"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method
