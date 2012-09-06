.class public Lcom/google/android/apps/plus/api/GetEventInviteeListOperation;
.super Lcom/google/android/apps/plus/network/PlusiOperation;
.source "GetEventInviteeListOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/network/PlusiOperation",
        "<",
        "Lcom/google/api/services/plusi/model/GetEventInviteeListRequest;",
        "Lcom/google/api/services/plusi/model/GetEventInviteeListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mEventId:Ljava/lang/String;

.field private final mIncludeBlacklist:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ZLandroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 15
    .parameter "context"
    .parameter "account"
    .parameter "eventId"
    .parameter "includeBlacklist"
    .parameter "intent"
    .parameter "listener"

    .prologue
    .line 40
    const-string v3, "geteventinviteelist"

    invoke-static {}, Lcom/google/api/services/plusi/model/GetEventInviteeListRequestJson;->getInstance()Lcom/google/api/services/plusi/model/GetEventInviteeListRequestJson;

    move-result-object v4

    invoke-static {}, Lcom/google/api/services/plusi/model/GetEventInviteeListResponseJson;->getInstance()Lcom/google/api/services/plusi/model/GetEventInviteeListResponseJson;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/network/PlusiOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/json/EsJson;Lcom/google/android/apps/plus/json/EsJson;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 42
    iput-object p3, p0, Lcom/google/android/apps/plus/api/GetEventInviteeListOperation;->mEventId:Ljava/lang/String;

    .line 43
    iput-boolean p4, p0, Lcom/google/android/apps/plus/api/GetEventInviteeListOperation;->mIncludeBlacklist:Z

    .line 44
    return-void
.end method


# virtual methods
.method protected bridge synthetic handleResponse(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    check-cast p1, Lcom/google/api/services/plusi/model/GetEventInviteeListResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/api/GetEventInviteeListOperation;->handleResponse(Lcom/google/api/services/plusi/model/GetEventInviteeListResponse;)V

    return-void
.end method

.method protected handleResponse(Lcom/google/api/services/plusi/model/GetEventInviteeListResponse;)V
    .registers 6
    .parameter "response"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/plus/api/GetEventInviteeListOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/GetEventInviteeListOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/GetEventInviteeListOperation;->mEventId:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/api/services/plusi/model/GetEventInviteeListResponse;->invitee:Ljava/util/List;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsEventData;->insertEventInviteeList(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/util/List;)V

    .line 61
    return-void
.end method

.method protected bridge synthetic populateRequest(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    check-cast p1, Lcom/google/api/services/plusi/model/GetEventInviteeListRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/api/GetEventInviteeListOperation;->populateRequest(Lcom/google/api/services/plusi/model/GetEventInviteeListRequest;)V

    return-void
.end method

.method protected populateRequest(Lcom/google/api/services/plusi/model/GetEventInviteeListRequest;)V
    .registers 3
    .parameter "request"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/apps/plus/api/GetEventInviteeListOperation;->mEventId:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/api/services/plusi/model/GetEventInviteeListRequest;->eventId:Ljava/lang/String;

    .line 52
    iget-boolean v0, p0, Lcom/google/android/apps/plus/api/GetEventInviteeListOperation;->mIncludeBlacklist:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/google/api/services/plusi/model/GetEventInviteeListRequest;->includeAdminBlacklist:Ljava/lang/Boolean;

    .line 53
    return-void
.end method
