.class public Lcom/google/android/apps/plus/api/SetBlockedOperation;
.super Lcom/google/android/apps/plus/network/PlusiOperation;
.source "SetBlockedOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/network/PlusiOperation",
        "<",
        "Lcom/google/api/services/plusi/model/BlockUserRequest;",
        "Lcom/google/api/services/plusi/model/BlockUserResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBlock:Z

.field private final mName:Ljava/lang/String;

.field private final mPersonId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 16
    .parameter "context"
    .parameter "account"
    .parameter "personId"
    .parameter "name"
    .parameter "block"
    .parameter "intent"
    .parameter "listener"

    .prologue
    .line 45
    const-string v3, "blockuser"

    invoke-static {}, Lcom/google/api/services/plusi/model/BlockUserRequestJson;->getInstance()Lcom/google/api/services/plusi/model/BlockUserRequestJson;

    move-result-object v4

    invoke-static {}, Lcom/google/api/services/plusi/model/BlockUserResponseJson;->getInstance()Lcom/google/api/services/plusi/model/BlockUserResponseJson;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/network/PlusiOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/json/EsJson;Lcom/google/android/apps/plus/json/EsJson;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 47
    iput-object p3, p0, Lcom/google/android/apps/plus/api/SetBlockedOperation;->mPersonId:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/google/android/apps/plus/api/SetBlockedOperation;->mName:Ljava/lang/String;

    .line 49
    iput-boolean p5, p0, Lcom/google/android/apps/plus/api/SetBlockedOperation;->mBlock:Z

    .line 50
    return-void
.end method


# virtual methods
.method protected bridge synthetic handleResponse(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    check-cast p1, Lcom/google/api/services/plusi/model/BlockUserResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/api/SetBlockedOperation;->handleResponse(Lcom/google/api/services/plusi/model/BlockUserResponse;)V

    return-void
.end method

.method protected handleResponse(Lcom/google/api/services/plusi/model/BlockUserResponse;)V
    .registers 6
    .parameter "response"

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/SetBlockedOperation;->onStartResultProcessing()V

    .line 72
    iget-object v0, p0, Lcom/google/android/apps/plus/api/SetBlockedOperation;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/SetBlockedOperation;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/api/SetBlockedOperation;->mPersonId:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/android/apps/plus/api/SetBlockedOperation;->mBlock:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsPeopleData;->setPersonBlocked(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)V

    .line 73
    return-void
.end method

.method protected bridge synthetic populateRequest(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    check-cast p1, Lcom/google/api/services/plusi/model/BlockUserRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/api/SetBlockedOperation;->populateRequest(Lcom/google/api/services/plusi/model/BlockUserRequest;)V

    return-void
.end method

.method protected populateRequest(Lcom/google/api/services/plusi/model/BlockUserRequest;)V
    .registers 5
    .parameter "request"

    .prologue
    .line 57
    new-instance v1, Lcom/google/api/services/plusi/model/DataMembersToBlock;

    invoke-direct {v1}, Lcom/google/api/services/plusi/model/DataMembersToBlock;-><init>()V

    iput-object v1, p1, Lcom/google/api/services/plusi/model/BlockUserRequest;->membersToBlock:Lcom/google/api/services/plusi/model/DataMembersToBlock;

    .line 58
    iget-object v1, p1, Lcom/google/api/services/plusi/model/BlockUserRequest;->membersToBlock:Lcom/google/api/services/plusi/model/DataMembersToBlock;

    iget-boolean v2, p0, Lcom/google/android/apps/plus/api/SetBlockedOperation;->mBlock:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/google/api/services/plusi/model/DataMembersToBlock;->block:Ljava/lang/Boolean;

    .line 59
    iget-object v1, p1, Lcom/google/api/services/plusi/model/BlockUserRequest;->membersToBlock:Lcom/google/api/services/plusi/model/DataMembersToBlock;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/google/api/services/plusi/model/DataMembersToBlock;->members:Ljava/util/List;

    .line 60
    new-instance v0, Lcom/google/api/services/plusi/model/DataMemberToBlock;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/DataMemberToBlock;-><init>()V

    .line 61
    .local v0, member:Lcom/google/api/services/plusi/model/DataMemberToBlock;
    iget-object v1, p0, Lcom/google/android/apps/plus/api/SetBlockedOperation;->mPersonId:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/apps/plus/content/EsPeopleData;->getCircleMemberId(Ljava/lang/String;)Lcom/google/api/services/plusi/model/DataCircleMemberId;

    move-result-object v1

    iput-object v1, v0, Lcom/google/api/services/plusi/model/DataMemberToBlock;->memberId:Lcom/google/api/services/plusi/model/DataCircleMemberId;

    .line 62
    iget-object v1, p0, Lcom/google/android/apps/plus/api/SetBlockedOperation;->mName:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/api/services/plusi/model/DataMemberToBlock;->name:Ljava/lang/String;

    .line 63
    iget-object v1, p1, Lcom/google/api/services/plusi/model/BlockUserRequest;->membersToBlock:Lcom/google/api/services/plusi/model/DataMembersToBlock;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/DataMembersToBlock;->members:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method
