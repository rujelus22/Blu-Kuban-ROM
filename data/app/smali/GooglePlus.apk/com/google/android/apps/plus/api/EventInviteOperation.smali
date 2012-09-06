.class public Lcom/google/android/apps/plus/api/EventInviteOperation;
.super Lcom/google/android/apps/plus/network/PlusiOperation;
.source "EventInviteOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/network/PlusiOperation",
        "<",
        "Lcom/google/api/services/plusi/model/InviteEventRequest;",
        "Lcom/google/android/apps/plus/json/GenericJson;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

.field private final mEventId:Ljava/lang/String;

.field private final mOwnerId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 16
    .parameter "context"
    .parameter "account"
    .parameter "eventId"
    .parameter "ownerId"
    .parameter "audience"
    .parameter "intent"
    .parameter "listener"

    .prologue
    .line 41
    const-string v3, "inviteevent"

    invoke-static {}, Lcom/google/api/services/plusi/model/InviteEventRequestJson;->getInstance()Lcom/google/api/services/plusi/model/InviteEventRequestJson;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/network/PlusiOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/json/EsJson;Lcom/google/android/apps/plus/json/EsJson;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 43
    iput-object p3, p0, Lcom/google/android/apps/plus/api/EventInviteOperation;->mEventId:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/google/android/apps/plus/api/EventInviteOperation;->mOwnerId:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lcom/google/android/apps/plus/api/EventInviteOperation;->mAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 46
    return-void
.end method


# virtual methods
.method protected handleResponse(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 63
    return-void
.end method

.method protected bridge synthetic populateRequest(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    check-cast p1, Lcom/google/api/services/plusi/model/InviteEventRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/api/EventInviteOperation;->populateRequest(Lcom/google/api/services/plusi/model/InviteEventRequest;)V

    return-void
.end method

.method protected populateRequest(Lcom/google/api/services/plusi/model/InviteEventRequest;)V
    .registers 3
    .parameter "request"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/plus/api/EventInviteOperation;->mEventId:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/api/services/plusi/model/InviteEventRequest;->eventId:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/google/android/apps/plus/api/EventInviteOperation;->mOwnerId:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/api/services/plusi/model/InviteEventRequest;->organizerId:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/google/android/apps/plus/api/EventInviteOperation;->mAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsPeopleData;->convertAudienceToSharingRoster(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/api/services/plusi/model/SharingRoster;

    move-result-object v0

    iput-object v0, p1, Lcom/google/api/services/plusi/model/InviteEventRequest;->inviteRoster:Lcom/google/api/services/plusi/model/SharingRoster;

    .line 56
    return-void
.end method
