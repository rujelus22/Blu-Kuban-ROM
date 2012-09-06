.class public Lcom/google/android/apps/plus/api/DeleteEventOperation;
.super Lcom/google/android/apps/plus/network/PlusiOperation;
.source "DeleteEventOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/network/PlusiOperation",
        "<",
        "Lcom/google/api/services/plusi/model/DeleteEventRequest;",
        "Lcom/google/api/services/plusi/model/DeleteEventResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private mEventId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 14
    .parameter "context"
    .parameter "account"
    .parameter "eventId"
    .parameter "intent"
    .parameter "listener"

    .prologue
    .line 37
    const-string v3, "deleteevent"

    invoke-static {}, Lcom/google/api/services/plusi/model/DeleteEventRequestJson;->getInstance()Lcom/google/api/services/plusi/model/DeleteEventRequestJson;

    move-result-object v4

    invoke-static {}, Lcom/google/api/services/plusi/model/DeleteEventResponseJson;->getInstance()Lcom/google/api/services/plusi/model/DeleteEventResponseJson;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/network/PlusiOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/json/EsJson;Lcom/google/android/apps/plus/json/EsJson;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 39
    iput-object p3, p0, Lcom/google/android/apps/plus/api/DeleteEventOperation;->mEventId:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method protected bridge synthetic handleResponse(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    check-cast p1, Lcom/google/api/services/plusi/model/DeleteEventResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/api/DeleteEventOperation;->handleResponse(Lcom/google/api/services/plusi/model/DeleteEventResponse;)V

    return-void
.end method

.method protected handleResponse(Lcom/google/api/services/plusi/model/DeleteEventResponse;)V
    .registers 5
    .parameter "response"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/apps/plus/api/DeleteEventOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/DeleteEventOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/DeleteEventOperation;->mEventId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/content/EsEventData;->deleteEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method protected bridge synthetic populateRequest(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    check-cast p1, Lcom/google/api/services/plusi/model/DeleteEventRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/api/DeleteEventOperation;->populateRequest(Lcom/google/api/services/plusi/model/DeleteEventRequest;)V

    return-void
.end method

.method protected populateRequest(Lcom/google/api/services/plusi/model/DeleteEventRequest;)V
    .registers 3
    .parameter "request"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/plus/api/DeleteEventOperation;->mEventId:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/api/services/plusi/model/DeleteEventRequest;->eventId:Ljava/lang/String;

    .line 48
    return-void
.end method
