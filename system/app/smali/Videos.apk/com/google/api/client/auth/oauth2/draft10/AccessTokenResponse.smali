.class public Lcom/google/api/client/auth/oauth2/draft10/AccessTokenResponse;
.super Lcom/google/api/client/util/GenericData;
.source "AccessTokenResponse.java"


# instance fields
.field public accessToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "access_token"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/api/client/util/GenericData;-><init>()V

    return-void
.end method
