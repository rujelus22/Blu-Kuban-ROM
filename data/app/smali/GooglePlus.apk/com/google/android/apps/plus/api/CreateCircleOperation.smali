.class public Lcom/google/android/apps/plus/api/CreateCircleOperation;
.super Lcom/google/android/apps/plus/network/PlusiOperation;
.source "CreateCircleOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/network/PlusiOperation",
        "<",
        "Lcom/google/api/services/plusi/model/CreateCircleRequest;",
        "Lcom/google/api/services/plusi/model/CreateCircleResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCircleName:Ljava/lang/String;

.field private final mJustFollowing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ZLandroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 15
    .parameter "context"
    .parameter "account"
    .parameter "circleName"
    .parameter "justFollowing"
    .parameter "intent"
    .parameter "listener"

    .prologue
    .line 42
    const-string v3, "createcircle"

    invoke-static {}, Lcom/google/api/services/plusi/model/CreateCircleRequestJson;->getInstance()Lcom/google/api/services/plusi/model/CreateCircleRequestJson;

    move-result-object v4

    invoke-static {}, Lcom/google/api/services/plusi/model/CreateCircleResponseJson;->getInstance()Lcom/google/api/services/plusi/model/CreateCircleResponseJson;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/network/PlusiOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/json/EsJson;Lcom/google/android/apps/plus/json/EsJson;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 49
    iput-object p3, p0, Lcom/google/android/apps/plus/api/CreateCircleOperation;->mCircleName:Ljava/lang/String;

    .line 50
    iput-boolean p4, p0, Lcom/google/android/apps/plus/api/CreateCircleOperation;->mJustFollowing:Z

    .line 51
    return-void
.end method


# virtual methods
.method protected bridge synthetic handleResponse(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    check-cast p1, Lcom/google/api/services/plusi/model/CreateCircleResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/api/CreateCircleOperation;->handleResponse(Lcom/google/api/services/plusi/model/CreateCircleResponse;)V

    return-void
.end method

.method protected handleResponse(Lcom/google/api/services/plusi/model/CreateCircleResponse;)V
    .registers 7
    .parameter "response"

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/CreateCircleOperation;->onStartResultProcessing()V

    .line 68
    iget-object v0, p0, Lcom/google/android/apps/plus/api/CreateCircleOperation;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/CreateCircleOperation;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/CreateCircleResponse;->circleId:Lcom/google/api/services/plusi/model/DataCircleId;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/DataCircleId;->focusId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/api/CreateCircleOperation;->mCircleName:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/android/apps/plus/api/CreateCircleOperation;->mJustFollowing:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/content/EsPeopleData;->insertNewCircle(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 70
    return-void
.end method

.method protected bridge synthetic populateRequest(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    check-cast p1, Lcom/google/api/services/plusi/model/CreateCircleRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/api/CreateCircleOperation;->populateRequest(Lcom/google/api/services/plusi/model/CreateCircleRequest;)V

    return-void
.end method

.method protected populateRequest(Lcom/google/api/services/plusi/model/CreateCircleRequest;)V
    .registers 3
    .parameter "request"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/plus/api/CreateCircleOperation;->mCircleName:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/api/services/plusi/model/CreateCircleRequest;->name:Ljava/lang/String;

    .line 59
    iget-boolean v0, p0, Lcom/google/android/apps/plus/api/CreateCircleOperation;->mJustFollowing:Z

    if-eqz v0, :cond_d

    const-string v0, "JUST_FOLLOWING"

    :goto_a
    iput-object v0, p1, Lcom/google/api/services/plusi/model/CreateCircleRequest;->justFollowingStatus:Ljava/lang/String;

    .line 60
    return-void

    .line 59
    :cond_d
    const-string v0, "INCLUDE_IN_YOUR_CIRCLES"

    goto :goto_a
.end method
