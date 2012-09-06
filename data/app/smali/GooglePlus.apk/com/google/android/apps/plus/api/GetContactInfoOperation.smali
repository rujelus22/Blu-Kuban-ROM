.class public Lcom/google/android/apps/plus/api/GetContactInfoOperation;
.super Lcom/google/android/apps/plus/network/PlusiOperation;
.source "GetContactInfoOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/network/PlusiOperation",
        "<",
        "Lcom/google/api/services/plusi/model/LoadPeopleRequest;",
        "Lcom/google/api/services/plusi/model/LoadCircleMembersResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mGaiaId:Ljava/lang/String;

.field private mPerson:Lcom/google/api/services/plusi/model/DataCirclePerson;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 15
    .parameter "context"
    .parameter "account"
    .parameter "gaiaId"
    .parameter "intent"
    .parameter "listener"
    .parameter "syncState"

    .prologue
    .line 47
    const-string v3, "loadpeople"

    invoke-static {}, Lcom/google/api/services/plusi/model/LoadPeopleRequestJson;->getInstance()Lcom/google/api/services/plusi/model/LoadPeopleRequestJson;

    move-result-object v4

    invoke-static {}, Lcom/google/api/services/plusi/model/LoadCircleMembersResponseJson;->getInstance()Lcom/google/api/services/plusi/model/LoadCircleMembersResponseJson;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/network/PlusiOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/json/EsJson;Lcom/google/android/apps/plus/json/EsJson;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 54
    iput-object p3, p0, Lcom/google/android/apps/plus/api/GetContactInfoOperation;->mGaiaId:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public getPerson()Lcom/google/api/services/plusi/model/DataCirclePerson;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/apps/plus/api/GetContactInfoOperation;->mPerson:Lcom/google/api/services/plusi/model/DataCirclePerson;

    return-object v0
.end method

.method protected bridge synthetic handleResponse(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    check-cast p1, Lcom/google/api/services/plusi/model/LoadCircleMembersResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/api/GetContactInfoOperation;->handleResponse(Lcom/google/api/services/plusi/model/LoadCircleMembersResponse;)V

    return-void
.end method

.method protected handleResponse(Lcom/google/api/services/plusi/model/LoadCircleMembersResponse;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 77
    iget-object v0, p1, Lcom/google/api/services/plusi/model/LoadCircleMembersResponse;->circlePerson:Ljava/util/List;

    if-eqz v0, :cond_17

    iget-object v0, p1, Lcom/google/api/services/plusi/model/LoadCircleMembersResponse;->circlePerson:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_17

    .line 78
    iget-object v0, p1, Lcom/google/api/services/plusi/model/LoadCircleMembersResponse;->circlePerson:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/plusi/model/DataCirclePerson;

    iput-object v0, p0, Lcom/google/android/apps/plus/api/GetContactInfoOperation;->mPerson:Lcom/google/api/services/plusi/model/DataCirclePerson;

    .line 80
    :cond_17
    return-void
.end method

.method protected bridge synthetic populateRequest(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    check-cast p1, Lcom/google/api/services/plusi/model/LoadPeopleRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/api/GetContactInfoOperation;->populateRequest(Lcom/google/api/services/plusi/model/LoadPeopleRequest;)V

    return-void
.end method

.method protected populateRequest(Lcom/google/api/services/plusi/model/LoadPeopleRequest;)V
    .registers 5
    .parameter "request"

    .prologue
    const/4 v2, 0x0

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Lcom/google/api/services/plusi/model/LoadPeopleRequest;->circleMemberId:Ljava/util/List;

    .line 64
    new-instance v0, Lcom/google/api/services/plusi/model/DataCircleMemberId;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/DataCircleMemberId;-><init>()V

    .line 65
    .local v0, id:Lcom/google/api/services/plusi/model/DataCircleMemberId;
    iget-object v1, p0, Lcom/google/android/apps/plus/api/GetContactInfoOperation;->mGaiaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/api/services/plusi/model/DataCircleMemberId;->obfuscatedGaiaId:Ljava/lang/String;

    .line 66
    iget-object v1, p1, Lcom/google/api/services/plusi/model/LoadPeopleRequest;->circleMemberId:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p1, Lcom/google/api/services/plusi/model/LoadPeopleRequest;->includeIsFollowing:Ljava/lang/Boolean;

    .line 69
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p1, Lcom/google/api/services/plusi/model/LoadPeopleRequest;->includeMemberships:Ljava/lang/Boolean;

    .line 70
    return-void
.end method
