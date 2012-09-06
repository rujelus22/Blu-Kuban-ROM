.class public Lcom/google/android/apps/plus/api/ModifyCirclePropertiesOperation;
.super Lcom/google/android/apps/plus/network/PlusiOperation;
.source "ModifyCirclePropertiesOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/network/PlusiOperation",
        "<",
        "Lcom/google/api/services/plusi/model/ModifyCirclePropertiesRequest;",
        "Lcom/google/api/services/plusi/model/ModifyCirclePropertiesResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCircleId:Ljava/lang/String;

.field private final mCircleName:Ljava/lang/String;

.field private final mJustFollowing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 16
    .parameter "context"
    .parameter "account"
    .parameter "circleId"
    .parameter "circleName"
    .parameter "justFollowing"
    .parameter "intent"
    .parameter "listener"

    .prologue
    .line 41
    const-string v3, "modifycircleproperties"

    invoke-static {}, Lcom/google/api/services/plusi/model/ModifyCirclePropertiesRequestJson;->getInstance()Lcom/google/api/services/plusi/model/ModifyCirclePropertiesRequestJson;

    move-result-object v4

    invoke-static {}, Lcom/google/api/services/plusi/model/ModifyCirclePropertiesResponseJson;->getInstance()Lcom/google/api/services/plusi/model/ModifyCirclePropertiesResponseJson;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/network/PlusiOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/json/EsJson;Lcom/google/android/apps/plus/json/EsJson;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 48
    iput-object p3, p0, Lcom/google/android/apps/plus/api/ModifyCirclePropertiesOperation;->mCircleId:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/google/android/apps/plus/api/ModifyCirclePropertiesOperation;->mCircleName:Ljava/lang/String;

    .line 50
    iput-boolean p5, p0, Lcom/google/android/apps/plus/api/ModifyCirclePropertiesOperation;->mJustFollowing:Z

    .line 51
    return-void
.end method


# virtual methods
.method protected bridge synthetic handleResponse(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    check-cast p1, Lcom/google/api/services/plusi/model/ModifyCirclePropertiesResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/api/ModifyCirclePropertiesOperation;->handleResponse(Lcom/google/api/services/plusi/model/ModifyCirclePropertiesResponse;)V

    return-void
.end method

.method protected handleResponse(Lcom/google/api/services/plusi/model/ModifyCirclePropertiesResponse;)V
    .registers 7
    .parameter "response"

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/ModifyCirclePropertiesOperation;->onStartResultProcessing()V

    .line 77
    iget-object v0, p0, Lcom/google/android/apps/plus/api/ModifyCirclePropertiesOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/ModifyCirclePropertiesOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/ModifyCirclePropertiesOperation;->mCircleId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/api/ModifyCirclePropertiesOperation;->mCircleName:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/android/apps/plus/api/ModifyCirclePropertiesOperation;->mJustFollowing:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/content/EsPeopleData;->modifyCircleProperties(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 79
    return-void
.end method

.method protected bridge synthetic populateRequest(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    check-cast p1, Lcom/google/api/services/plusi/model/ModifyCirclePropertiesRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/api/ModifyCirclePropertiesOperation;->populateRequest(Lcom/google/api/services/plusi/model/ModifyCirclePropertiesRequest;)V

    return-void
.end method

.method protected populateRequest(Lcom/google/api/services/plusi/model/ModifyCirclePropertiesRequest;)V
    .registers 4
    .parameter "request"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/plus/api/ModifyCirclePropertiesOperation;->mCircleId:Ljava/lang/String;

    const-string v1, "f."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/plus/api/ModifyCirclePropertiesOperation;->mCircleId:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/api/services/plusi/model/ModifyCirclePropertiesRequest;->circleId:Ljava/lang/String;

    .line 65
    :goto_13
    iget-object v0, p0, Lcom/google/android/apps/plus/api/ModifyCirclePropertiesOperation;->mCircleName:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/api/services/plusi/model/ModifyCirclePropertiesRequest;->name:Ljava/lang/String;

    .line 66
    iget-boolean v0, p0, Lcom/google/android/apps/plus/api/ModifyCirclePropertiesOperation;->mJustFollowing:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/google/api/services/plusi/model/ModifyCirclePropertiesRequest;->justFollowing:Ljava/lang/Boolean;

    .line 67
    return-void

    .line 62
    :cond_20
    iget-object v0, p0, Lcom/google/android/apps/plus/api/ModifyCirclePropertiesOperation;->mCircleId:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/api/services/plusi/model/ModifyCirclePropertiesRequest;->circleId:Ljava/lang/String;

    goto :goto_13
.end method
