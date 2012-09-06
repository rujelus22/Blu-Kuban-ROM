.class public Lcom/google/android/apps/plus/api/EventManageGuestOperation;
.super Lcom/google/android/apps/plus/network/PlusiOperation;
.source "EventManageGuestOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/network/PlusiOperation",
        "<",
        "Lcom/google/api/services/plusi/model/EventManageGuestsRequest;",
        "Lcom/google/api/services/plusi/model/EventManageGuestsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBlacklist:Z

.field private final mEmail:Ljava/lang/String;

.field private final mEventId:Ljava/lang/String;

.field private final mGaiaId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 17
    .parameter "context"
    .parameter "account"
    .parameter "eventId"
    .parameter "blacklist"
    .parameter "gaiaId"
    .parameter "email"
    .parameter "intent"
    .parameter "listener"

    .prologue
    .line 47
    const-string v3, "eventmanageguests"

    invoke-static {}, Lcom/google/api/services/plusi/model/EventManageGuestsRequestJson;->getInstance()Lcom/google/api/services/plusi/model/EventManageGuestsRequestJson;

    move-result-object v4

    invoke-static {}, Lcom/google/api/services/plusi/model/EventManageGuestsResponseJson;->getInstance()Lcom/google/api/services/plusi/model/EventManageGuestsResponseJson;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/network/PlusiOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/json/EsJson;Lcom/google/android/apps/plus/json/EsJson;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 49
    iput-object p3, p0, Lcom/google/android/apps/plus/api/EventManageGuestOperation;->mEventId:Ljava/lang/String;

    .line 50
    iput-boolean p4, p0, Lcom/google/android/apps/plus/api/EventManageGuestOperation;->mBlacklist:Z

    .line 51
    iput-object p5, p0, Lcom/google/android/apps/plus/api/EventManageGuestOperation;->mGaiaId:Ljava/lang/String;

    .line 52
    iput-object p6, p0, Lcom/google/android/apps/plus/api/EventManageGuestOperation;->mEmail:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method protected bridge synthetic handleResponse(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    check-cast p1, Lcom/google/api/services/plusi/model/EventManageGuestsResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/api/EventManageGuestOperation;->handleResponse(Lcom/google/api/services/plusi/model/EventManageGuestsResponse;)V

    return-void
.end method

.method protected handleResponse(Lcom/google/api/services/plusi/model/EventManageGuestsResponse;)V
    .registers 8
    .parameter "response"

    .prologue
    .line 76
    iget-object v0, p1, Lcom/google/api/services/plusi/model/EventManageGuestsResponse;->success:Ljava/lang/Boolean;

    if-eqz v0, :cond_1b

    iget-object v0, p1, Lcom/google/api/services/plusi/model/EventManageGuestsResponse;->success:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 77
    iget-object v0, p0, Lcom/google/android/apps/plus/api/EventManageGuestOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/EventManageGuestOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/EventManageGuestOperation;->mEventId:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/android/apps/plus/api/EventManageGuestOperation;->mBlacklist:Z

    iget-object v4, p0, Lcom/google/android/apps/plus/api/EventManageGuestOperation;->mGaiaId:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/plus/api/EventManageGuestOperation;->mEmail:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsEventData;->updateEventInviteeList(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_1b
    return-void
.end method

.method protected bridge synthetic populateRequest(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    check-cast p1, Lcom/google/api/services/plusi/model/EventManageGuestsRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/api/EventManageGuestOperation;->populateRequest(Lcom/google/api/services/plusi/model/EventManageGuestsRequest;)V

    return-void
.end method

.method protected populateRequest(Lcom/google/api/services/plusi/model/EventManageGuestsRequest;)V
    .registers 4
    .parameter "request"

    .prologue
    .line 60
    iget-object v1, p0, Lcom/google/android/apps/plus/api/EventManageGuestOperation;->mEventId:Ljava/lang/String;

    iput-object v1, p1, Lcom/google/api/services/plusi/model/EventManageGuestsRequest;->eventId:Ljava/lang/String;

    .line 61
    iget-boolean v1, p0, Lcom/google/android/apps/plus/api/EventManageGuestOperation;->mBlacklist:Z

    if-eqz v1, :cond_26

    const-string v1, "ADD"

    :goto_a
    iput-object v1, p1, Lcom/google/api/services/plusi/model/EventManageGuestsRequest;->actionType:Ljava/lang/String;

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Lcom/google/api/services/plusi/model/EventManageGuestsRequest;->invitee:Ljava/util/List;

    .line 64
    new-instance v0, Lcom/google/api/services/plusi/model/EmbedsPerson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/EmbedsPerson;-><init>()V

    .line 65
    .local v0, person:Lcom/google/api/services/plusi/model/EmbedsPerson;
    iget-object v1, p0, Lcom/google/android/apps/plus/api/EventManageGuestOperation;->mGaiaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/api/services/plusi/model/EmbedsPerson;->ownerObfuscatedId:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lcom/google/android/apps/plus/api/EventManageGuestOperation;->mEmail:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/api/services/plusi/model/EmbedsPerson;->email:Ljava/lang/String;

    .line 68
    iget-object v1, p1, Lcom/google/api/services/plusi/model/EventManageGuestsRequest;->invitee:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    return-void

    .line 61
    .end local v0           #person:Lcom/google/api/services/plusi/model/EmbedsPerson;
    :cond_26
    const-string v1, "REMOVE"

    goto :goto_a
.end method
