.class public Lcom/google/android/apps/plus/api/CreateEventOperation;
.super Lcom/google/android/apps/plus/network/PlusiOperation;
.source "CreateEventOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/network/PlusiOperation",
        "<",
        "Lcom/google/api/services/plusi/model/PostActivityRequest;",
        "Lcom/google/api/services/plusi/model/GetActivitiesResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final EVENT_EMBED_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

.field private final mExternalId:Ljava/lang/String;

.field private final mPlusEvent:Lcom/google/api/services/plusi/model/PlusEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "PLUS_EVENT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EVENT"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "THING"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/api/CreateEventOperation;->EVENT_EMBED_TYPES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/api/services/plusi/model/PlusEvent;Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 16
    .parameter "context"
    .parameter "account"
    .parameter "event"
    .parameter "audience"
    .parameter "externalId"
    .parameter "intent"
    .parameter "listener"

    .prologue
    .line 56
    const-string v3, "postactivity"

    invoke-static {}, Lcom/google/api/services/plusi/model/PostActivityRequestJson;->getInstance()Lcom/google/api/services/plusi/model/PostActivityRequestJson;

    move-result-object v4

    invoke-static {}, Lcom/google/api/services/plusi/model/GetActivitiesResponseJson;->getInstance()Lcom/google/api/services/plusi/model/GetActivitiesResponseJson;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/network/PlusiOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/json/EsJson;Lcom/google/android/apps/plus/json/EsJson;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 58
    iput-object p3, p0, Lcom/google/android/apps/plus/api/CreateEventOperation;->mPlusEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    .line 59
    iput-object p4, p0, Lcom/google/android/apps/plus/api/CreateEventOperation;->mAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 60
    iput-object p5, p0, Lcom/google/android/apps/plus/api/CreateEventOperation;->mExternalId:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method protected bridge synthetic handleResponse(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    check-cast p1, Lcom/google/api/services/plusi/model/GetActivitiesResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/api/CreateEventOperation;->handleResponse(Lcom/google/api/services/plusi/model/GetActivitiesResponse;)V

    return-void
.end method

.method protected handleResponse(Lcom/google/api/services/plusi/model/GetActivitiesResponse;)V
    .registers 10
    .parameter "response"

    .prologue
    .line 88
    if-eqz p1, :cond_3e

    iget-object v4, p1, Lcom/google/api/services/plusi/model/GetActivitiesResponse;->stream:Lcom/google/api/services/plusi/model/Stream;

    if-eqz v4, :cond_3e

    iget-object v4, p1, Lcom/google/api/services/plusi/model/GetActivitiesResponse;->stream:Lcom/google/api/services/plusi/model/Stream;

    iget-object v4, v4, Lcom/google/api/services/plusi/model/Stream;->update:Ljava/util/List;

    if-eqz v4, :cond_3e

    .line 89
    iget-object v4, p1, Lcom/google/api/services/plusi/model/GetActivitiesResponse;->stream:Lcom/google/api/services/plusi/model/Stream;

    iget-object v4, v4, Lcom/google/api/services/plusi/model/Stream;->update:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 91
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_15
    if-ge v2, v0, :cond_3e

    .line 92
    iget-object v4, p1, Lcom/google/api/services/plusi/model/GetActivitiesResponse;->stream:Lcom/google/api/services/plusi/model/Stream;

    iget-object v4, v4, Lcom/google/api/services/plusi/model/Stream;->update:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/api/services/plusi/model/Update;

    .line 94
    .local v3, update:Lcom/google/api/services/plusi/model/Update;
    if-eqz v3, :cond_3f

    iget-object v4, v3, Lcom/google/api/services/plusi/model/Update;->embed:Lcom/google/api/services/plusi/model/EmbedClientItem;

    if-eqz v4, :cond_3f

    iget-object v4, v3, Lcom/google/api/services/plusi/model/Update;->embed:Lcom/google/api/services/plusi/model/EmbedClientItem;

    iget-object v4, v4, Lcom/google/api/services/plusi/model/EmbedClientItem;->plusEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    if-eqz v4, :cond_3f

    .line 95
    iget-object v4, v3, Lcom/google/api/services/plusi/model/Update;->embed:Lcom/google/api/services/plusi/model/EmbedClientItem;

    iget-object v1, v4, Lcom/google/api/services/plusi/model/EmbedClientItem;->plusEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    .line 97
    .local v1, event:Lcom/google/api/services/plusi/model/PlusEvent;
    if-eqz v1, :cond_3f

    .line 98
    iget-object v4, p0, Lcom/google/android/apps/plus/api/CreateEventOperation;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/apps/plus/api/CreateEventOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v6, v1, Lcom/google/api/services/plusi/model/PlusEvent;->id:Ljava/lang/String;

    iget-object v7, v3, Lcom/google/api/services/plusi/model/Update;->updateId:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7, v1}, Lcom/google/android/apps/plus/content/EsEventData;->insertEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/plusi/model/PlusEvent;)V

    .line 105
    .end local v0           #count:I
    .end local v1           #event:Lcom/google/api/services/plusi/model/PlusEvent;
    .end local v2           #i:I
    .end local v3           #update:Lcom/google/api/services/plusi/model/Update;
    :cond_3e
    return-void

    .line 91
    .restart local v0       #count:I
    .restart local v2       #i:I
    .restart local v3       #update:Lcom/google/api/services/plusi/model/Update;
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_15
.end method

