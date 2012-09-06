.class public Lcom/google/android/apps/plus/api/GetEventOperation;
.super Lcom/google/android/apps/plus/network/PlusiOperation;
.source "GetEventOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/network/PlusiOperation",
        "<",
        "Lcom/google/api/services/plusi/model/GetEventRequest;",
        "Lcom/google/api/services/plusi/model/GetEventResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivityId:Ljava/lang/String;

.field private final mEventId:Ljava/lang/String;

.field private final mOwnerId:Ljava/lang/String;

.field private mPlusEvent:Lcom/google/api/services/plusi/model/PlusEvent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 15
    .parameter "context"
    .parameter "account"
    .parameter "eventId"
    .parameter "ownerId"
    .parameter "intent"
    .parameter "listener"

    .prologue
    .line 49
    const-string v3, "getevent"

    invoke-static {}, Lcom/google/api/services/plusi/model/GetEventRequestJson;->getInstance()Lcom/google/api/services/plusi/model/GetEventRequestJson;

    move-result-object v4

    invoke-static {}, Lcom/google/api/services/plusi/model/GetEventResponseJson;->getInstance()Lcom/google/api/services/plusi/model/GetEventResponseJson;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/network/PlusiOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/json/EsJson;Lcom/google/android/apps/plus/json/EsJson;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 51
    iput-object p3, p0, Lcom/google/android/apps/plus/api/GetEventOperation;->mEventId:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/google/android/apps/plus/api/GetEventOperation;->mOwnerId:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method protected bridge synthetic handleResponse(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    check-cast p1, Lcom/google/api/services/plusi/model/GetEventResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/api/GetEventOperation;->handleResponse(Lcom/google/api/services/plusi/model/GetEventResponse;)V

    return-void
.end method

.method protected handleResponse(Lcom/google/api/services/plusi/model/GetEventResponse;)V
    .registers 7
    .parameter "response"

    .prologue
    .line 63
    iget-object v0, p1, Lcom/google/api/services/plusi/model/GetEventResponse;->plusEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iput-object v0, p0, Lcom/google/android/apps/plus/api/GetEventOperation;->mPlusEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    .line 64
    iget-object v0, p1, Lcom/google/api/services/plusi/model/GetEventResponse;->activityId:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/plus/api/GetEventOperation;->mActivityId:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/google/android/apps/plus/api/GetEventOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/GetEventOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/GetEventOperation;->mEventId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/api/GetEventOperation;->mActivityId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/plus/api/GetEventOperation;->mPlusEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/content/EsEventData;->insertEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/plusi/model/PlusEvent;)V

    .line 67
    return-void
.end method

.method protected onHttpOperationComplete(ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 7
    .parameter "errorCode"
    .parameter "reasonPhrase"
    .parameter "ex"

    .prologue
    .line 71
    const/16 v0, 0x194

    if-ne p1, v0, :cond_e

    .line 72
    iget-object v0, p0, Lcom/google/android/apps/plus/api/GetEventOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/GetEventOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/GetEventOperation;->mEventId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/content/EsEventData;->deleteEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 82
    :cond_d
    :goto_d
    return-void

    .line 73
    :cond_e
    const/16 v0, 0x190

    if-lt p1, v0, :cond_d

    .line 75
    iget-object v0, p0, Lcom/google/android/apps/plus/api/GetEventOperation;->mEventId:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/GetEventOperation;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/apps/plus/phone/InstantUpload;->getInstantShareEventId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 76
    const-string v0, "HttpTransaction"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 77
    const-string v0, "HttpTransaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GET_EVENT] received error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; disable IS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_47
    iget-object v0, p0, Lcom/google/android/apps/plus/api/GetEventOperation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsEventData;->disableInstantShare(Landroid/content/Context;)V

    goto :goto_d
.end method

.method protected bridge synthetic populateRequest(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    check-cast p1, Lcom/google/api/services/plusi/model/GetEventRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/api/GetEventOperation;->populateRequest(Lcom/google/api/services/plusi/model/GetEventRequest;)V

    return-void
.end method

.method protected populateRequest(Lcom/google/api/services/plusi/model/GetEventRequest;)V
    .registers 3
    .parameter "request"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/plus/api/GetEventOperation;->mEventId:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/api/services/plusi/model/GetEventRequest;->eventId:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/google/android/apps/plus/api/GetEventOperation;->mOwnerId:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/api/services/plusi/model/GetEventRequest;->posterId:Ljava/lang/String;

    .line 59
    return-void
.end method
