.class public Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;
.super Lcom/google/android/apps/plus/network/PlusiOperation;
.source "SetCircleMembershipOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/network/PlusiOperation",
        "<",
        "Lcom/google/api/services/plusi/model/ModifyMembershipsRequest;",
        "Lcom/google/api/services/plusi/model/ModifyMembershipsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCirclesToAdd:[Ljava/lang/String;

.field private final mCirclesToRemove:[Ljava/lang/String;

.field private final mPersonId:Ljava/lang/String;

.field private final mPersonName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 17
    .parameter "context"
    .parameter "account"
    .parameter "personId"
    .parameter "personName"
    .parameter "circlesToAdd"
    .parameter "circlesToRemove"
    .parameter "intent"
    .parameter "listener"

    .prologue
    .line 48
    const-string v3, "modifymemberships"

    invoke-static {}, Lcom/google/api/services/plusi/model/ModifyMembershipsRequestJson;->getInstance()Lcom/google/api/services/plusi/model/ModifyMembershipsRequestJson;

    move-result-object v4

    invoke-static {}, Lcom/google/api/services/plusi/model/ModifyMembershipsResponseJson;->getInstance()Lcom/google/api/services/plusi/model/ModifyMembershipsResponseJson;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/network/PlusiOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/json/EsJson;Lcom/google/android/apps/plus/json/EsJson;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 55
    iput-object p3, p0, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->mPersonId:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->mPersonName:Ljava/lang/String;

    .line 57
    iput-object p5, p0, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->mCirclesToAdd:[Ljava/lang/String;

    .line 58
    iput-object p6, p0, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->mCirclesToRemove:[Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method protected bridge synthetic handleResponse(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    check-cast p1, Lcom/google/api/services/plusi/model/ModifyMembershipsResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->handleResponse(Lcom/google/api/services/plusi/model/ModifyMembershipsResponse;)V

    return-void
.end method

.method protected handleResponse(Lcom/google/api/services/plusi/model/ModifyMembershipsResponse;)V
    .registers 7
    .parameter "response"

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->onStartResultProcessing()V

    .line 107
    iget-object v0, p0, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->mPersonId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->mCirclesToAdd:[Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->mCirclesToRemove:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/content/EsPeopleData;->setCircleMembership(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method protected bridge synthetic populateRequest(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    check-cast p1, Lcom/google/api/services/plusi/model/ModifyMembershipsRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->populateRequest(Lcom/google/api/services/plusi/model/ModifyMembershipsRequest;)V

    return-void
.end method

.method protected populateRequest(Lcom/google/api/services/plusi/model/ModifyMembershipsRequest;)V
    .registers 9
    .parameter "request"

    .prologue
    .line 67
    new-instance v5, Lcom/google/api/services/plusi/model/DataCircleMembershipModificationParams;

    invoke-direct {v5}, Lcom/google/api/services/plusi/model/DataCircleMembershipModificationParams;-><init>()V

    iput-object v5, p1, Lcom/google/api/services/plusi/model/ModifyMembershipsRequest;->circleMembershipModificationParams:Lcom/google/api/services/plusi/model/DataCircleMembershipModificationParams;

    .line 70
    iget-object v5, p1, Lcom/google/api/services/plusi/model/ModifyMembershipsRequest;->circleMembershipModificationParams:Lcom/google/api/services/plusi/model/DataCircleMembershipModificationParams;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lcom/google/api/services/plusi/model/DataCircleMembershipModificationParams;->person:Ljava/util/List;

    .line 73
    new-instance v4, Lcom/google/api/services/plusi/model/DataCircleMemberToAdd;

    invoke-direct {v4}, Lcom/google/api/services/plusi/model/DataCircleMemberToAdd;-><init>()V

    .line 75
    .local v4, person:Lcom/google/api/services/plusi/model/DataCircleMemberToAdd;
    iget-object v5, p0, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->mPersonId:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/apps/plus/content/EsPeopleData;->getCircleMemberId(Ljava/lang/String;)Lcom/google/api/services/plusi/model/DataCircleMemberId;

    move-result-object v5

    iput-object v5, v4, Lcom/google/api/services/plusi/model/DataCircleMemberToAdd;->memberId:Lcom/google/api/services/plusi/model/DataCircleMemberId;

    .line 76
    iget-object v5, p0, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->mPersonName:Ljava/lang/String;

    iput-object v5, v4, Lcom/google/api/services/plusi/model/DataCircleMemberToAdd;->displayName:Ljava/lang/String;

    .line 78
    iget-object v5, p1, Lcom/google/api/services/plusi/model/ModifyMembershipsRequest;->circleMembershipModificationParams:Lcom/google/api/services/plusi/model/DataCircleMembershipModificationParams;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/DataCircleMembershipModificationParams;->person:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v5, p0, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->mCirclesToAdd:[Ljava/lang/String;

    if-eqz v5, :cond_4c

    iget-object v5, p0, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->mCirclesToAdd:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_4c

    .line 81
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p1, Lcom/google/api/services/plusi/model/ModifyMembershipsRequest;->circleToAdd:Ljava/util/List;

    .line 82
    iget-object v0, p0, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->mCirclesToAdd:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_3c
    if-ge v2, v3, :cond_4c

    aget-object v1, v0, v2

    .line 83
    .local v1, circleId:Ljava/lang/String;
    iget-object v5, p1, Lcom/google/api/services/plusi/model/ModifyMembershipsRequest;->circleToAdd:Ljava/util/List;

    invoke-static {v1}, Lcom/google/android/apps/plus/content/EsPeopleData;->buildCircleId(Ljava/lang/String;)Lcom/google/api/services/plusi/model/DataCircleId;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 87
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #circleId:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_4c
    iget-object v5, p0, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->mCirclesToRemove:[Ljava/lang/String;

    if-eqz v5, :cond_70

    iget-object v5, p0, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->mCirclesToRemove:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_70

    .line 88
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p1, Lcom/google/api/services/plusi/model/ModifyMembershipsRequest;->circleToRemove:Ljava/util/List;

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->mCirclesToRemove:[Ljava/lang/String;

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_60
    if-ge v2, v3, :cond_70

    aget-object v1, v0, v2

    .line 90
    .restart local v1       #circleId:Ljava/lang/String;
    iget-object v5, p1, Lcom/google/api/services/plusi/model/ModifyMembershipsRequest;->circleToRemove:Ljava/util/List;

    invoke-static {v1}, Lcom/google/android/apps/plus/content/EsPeopleData;->buildCircleId(Ljava/lang/String;)Lcom/google/api/services/plusi/model/DataCircleId;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_60

    .line 93
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #circleId:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_70
    return-void
.end method