.method protected bridge synthetic populateRequest(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    check-cast p1, Lcom/google/api/services/plusi/model/PostActivityRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/api/CreateEventOperation;->populateRequest(Lcom/google/api/services/plusi/model/PostActivityRequest;)V

    return-void
.end method

.method protected populateRequest(Lcom/google/api/services/plusi/model/PostActivityRequest;)V
    .registers 4
    .parameter "request"

    .prologue
    .line 68
    new-instance v0, Lcom/google/api/services/plusi/model/RequestsPostActivityRequestAttribution;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/RequestsPostActivityRequestAttribution;-><init>()V

    iput-object v0, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->attribution:Lcom/google/api/services/plusi/model/RequestsPostActivityRequestAttribution;

    .line 69
    iget-object v0, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->attribution:Lcom/google/api/services/plusi/model/RequestsPostActivityRequestAttribution;

    const-string v1, "Mobile"

    iput-object v1, v0, Lcom/google/api/services/plusi/model/RequestsPostActivityRequestAttribution;->androidAppName:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/plus/api/CreateEventOperation;->mExternalId:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->externalId:Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/google/android/apps/plus/api/CreateEventOperation;->mAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsPeopleData;->convertAudienceToSharingRoster(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/api/services/plusi/model/SharingRoster;

    move-result-object v0

    iput-object v0, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->sharingRoster:Lcom/google/api/services/plusi/model/SharingRoster;

    .line 76
    iget-object v0, p0, Lcom/google/android/apps/plus/api/CreateEventOperation;->mPlusEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/PlusEvent;->name:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->updateText:Ljava/lang/String;

    .line 78
    new-instance v0, Lcom/google/api/services/plusi/model/EmbedClientItem;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/EmbedClientItem;-><init>()V

    iput-object v0, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->embed:Lcom/google/api/services/plusi/model/EmbedClientItem;

    .line 79
    iget-object v0, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->embed:Lcom/google/api/services/plusi/model/EmbedClientItem;

    sget-object v1, Lcom/google/android/apps/plus/api/CreateEventOperation;->EVENT_EMBED_TYPES:Ljava/util/List;

    iput-object v1, v0, Lcom/google/api/services/plusi/model/EmbedClientItem;->type:Ljava/util/List;

    .line 80
    iget-object v0, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->embed:Lcom/google/api/services/plusi/model/EmbedClientItem;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/CreateEventOperation;->mPlusEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iput-object v1, v0, Lcom/google/api/services/plusi/model/EmbedClientItem;->plusEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    .line 81
    return-void
.end method
