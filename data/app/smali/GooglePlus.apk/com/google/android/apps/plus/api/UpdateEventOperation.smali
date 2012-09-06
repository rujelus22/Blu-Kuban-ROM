.class public Lcom/google/android/apps/plus/api/UpdateEventOperation;
.super Lcom/google/android/apps/plus/network/PlusiOperation;
.source "UpdateEventOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/network/PlusiOperation",
        "<",
        "Lcom/google/api/services/plusi/model/UpdateEventRequest;",
        "Lcom/google/api/services/plusi/model/UpdateEventResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private mPlusEvent:Lcom/google/api/services/plusi/model/PlusEvent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/api/services/plusi/model/PlusEvent;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 14
    .parameter "context"
    .parameter "account"
    .parameter "event"
    .parameter "intent"
    .parameter "listener"

    .prologue
    .line 38
    const-string v3, "updateevent"

    invoke-static {}, Lcom/google/api/services/plusi/model/UpdateEventRequestJson;->getInstance()Lcom/google/api/services/plusi/model/UpdateEventRequestJson;

    move-result-object v4

    invoke-static {}, Lcom/google/api/services/plusi/model/UpdateEventResponseJson;->getInstance()Lcom/google/api/services/plusi/model/UpdateEventResponseJson;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/network/PlusiOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/json/EsJson;Lcom/google/android/apps/plus/json/EsJson;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 40
    iput-object p3, p0, Lcom/google/android/apps/plus/api/UpdateEventOperation;->mPlusEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    .line 41
    return-void
.end method


# virtual methods
.method protected bridge synthetic handleResponse(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    check-cast p1, Lcom/google/api/services/plusi/model/UpdateEventResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/api/UpdateEventOperation;->handleResponse(Lcom/google/api/services/plusi/model/UpdateEventResponse;)V

    return-void
.end method

.method protected handleResponse(Lcom/google/api/services/plusi/model/UpdateEventResponse;)V
    .registers 8
    .parameter "response"

    .prologue
    .line 56
    iget-object v0, p1, Lcom/google/api/services/plusi/model/UpdateEventResponse;->event:Lcom/google/api/services/plusi/model/PlusEvent;

    .line 58
    .local v0, event:Lcom/google/api/services/plusi/model/PlusEvent;
    if-eqz v0, :cond_46

    .line 64
    iget-object v1, p0, Lcom/google/android/apps/plus/api/UpdateEventOperation;->mPlusEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v2, v0, Lcom/google/api/services/plusi/model/PlusEvent;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/api/services/plusi/model/PlusEvent;->name:Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lcom/google/android/apps/plus/api/UpdateEventOperation;->mPlusEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v2, v0, Lcom/google/api/services/plusi/model/PlusEvent;->description:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/api/services/plusi/model/PlusEvent;->description:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lcom/google/android/apps/plus/api/UpdateEventOperation;->mPlusEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v2, v0, Lcom/google/api/services/plusi/model/PlusEvent;->theme:Lcom/google/api/services/plusi/model/Theme;

    iput-object v2, v1, Lcom/google/api/services/plusi/model/PlusEvent;->theme:Lcom/google/api/services/plusi/model/Theme;

    .line 67
    iget-object v1, p0, Lcom/google/android/apps/plus/api/UpdateEventOperation;->mPlusEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v2, v0, Lcom/google/api/services/plusi/model/PlusEvent;->startTime:Lcom/google/api/services/plusi/model/EventTime;

    iput-object v2, v1, Lcom/google/api/services/plusi/model/PlusEvent;->startTime:Lcom/google/api/services/plusi/model/EventTime;

    .line 68
    iget-object v1, p0, Lcom/google/android/apps/plus/api/UpdateEventOperation;->mPlusEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v2, v0, Lcom/google/api/services/plusi/model/PlusEvent;->startDate:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/api/services/plusi/model/PlusEvent;->startDate:Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lcom/google/android/apps/plus/api/UpdateEventOperation;->mPlusEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v2, v0, Lcom/google/api/services/plusi/model/PlusEvent;->endTime:Lcom/google/api/services/plusi/model/EventTime;

    iput-object v2, v1, Lcom/google/api/services/plusi/model/PlusEvent;->endTime:Lcom/google/api/services/plusi/model/EventTime;

    .line 70
    iget-object v1, p0, Lcom/google/android/apps/plus/api/UpdateEventOperation;->mPlusEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v2, v0, Lcom/google/api/services/plusi/model/PlusEvent;->endDate:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/api/services/plusi/model/PlusEvent;->endDate:Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lcom/google/android/apps/plus/api/UpdateEventOperation;->mPlusEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v2, v0, Lcom/google/api/services/plusi/model/PlusEvent;->location:Lcom/google/api/services/plusi/model/Place;

    iput-object v2, v1, Lcom/google/api/services/plusi/model/PlusEvent;->location:Lcom/google/api/services/plusi/model/Place;

    .line 72
    iget-object v1, p0, Lcom/google/android/apps/plus/api/UpdateEventOperation;->mPlusEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v2, v0, Lcom/google/api/services/plusi/model/PlusEvent;->eventOptions:Lcom/google/api/services/plusi/model/EventOptions;

    iput-object v2, v1, Lcom/google/api/services/plusi/model/PlusEvent;->eventOptions:Lcom/google/api/services/plusi/model/EventOptions;

    .line 74
    iget-object v1, p0, Lcom/google/android/apps/plus/api/UpdateEventOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/UpdateEventOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, v0, Lcom/google/api/services/plusi/model/PlusEvent;->id:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/apps/plus/api/UpdateEventOperation;->mPlusEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/apps/plus/content/EsEventData;->insertEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/plusi/model/PlusEvent;)V

    .line 76
    :cond_46
    return-void
.end method

.method protected bridge synthetic populateRequest(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    check-cast p1, Lcom/google/api/services/plusi/model/UpdateEventRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/api/UpdateEventOperation;->populateRequest(Lcom/google/api/services/plusi/model/UpdateEventRequest;)V

    return-void
.end method

.method protected populateRequest(Lcom/google/api/services/plusi/model/UpdateEventRequest;)V
    .registers 3
    .parameter "request"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/plus/api/UpdateEventOperation;->mPlusEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iput-object v0, p1, Lcom/google/api/services/plusi/model/UpdateEventRequest;->event:Lcom/google/api/services/plusi/model/PlusEvent;

    .line 49
    return-void
.end method
