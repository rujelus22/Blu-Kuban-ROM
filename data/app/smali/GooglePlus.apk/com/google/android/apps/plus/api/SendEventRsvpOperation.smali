.class public Lcom/google/android/apps/plus/api/SendEventRsvpOperation;
.super Lcom/google/android/apps/plus/network/PlusiOperation;
.source "SendEventRsvpOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/api/SendEventRsvpOperation$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/network/PlusiOperation",
        "<",
        "Lcom/google/api/services/plusi/model/EventRespondRequest;",
        "Lcom/google/api/services/plusi/model/EventRespondResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mEventId:Ljava/lang/String;

.field private final mOwnerId:Ljava/lang/String;

.field private final mRollbackRsvpType:Ljava/lang/String;

.field private final mRsvpType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 17
    .parameter "context"
    .parameter "account"
    .parameter "eventId"
    .parameter "ownerId"
    .parameter "rsvpType"
    .parameter "rollbackRsvpType"
    .parameter "intent"
    .parameter "listener"

    .prologue
    .line 53
    const-string v3, "eventrespond"

    invoke-static {}, Lcom/google/api/services/plusi/model/EventRespondRequestJson;->getInstance()Lcom/google/api/services/plusi/model/EventRespondRequestJson;

    move-result-object v4

    invoke-static {}, Lcom/google/api/services/plusi/model/EventRespondResponseJson;->getInstance()Lcom/google/api/services/plusi/model/EventRespondResponseJson;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/network/PlusiOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/json/EsJson;Lcom/google/android/apps/plus/json/EsJson;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 55
    iput-object p3, p0, Lcom/google/android/apps/plus/api/SendEventRsvpOperation;->mEventId:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/google/android/apps/plus/api/SendEventRsvpOperation;->mOwnerId:Ljava/lang/String;

    .line 57
    iput-object p5, p0, Lcom/google/android/apps/plus/api/SendEventRsvpOperation;->mRsvpType:Ljava/lang/String;

    .line 58
    iput-object p6, p0, Lcom/google/android/apps/plus/api/SendEventRsvpOperation;->mRollbackRsvpType:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private rollback()V
    .registers 5

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/apps/plus/api/SendEventRsvpOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/SendEventRsvpOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/SendEventRsvpOperation;->mEventId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/api/SendEventRsvpOperation;->mRollbackRsvpType:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsEventData;->setRsvpType(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/google/android/apps/plus/api/SendEventRsvpOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/SendEventRsvpOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/SendEventRsvpOperation;->mEventId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/api/SendEventRsvpOperation;->mOwnerId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsEventData;->refreshEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method


# virtual methods
.method protected bridge synthetic handleResponse(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    check-cast p1, Lcom/google/api/services/plusi/model/EventRespondResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/api/SendEventRsvpOperation;->handleResponse(Lcom/google/api/services/plusi/model/EventRespondResponse;)V

    return-void
.end method

.method protected handleResponse(Lcom/google/api/services/plusi/model/EventRespondResponse;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 69
    iget-object v0, p1, Lcom/google/api/services/plusi/model/EventRespondResponse;->result:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p1, Lcom/google/api/services/plusi/model/EventRespondResponse;->result:Ljava/lang/String;

    sget-object v1, Lcom/google/android/apps/plus/api/SendEventRsvpOperation$Status;->SUCCESS:Lcom/google/android/apps/plus/api/SendEventRsvpOperation$Status;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/SendEventRsvpOperation$Status;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 70
    invoke-direct {p0}, Lcom/google/android/apps/plus/api/SendEventRsvpOperation;->rollback()V

    .line 72
    :cond_15
    return-void
.end method

.method protected onHttpOperationComplete(ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 5
    .parameter "errorCode"
    .parameter "reasonPhrase"
    .parameter "ex"

    .prologue
    .line 76
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_6

    if-eqz p3, :cond_9

    .line 77
    :cond_6
    invoke-direct {p0}, Lcom/google/android/apps/plus/api/SendEventRsvpOperation;->rollback()V

    .line 79
    :cond_9
    return-void
.end method

.method protected bridge synthetic populateRequest(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    check-cast p1, Lcom/google/api/services/plusi/model/EventRespondRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/api/SendEventRsvpOperation;->populateRequest(Lcom/google/api/services/plusi/model/EventRespondRequest;)V

    return-void
.end method

.method protected populateRequest(Lcom/google/api/services/plusi/model/EventRespondRequest;)V
    .registers 3
    .parameter "request"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/apps/plus/api/SendEventRsvpOperation;->mEventId:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/api/services/plusi/model/EventRespondRequest;->eventId:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/google/android/apps/plus/api/SendEventRsvpOperation;->mRsvpType:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/api/services/plusi/model/EventRespondRequest;->response:Ljava/lang/String;

    .line 65
    return-void
.end method
