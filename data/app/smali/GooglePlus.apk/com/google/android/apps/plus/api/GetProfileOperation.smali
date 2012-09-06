.class public Lcom/google/android/apps/plus/api/GetProfileOperation;
.super Lcom/google/android/apps/plus/network/PlusiOperation;
.source "GetProfileOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/network/PlusiOperation",
        "<",
        "Lcom/google/api/services/plusi/model/GetSimpleProfileRequest;",
        "Lcom/google/api/services/plusi/model/GetSimpleProfileResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mGaiaId:Ljava/lang/String;

.field private final mInsertInDatabase:Z

.field private mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ZLandroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 15
    .parameter "context"
    .parameter "account"
    .parameter "gaiaId"
    .parameter "insertInDatabase"
    .parameter "intent"
    .parameter "listener"

    .prologue
    .line 43
    const-string v3, "getsimpleprofile"

    invoke-static {}, Lcom/google/api/services/plusi/model/GetSimpleProfileRequestJson;->getInstance()Lcom/google/api/services/plusi/model/GetSimpleProfileRequestJson;

    move-result-object v4

    invoke-static {}, Lcom/google/api/services/plusi/model/GetSimpleProfileResponseJson;->getInstance()Lcom/google/api/services/plusi/model/GetSimpleProfileResponseJson;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/network/PlusiOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/json/EsJson;Lcom/google/android/apps/plus/json/EsJson;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 47
    iput-object p3, p0, Lcom/google/android/apps/plus/api/GetProfileOperation;->mGaiaId:Ljava/lang/String;

    .line 48
    iput-boolean p4, p0, Lcom/google/android/apps/plus/api/GetProfileOperation;->mInsertInDatabase:Z

    .line 49
    return-void
.end method


# virtual methods
.method protected bridge synthetic handleResponse(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    check-cast p1, Lcom/google/api/services/plusi/model/GetSimpleProfileResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/api/GetProfileOperation;->handleResponse(Lcom/google/api/services/plusi/model/GetSimpleProfileResponse;)V

    return-void
.end method

.method protected handleResponse(Lcom/google/api/services/plusi/model/GetSimpleProfileResponse;)V
    .registers 6
    .parameter "response"

    .prologue
    .line 64
    iget-object v0, p1, Lcom/google/api/services/plusi/model/GetSimpleProfileResponse;->profile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iput-object v0, p0, Lcom/google/android/apps/plus/api/GetProfileOperation;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    .line 66
    iget-boolean v0, p0, Lcom/google/android/apps/plus/api/GetProfileOperation;->mInsertInDatabase:Z

    if-eqz v0, :cond_13

    .line 67
    iget-object v0, p0, Lcom/google/android/apps/plus/api/GetProfileOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/GetProfileOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/GetProfileOperation;->mGaiaId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/api/GetProfileOperation;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsPeopleData;->insertProfile(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/api/services/plusi/model/SimpleProfile;)V

    .line 69
    :cond_13
    return-void
.end method

.method protected bridge synthetic populateRequest(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    check-cast p1, Lcom/google/api/services/plusi/model/GetSimpleProfileRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/api/GetProfileOperation;->populateRequest(Lcom/google/api/services/plusi/model/GetSimpleProfileRequest;)V

    return-void
.end method

.method protected populateRequest(Lcom/google/api/services/plusi/model/GetSimpleProfileRequest;)V
    .registers 3
    .parameter "request"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/plus/api/GetProfileOperation;->mGaiaId:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/api/services/plusi/model/GetSimpleProfileRequest;->ownerId:Ljava/lang/String;

    .line 57
    return-void
.end method
