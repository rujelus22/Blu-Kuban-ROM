.class public Lcom/google/android/apps/plus/api/EventReadOperation;
.super Lcom/google/android/apps/plus/network/PlusiOperation;
.source "EventReadOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/network/PlusiOperation",
        "<",
        "Lcom/google/api/services/plusi/model/EventReadRequest;",
        "Lcom/google/api/services/plusi/model/EventLeafResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final EVENT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mEventId:Ljava/lang/String;

.field private final mFetchNewer:Z

.field private final mInvitationToken:Ljava/lang/String;

.field private mPollingToken:Ljava/lang/String;

.field private final mResolveParameters:Z

.field private mResumeToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 67
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "polling_token"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "resume_token"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/api/EventReadOperation;->EVENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 18
    .parameter "context"
    .parameter "account"
    .parameter "eventId"
    .parameter "pollingToken"
    .parameter "resumeToken"
    .parameter "invitationToken"
    .parameter "fetchNewer"
    .parameter "intent"
    .parameter "listener"

    .prologue
    .line 78
    const-string v3, "eventread"

    invoke-static {}, Lcom/google/api/services/plusi/model/EventReadRequestJson;->getInstance()Lcom/google/api/services/plusi/model/EventReadRequestJson;

    move-result-object v4

    invoke-static {}, Lcom/google/api/services/plusi/model/EventLeafResponseJson;->getInstance()Lcom/google/api/services/plusi/model/EventLeafResponseJson;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/network/PlusiOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/json/EsJson;Lcom/google/android/apps/plus/json/EsJson;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 80
    iput-object p3, p0, Lcom/google/android/apps/plus/api/EventReadOperation;->mEventId:Ljava/lang/String;

    .line 81
    iput-object p4, p0, Lcom/google/android/apps/plus/api/EventReadOperation;->mPollingToken:Ljava/lang/String;

    .line 82
    iput-object p5, p0, Lcom/google/android/apps/plus/api/EventReadOperation;->mResumeToken:Ljava/lang/String;

    .line 83
    iput-object p6, p0, Lcom/google/android/apps/plus/api/EventReadOperation;->mInvitationToken:Ljava/lang/String;

    .line 84
    iput-boolean p7, p0, Lcom/google/android/apps/plus/api/EventReadOperation;->mFetchNewer:Z

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/api/EventReadOperation;->mResolveParameters:Z

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ZLandroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 16
    .parameter "context"
    .parameter "account"
    .parameter "eventId"
    .parameter "fetchNewer"
    .parameter "intent"
    .parameter "listener"

    .prologue
    const/4 v8, 0x0

    .line 90
    const-string v3, "eventread"

    invoke-static {}, Lcom/google/api/services/plusi/model/EventReadRequestJson;->getInstance()Lcom/google/api/services/plusi/model/EventReadRequestJson;

    move-result-object v4

    invoke-static {}, Lcom/google/api/services/plusi/model/EventLeafResponseJson;->getInstance()Lcom/google/api/services/plusi/model/EventLeafResponseJson;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/network/PlusiOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/json/EsJson;Lcom/google/android/apps/plus/json/EsJson;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 92
    iput-object p3, p0, Lcom/google/android/apps/plus/api/EventReadOperation;->mEventId:Ljava/lang/String;

    .line 93
    iput-object v8, p0, Lcom/google/android/apps/plus/api/EventReadOperation;->mPollingToken:Ljava/lang/String;

    .line 94
    iput-object v8, p0, Lcom/google/android/apps/plus/api/EventReadOperation;->mResumeToken:Ljava/lang/String;

    .line 95
    iput-object v8, p0, Lcom/google/android/apps/plus/api/EventReadOperation;->mInvitationToken:Ljava/lang/String;

    .line 96
    iput-boolean p4, p0, Lcom/google/android/apps/plus/api/EventReadOperation;->mFetchNewer:Z

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/api/EventReadOperation;->mResolveParameters:Z

    .line 98
    return-void
.end method


# virtual methods
.method protected bridge synthetic handleResponse(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    check-cast p1, Lcom/google/api/services/plusi/model/EventLeafResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/api/EventReadOperation;->handleResponse(Lcom/google/api/services/plusi/model/EventLeafResponse;)V

    return-void
.end method

.method protected handleResponse(Lcom/google/api/services/plusi/model/EventLeafResponse;)V
    .registers 33
    .parameter "response"

    .prologue
    .line 174
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/api/services/plusi/model/EventLeafResponse;->plusEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    .line 175
    .local v5, plusEvent:Lcom/google/api/services/plusi/model/PlusEvent;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/api/services/plusi/model/EventLeafResponse;->activityId:Ljava/lang/String;

    .line 176
    .local v4, activityId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/api/EventReadOperation;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/api/EventReadOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/api/EventReadOperation;->mEventId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/content/EsEventData;->getDisplayTime(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)J

    move-result-wide v10

    .line 179
    .local v10, displayTime:J
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/api/services/plusi/model/EventLeafResponse;->resumeToken:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27e

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/plus/api/EventReadOperation;->mFetchNewer:Z

    if-eqz v1, :cond_27b

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/api/EventReadOperation;->mResumeToken:Ljava/lang/String;

    .line 182
    .local v7, newResumeToken:Ljava/lang/String;
    :goto_2c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/api/EventReadOperation;->mResumeToken:Ljava/lang/String;

    if-eqz v1, :cond_38

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/plus/api/EventReadOperation;->mFetchNewer:Z

    if-eqz v1, :cond_284

    :cond_38
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/api/services/plusi/model/EventLeafResponse;->pollingToken:Ljava/lang/String;

    .line 184
    .local v6, newPollingToken:Ljava/lang/String;
    :goto_3c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/api/EventReadOperation;->mPollingToken:Ljava/lang/String;

    if-nez v1, :cond_48

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/api/EventReadOperation;->mResumeToken:Ljava/lang/String;

    if-eqz v1, :cond_28a

    :cond_48
    const/4 v9, 0x1

    .line 185
    .local v9, updatesOnly:Z
    :goto_49
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/plus/api/EventReadOperation;->mFetchNewer:Z

    if-nez v1, :cond_28d

    const/16 v28, 0x1

    .line 189
    .local v28, updateTime:Z
    :goto_51
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/plus/api/EventReadOperation;->mFetchNewer:Z

    if-eqz v1, :cond_78

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/api/EventReadOperation;->mPollingToken:Ljava/lang/String;

    if-eqz v1, :cond_78

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/api/services/plusi/model/EventLeafResponse;->resumeToken:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_78

    .line 190
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/api/EventReadOperation;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/api/EventReadOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/api/EventReadOperation;->mEventId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/content/EsEventData;->deleteEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 191
    const/16 v28, 0x1

    .line 194
    :cond_78
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v8, activities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/content/EsEventData$EventActivity;>;"
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/api/services/plusi/model/EventLeafResponse;->photosData:Ljava/util/List;

    if-eqz v1, :cond_291

    .line 196
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/api/services/plusi/model/EventLeafResponse;->photosData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_8b
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_291

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/google/api/services/plusi/model/ReadResponsePhotosData;

    .line 197
    .local v26, photoData:Lcom/google/api/services/plusi/model/ReadResponsePhotosData;
    move-object/from16 v0, v26

    iget-object v1, v0, Lcom/google/api/services/plusi/model/ReadResponsePhotosData;->photos:Ljava/util/List;

    if-eqz v1, :cond_8b

    .line 198
    move-object/from16 v0, v26

    iget-object v1, v0, Lcom/google/api/services/plusi/model/ReadResponsePhotosData;->photos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :cond_a5
    :goto_a5
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8b

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/google/api/services/plusi/model/DataPhoto;

    .line 199
    .local v25, photo:Lcom/google/api/services/plusi/model/DataPhoto;
    new-instance v12, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;

    invoke-direct {v12}, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;-><init>()V

    .line 200
    .local v12, activity:Lcom/google/android/apps/plus/content/EsEventData$EventActivity;
    const/16 v1, 0x64

    iput v1, v12, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->activityType:I

    .line 203
    move-object/from16 v0, v25

    iget-object v1, v0, Lcom/google/api/services/plusi/model/DataPhoto;->uploadTimestampSeconds:Ljava/lang/Double;

    if-eqz v1, :cond_d2

    .line 204
    move-object/from16 v0, v25

    iget-object v1, v0, Lcom/google/api/services/plusi/model/DataPhoto;->uploadTimestampSeconds:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide v29, 0x408f400000000000L

    mul-double v1, v1, v29

    double-to-long v1, v1

    iput-wide v1, v12, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->timestamp:J

    .line 207
    :cond_d2
    move-object/from16 v0, v25

    iget-object v1, v0, Lcom/google/api/services/plusi/model/DataPhoto;->owner:Lcom/google/api/services/plusi/model/DataUser;

    if-eqz v1, :cond_e8

    .line 208
    move-object/from16 v0, v25

    iget-object v1, v0, Lcom/google/api/services/plusi/model/DataPhoto;->owner:Lcom/google/api/services/plusi/model/DataUser;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/DataUser;->id:Ljava/lang/String;

    iput-object v1, v12, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->ownerGaiaId:Ljava/lang/String;

    .line 209
    move-object/from16 v0, v25

    iget-object v1, v0, Lcom/google/api/services/plusi/model/DataPhoto;->owner:Lcom/google/api/services/plusi/model/DataUser;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/DataUser;->displayName:Ljava/lang/String;

    iput-object v1, v12, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->ownerName:Ljava/lang/String;

    .line 212
    :cond_e8
    new-instance v18, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;

    invoke-direct/range {v18 .. v18}, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;-><init>()V

    .line 213
    .local v18, eventPhoto:Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;
    move-object/from16 v0, v25

    iget-object v1, v0, Lcom/google/api/services/plusi/model/DataPhoto;->id:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v1, v0, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->id:Ljava/lang/String;

    .line 214
    move-object/from16 v0, v25

    iget-object v1, v0, Lcom/google/api/services/plusi/model/DataPhoto;->owner:Lcom/google/api/services/plusi/model/DataUser;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/DataUser;->id:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v1, v0, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->ownerId:Ljava/lang/String;

    .line 215
    move-object/from16 v0, v25

    iget-object v1, v0, Lcom/google/api/services/plusi/model/DataPhoto;->caption:Ljava/lang/String;

    if-eqz v1, :cond_10d

    .line 216
    move-object/from16 v0, v25

    iget-object v1, v0, Lcom/google/api/services/plusi/model/DataPhoto;->caption:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v1, v0, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->description:Ljava/lang/String;

    .line 218
    :cond_10d
    move-object/from16 v0, v25

    iget-object v1, v0, Lcom/google/api/services/plusi/model/DataPhoto;->title:Ljava/lang/String;

    if-eqz v1, :cond_11b

    .line 219
    move-object/from16 v0, v25

    iget-object v1, v0, Lcom/google/api/services/plusi/model/DataPhoto;->title:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v1, v0, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->title:Ljava/lang/String;

    .line 221
    :cond_11b
    move-object/from16 v0, v25

    iget-object v1, v0, Lcom/google/api/services/plusi/model/DataPhoto;->timestampSeconds:Ljava/lang/Double;

    if-eqz v1, :cond_135

    .line 222
    move-object/from16 v0, v25

    iget-object v1, v0, Lcom/google/api/services/plusi/model/DataPhoto;->timestampSeconds:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide v29, 0x408f400000000000L

    mul-double v1, v1, v29

    double-to-long v1, v1

    move-object/from16 v0, v18

    iput-wide v1, v0, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->timestamp:J

    .line 224
    :cond_135
    move-object/from16 v0, v25

    iget-object v1, v0, Lcom/google/api/services/plusi/model/DataPhoto;->totalComments:Ljava/lang/Integer;

    if-eqz v1, :cond_147

    .line 225
    move-object/from16 v0, v25

    iget-object v1, v0, Lcom/google/api/services/plusi/model/DataPhoto;->totalComments:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object/from16 v0, v18

    iput v1, v0, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->totalComments:I

    .line 227
    :cond_147
    move-object/from16 v0, v25

    iget-object v1, v0, Lcom/google/api/services/plusi/model/DataPhoto;->original:Lcom/google/api/services/plusi/model/DataImage;

    if-eqz v1, :cond_183

    .line 228
    move-object/from16 v0, v25

    iget-object v1, v0, Lcom/google/api/services/plusi/model/DataPhoto;->original:Lcom/google/api/services/plusi/model/DataImage;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/DataImage;->url:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v1, v0, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->url:Ljava/lang/String;

    .line 229
    move-object/from16 v0, v25

    iget-object v1, v0, Lcom/google/api/services/plusi/model/DataPhoto;->original:Lcom/google/api/services/plusi/model/DataImage;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/DataImage;->width:Ljava/lang/Integer;

    if-eqz v1, :cond_16d

    .line 230
    move-object/from16 v0, v25

    iget-object v1, v0, Lcom/google/api/services/plusi/model/DataPhoto;->original:Lcom/google/api/services/plusi/model/DataImage;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/DataImage;->width:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object/from16 v0, v18

    iput v1, v0, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->width:I

    .line 232
    :cond_16d
    move-object/from16 v0, v25

    iget-object v1, v0, Lcom/google/api/services/plusi/model/DataPhoto;->original:Lcom/google/api/services/plusi/model/DataImage;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/DataImage;->height:Ljava/lang/Integer;

    if-eqz v1, :cond_183

    .line 233
    move-object/from16 v0, v25

    iget-object v1, v0, Lcom/google/api/services/plusi/model/DataPhoto;->original:Lcom/google/api/services/plusi/model/DataImage;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/DataImage;->height:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object/from16 v0, v18

    iput v1, v0, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->height:I

    .line 236
    :cond_183
    move-object/from16 v0, v25

    iget-object v1, v0, Lcom/google/api/services/plusi/model/DataPhoto;->viewerCanComment:Ljava/lang/Boolean;

    if-eqz v1, :cond_19f

    move-object/from16 v0, v25

    iget-object v1, v0, Lcom/google/api/services/plusi/model/DataPhoto;->viewerCanComment:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_19f

    .line 237
    move-object/from16 v0, v25

    iget-object v1, v0, Lcom/google/api/services/plusi/model/DataPhoto;->viewerCanComment:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move-object/from16 v0, v18

    iput-boolean v1, v0, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->viewerCanComment:Z

    .line 239
    :cond_19f
    move-object/from16 v0, v25

    iget-object v1, v0, Lcom/google/api/services/plusi/model/DataPhoto;->viewerCanTag:Ljava/lang/Boolean;

    if-eqz v1, :cond_1bb

    move-object/from16 v0, v25

    iget-object v1, v0, Lcom/google/api/services/plusi/model/DataPhoto;->viewerCanTag:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1bb

    .line 240
    move-object/from16 v0, v25

    iget-object v1, v0, Lcom/google/api/services/plusi/model/DataPhoto;->viewerCanTag:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move-object/from16 v0, v18

    iput-boolean v1, v0, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->viewerCanTag:Z

    .line 243
    :cond_1bb
    new-instance v19, Lcom/google/android/apps/plus/content/EsEventData$EventPhotoAlbum;

    invoke-direct/range {v19 .. v19}, Lcom/google/android/apps/plus/content/EsEventData$EventPhotoAlbum;-><init>()V

    .line 244
    .local v19, eventPhotoAlbum:Lcom/google/android/apps/plus/content/EsEventData$EventPhotoAlbum;
    move-object/from16 v0, v25

    iget-object v13, v0, Lcom/google/api/services/plusi/model/DataPhoto;->album:Lcom/google/api/services/plusi/model/DataAlbum;

    .line 245
    .local v13, album:Lcom/google/api/services/plusi/model/DataAlbum;
    iget-object v1, v13, Lcom/google/api/services/plusi/model/DataAlbum;->id:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v1, v0, Lcom/google/android/apps/plus/content/EsEventData$EventPhotoAlbum;->id:Ljava/lang/String;

    .line 246
    iget-object v1, v13, Lcom/google/api/services/plusi/model/DataAlbum;->owner:Lcom/google/api/services/plusi/model/DataUser;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/DataUser;->id:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v1, v0, Lcom/google/android/apps/plus/content/EsEventData$EventPhotoAlbum;->ownerId:Ljava/lang/String;

    .line 247
    iget-object v1, v13, Lcom/google/api/services/plusi/model/DataAlbum;->photoCount:Ljava/lang/Integer;

    if-eqz v1, :cond_1e0

    .line 248
    iget-object v1, v13, Lcom/google/api/services/plusi/model/DataAlbum;->photoCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object/from16 v0, v19

    iput v1, v0, Lcom/google/android/apps/plus/content/EsEventData$EventPhotoAlbum;->photoCount:I

    .line 250
    :cond_1e0
    iget-object v1, v13, Lcom/google/api/services/plusi/model/DataAlbum;->timestampSeconds:Ljava/lang/String;

    if-eqz v1, :cond_1f2

    .line 251
    iget-object v1, v13, Lcom/google/api/services/plusi/model/DataAlbum;->timestampSeconds:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v29, 0x3e8

    mul-long v1, v1, v29

    move-object/from16 v0, v19

    iput-wide v1, v0, Lcom/google/android/apps/plus/content/EsEventData$EventPhotoAlbum;->timestamp:J

    .line 254
    :cond_1f2
    iget-object v1, v13, Lcom/google/api/services/plusi/model/DataAlbum;->title:Ljava/lang/String;

    if-eqz v1, :cond_1fc

    .line 255
    iget-object v1, v13, Lcom/google/api/services/plusi/model/DataAlbum;->title:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v1, v0, Lcom/google/android/apps/plus/content/EsEventData$EventPhotoAlbum;->title:Ljava/lang/String;

    .line 257
    :cond_1fc
    sget-object v1, Lcom/google/android/apps/plus/content/EsEventData;->EVENT_PHOTO_ALBUM_JSON:Lcom/google/android/apps/plus/json/EsJson;

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/json/EsJson;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    iput-object v1, v0, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->albumData:Ljava/lang/String;

    .line 260
    new-instance v20, Lcom/google/android/apps/plus/content/EsEventData$EventPhotoPlusOne;

    invoke-direct/range {v20 .. v20}, Lcom/google/android/apps/plus/content/EsEventData$EventPhotoPlusOne;-><init>()V

    .line 261
    .local v20, eventPhotoPlusOne:Lcom/google/android/apps/plus/content/EsEventData$EventPhotoPlusOne;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataPhoto;->plusOne:Lcom/google/api/services/plusi/model/DataPlusOne;

    move-object/from16 v27, v0

    .line 262
    .local v27, plusOne:Lcom/google/api/services/plusi/model/DataPlusOne;
    if-eqz v27, :cond_252

    .line 263
    move-object/from16 v0, v27

    iget-object v1, v0, Lcom/google/api/services/plusi/model/DataPlusOne;->id:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v1, v0, Lcom/google/android/apps/plus/content/EsEventData$EventPhotoPlusOne;->id:Ljava/lang/String;

    .line 264
    move-object/from16 v0, v27

    iget-object v1, v0, Lcom/google/api/services/plusi/model/DataPlusOne;->globalCount:Ljava/lang/Integer;

    if-eqz v1, :cond_240

    .line 265
    move-object/from16 v0, v25

    iget-object v1, v0, Lcom/google/api/services/plusi/model/DataPhoto;->plusOne:Lcom/google/api/services/plusi/model/DataPlusOne;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/DataPlusOne;->globalCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    move-object/from16 v0, v18

    iput-wide v1, v0, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->totalPlusOnes:J

    .line 266
    move-object/from16 v0, v25

    iget-object v1, v0, Lcom/google/api/services/plusi/model/DataPhoto;->plusOne:Lcom/google/api/services/plusi/model/DataPlusOne;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/DataPlusOne;->globalCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object/from16 v0, v20

    iput v1, v0, Lcom/google/android/apps/plus/content/EsEventData$EventPhotoPlusOne;->count:I

    .line 268
    :cond_240
    move-object/from16 v0, v27

    iget-object v1, v0, Lcom/google/api/services/plusi/model/DataPlusOne;->isPlusonedByViewer:Ljava/lang/Boolean;

    if-eqz v1, :cond_252

    .line 269
    move-object/from16 v0, v27

    iget-object v1, v0, Lcom/google/api/services/plusi/model/DataPlusOne;->isPlusonedByViewer:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move-object/from16 v0, v20

    iput-boolean v1, v0, Lcom/google/android/apps/plus/content/EsEventData$EventPhotoPlusOne;->plusoneByMe:Z

    .line 272
    :cond_252
    sget-object v1, Lcom/google/android/apps/plus/content/EsEventData;->EVENT_PHOTO_PLUS_ONE_JSON:Lcom/google/android/apps/plus/json/EsJson;

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/json/EsJson;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    iput-object v1, v0, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->plusoneData:Ljava/lang/String;

    .line 276
    iget-object v1, v12, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->ownerGaiaId:Ljava/lang/String;

    if-eqz v1, :cond_a5

    move-object/from16 v0, v18

    iget-object v1, v0, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->url:Ljava/lang/String;

    if-eqz v1, :cond_a5

    .line 278
    if-eqz v28, :cond_26c

    .line 279
    iget-wide v10, v12, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->timestamp:J

    .line 281
    :cond_26c
    sget-object v1, Lcom/google/android/apps/plus/content/EsEventData;->EVENT_PHOTO_JSON:Lcom/google/android/apps/plus/json/EsJson;

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/json/EsJson;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->data:Ljava/lang/String;

    .line 282
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a5

    .line 179
    .end local v6           #newPollingToken:Ljava/lang/String;
    .end local v7           #newResumeToken:Ljava/lang/String;
    .end local v8           #activities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/content/EsEventData$EventActivity;>;"
    .end local v9           #updatesOnly:Z
    .end local v12           #activity:Lcom/google/android/apps/plus/content/EsEventData$EventActivity;
    .end local v13           #album:Lcom/google/api/services/plusi/model/DataAlbum;
    .end local v18           #eventPhoto:Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;
    .end local v19           #eventPhotoAlbum:Lcom/google/android/apps/plus/content/EsEventData$EventPhotoAlbum;
    .end local v20           #eventPhotoPlusOne:Lcom/google/android/apps/plus/content/EsEventData$EventPhotoPlusOne;
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v25           #photo:Lcom/google/api/services/plusi/model/DataPhoto;
    .end local v26           #photoData:Lcom/google/api/services/plusi/model/ReadResponsePhotosData;
    .end local v27           #plusOne:Lcom/google/api/services/plusi/model/DataPlusOne;
    .end local v28           #updateTime:Z
    :cond_27b
    const/4 v7, 0x0

    goto/16 :goto_2c

    :cond_27e
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/api/services/plusi/model/EventLeafResponse;->resumeToken:Ljava/lang/String;

    goto/16 :goto_2c

    .line 182
    .restart local v7       #newResumeToken:Ljava/lang/String;
    :cond_284
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/api/EventReadOperation;->mPollingToken:Ljava/lang/String;

    goto/16 :goto_3c

    .line 184
    .restart local v6       #newPollingToken:Ljava/lang/String;
    :cond_28a
    const/4 v9, 0x0

    goto/16 :goto_49

    .line 185
    .restart local v9       #updatesOnly:Z
    :cond_28d
    const/16 v28, 0x0

    goto/16 :goto_51

    .line 289
    .restart local v8       #activities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/content/EsEventData$EventActivity;>;"
    .restart local v28       #updateTime:Z
    :cond_291
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/api/services/plusi/model/EventLeafResponse;->comments:Ljava/util/List;

    if-eqz v1, :cond_30d

    .line 290
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/api/services/plusi/model/EventLeafResponse;->comments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :cond_29f
    :goto_29f
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30d

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/api/services/plusi/model/Comment;

    .line 291
    .local v14, comment:Lcom/google/api/services/plusi/model/Comment;
    new-instance v12, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;

    invoke-direct {v12}, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;-><init>()V

    .line 292
    .restart local v12       #activity:Lcom/google/android/apps/plus/content/EsEventData$EventActivity;
    const/4 v1, 0x5

    iput v1, v12, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->activityType:I

    .line 293
    iget-object v1, v14, Lcom/google/api/services/plusi/model/Comment;->timestamp:Ljava/lang/Long;

    if-eqz v1, :cond_2bf

    .line 294
    iget-object v1, v14, Lcom/google/api/services/plusi/model/Comment;->timestamp:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v12, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->timestamp:J

    .line 296
    :cond_2bf
    iget-object v1, v14, Lcom/google/api/services/plusi/model/Comment;->obfuscatedId:Ljava/lang/String;

    iput-object v1, v12, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->ownerGaiaId:Ljava/lang/String;

    .line 297
    iget-object v1, v14, Lcom/google/api/services/plusi/model/Comment;->authorName:Ljava/lang/String;

    iput-object v1, v12, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->ownerName:Ljava/lang/String;

    .line 299
    new-instance v15, Lcom/google/android/apps/plus/content/EsEventData$EventComment;

    invoke-direct {v15}, Lcom/google/android/apps/plus/content/EsEventData$EventComment;-><init>()V

    .line 300
    .local v15, eventComment:Lcom/google/android/apps/plus/content/EsEventData$EventComment;
    iget-object v1, v14, Lcom/google/api/services/plusi/model/Comment;->commentId:Ljava/lang/String;

    iput-object v1, v15, Lcom/google/android/apps/plus/content/EsEventData$EventComment;->commentId:Ljava/lang/String;

    .line 301
    iget-object v1, v14, Lcom/google/api/services/plusi/model/Comment;->text:Ljava/lang/String;

    iput-object v1, v15, Lcom/google/android/apps/plus/content/EsEventData$EventComment;->text:Ljava/lang/String;

    .line 302
    iget-object v1, v14, Lcom/google/api/services/plusi/model/Comment;->isOwnedByViewer:Ljava/lang/Boolean;

    if-eqz v1, :cond_2e0

    .line 303
    iget-object v1, v14, Lcom/google/api/services/plusi/model/Comment;->isOwnedByViewer:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v15, Lcom/google/android/apps/plus/content/EsEventData$EventComment;->ownedByViewer:Z

    .line 305
    :cond_2e0
    iget-object v1, v14, Lcom/google/api/services/plusi/model/Comment;->plusone:Lcom/google/api/services/plusi/model/DataPlusOne;

    if-eqz v1, :cond_2f5

    iget-object v1, v14, Lcom/google/api/services/plusi/model/Comment;->plusone:Lcom/google/api/services/plusi/model/DataPlusOne;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/DataPlusOne;->globalCount:Ljava/lang/Integer;

    if-eqz v1, :cond_2f5

    .line 306
    iget-object v1, v14, Lcom/google/api/services/plusi/model/Comment;->plusone:Lcom/google/api/services/plusi/model/DataPlusOne;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/DataPlusOne;->globalCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v15, Lcom/google/android/apps/plus/content/EsEventData$EventComment;->totalPlusOnes:J

    .line 310
    :cond_2f5
    iget-object v1, v12, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->ownerGaiaId:Ljava/lang/String;

    if-eqz v1, :cond_29f

    iget-object v1, v15, Lcom/google/android/apps/plus/content/EsEventData$EventComment;->text:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29f

    .line 311
    sget-object v1, Lcom/google/android/apps/plus/content/EsEventData;->EVENT_COMMENT_JSON:Lcom/google/android/apps/plus/json/EsJson;

    invoke-virtual {v1, v15}, Lcom/google/android/apps/plus/json/EsJson;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->data:Ljava/lang/String;

    .line 312
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29f

    .line 317
    .end local v12           #activity:Lcom/google/android/apps/plus/content/EsEventData$EventActivity;
    .end local v14           #comment:Lcom/google/api/services/plusi/model/Comment;
    .end local v15           #eventComment:Lcom/google/android/apps/plus/content/EsEventData$EventComment;
    .end local v22           #i$:Ljava/util/Iterator;
    :cond_30d
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/api/services/plusi/model/EventLeafResponse;->frames:Ljava/util/List;

    if-eqz v1, :cond_3e2

    .line 318
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/api/services/plusi/model/EventLeafResponse;->frames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_31b
    :goto_31b
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e2

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/google/api/services/plusi/model/EventFrame;

    .line 319
    .local v21, frame:Lcom/google/api/services/plusi/model/EventFrame;
    new-instance v12, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;

    invoke-direct {v12}, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;-><init>()V

    .line 320
    .restart local v12       #activity:Lcom/google/android/apps/plus/content/EsEventData$EventActivity;
    const-string v1, "INVITED"

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/api/services/plusi/model/EventFrame;->verbType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_398

    .line 321
    const/4 v1, 0x2

    iput v1, v12, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->activityType:I

    .line 333
    :goto_33b
    move-object/from16 v0, v21

    iget-object v1, v0, Lcom/google/api/services/plusi/model/EventFrame;->lastTimeMillis:Ljava/lang/Long;

    if-eqz v1, :cond_34b

    .line 334
    move-object/from16 v0, v21

    iget-object v1, v0, Lcom/google/api/services/plusi/model/EventFrame;->lastTimeMillis:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v12, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->timestamp:J

    .line 337
    :cond_34b
    new-instance v16, Lcom/google/android/apps/plus/content/EsEventData$EventCoalescedFrame;

    invoke-direct/range {v16 .. v16}, Lcom/google/android/apps/plus/content/EsEventData$EventCoalescedFrame;-><init>()V

    .line 338
    .local v16, eventFrame:Lcom/google/android/apps/plus/content/EsEventData$EventCoalescedFrame;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/google/android/apps/plus/content/EsEventData$EventCoalescedFrame;->people:Ljava/util/List;

    .line 340
    move-object/from16 v0, v21

    iget-object v1, v0, Lcom/google/api/services/plusi/model/EventFrame;->person:Ljava/util/List;

    if-eqz v1, :cond_3c9

    .line 341
    move-object/from16 v0, v21

    iget-object v1, v0, Lcom/google/api/services/plusi/model/EventFrame;->person:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23       #i$:Ljava/util/Iterator;
    :cond_367
    :goto_367
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c9

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/google/api/services/plusi/model/EmbedsPerson;

    .line 342
    .local v24, person:Lcom/google/api/services/plusi/model/EmbedsPerson;
    move-object/from16 v0, v24

    iget-object v1, v0, Lcom/google/api/services/plusi/model/EmbedsPerson;->ownerObfuscatedId:Ljava/lang/String;

    if-eqz v1, :cond_367

    .line 343
    new-instance v17, Lcom/google/android/apps/plus/content/EsEventData$EventPerson;

    invoke-direct/range {v17 .. v17}, Lcom/google/android/apps/plus/content/EsEventData$EventPerson;-><init>()V

    .line 344
    .local v17, eventPerson:Lcom/google/android/apps/plus/content/EsEventData$EventPerson;
    move-object/from16 v0, v24

    iget-object v1, v0, Lcom/google/api/services/plusi/model/EmbedsPerson;->ownerObfuscatedId:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v1, v0, Lcom/google/android/apps/plus/content/EsEventData$EventPerson;->gaiaId:Ljava/lang/String;

    .line 345
    move-object/from16 v0, v24

    iget-object v1, v0, Lcom/google/api/services/plusi/model/EmbedsPerson;->name:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v1, v0, Lcom/google/android/apps/plus/content/EsEventData$EventPerson;->name:Ljava/lang/String;

    .line 346
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/google/android/apps/plus/content/EsEventData$EventCoalescedFrame;->people:Ljava/util/List;

    move-object/from16 v0, v17

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_367

    .line 322
    .end local v16           #eventFrame:Lcom/google/android/apps/plus/content/EsEventData$EventCoalescedFrame;
    .end local v17           #eventPerson:Lcom/google/android/apps/plus/content/EsEventData$EventPerson;
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v24           #person:Lcom/google/api/services/plusi/model/EmbedsPerson;
    :cond_398
    const-string v1, "RSVP_NO"

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/api/services/plusi/model/EventFrame;->verbType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a8

    .line 323
    const/4 v1, 0x3

    iput v1, v12, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->activityType:I

    goto :goto_33b

    .line 324
    :cond_3a8
    const-string v1, "RSVP_YES"

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/api/services/plusi/model/EventFrame;->verbType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b8

    .line 325
    const/4 v1, 0x4

    iput v1, v12, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->activityType:I

    goto :goto_33b

    .line 326
    :cond_3b8
    const-string v1, "CHECKIN"

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/api/services/plusi/model/EventFrame;->verbType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31b

    .line 327
    const/4 v1, 0x1

    iput v1, v12, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->activityType:I

    goto/16 :goto_33b

    .line 352
    .restart local v16       #eventFrame:Lcom/google/android/apps/plus/content/EsEventData$EventCoalescedFrame;
    :cond_3c9
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/google/android/apps/plus/content/EsEventData$EventCoalescedFrame;->people:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_31b

    .line 353
    sget-object v1, Lcom/google/android/apps/plus/content/EsEventData;->EVENT_COALESCED_FRAME_JSON:Lcom/google/android/apps/plus/json/EsJson;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/json/EsJson;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->data:Ljava/lang/String;

    .line 354
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_31b

    .line 359
    .end local v12           #activity:Lcom/google/android/apps/plus/content/EsEventData$EventActivity;
    .end local v16           #eventFrame:Lcom/google/android/apps/plus/content/EsEventData$EventCoalescedFrame;
    .end local v21           #frame:Lcom/google/api/services/plusi/model/EventFrame;
    :cond_3e2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/api/EventReadOperation;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/api/EventReadOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/api/EventReadOperation;->mEventId:Ljava/lang/String;

    invoke-static/range {v1 .. v11}, Lcom/google/android/apps/plus/content/EsEventData;->updateEventActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/plusi/model/PlusEvent;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZJ)V

    .line 361
    return-void
.end method

.method protected onHttpOperationComplete(ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 7
    .parameter "errorCode"
    .parameter "reasonPhrase"
    .parameter "ex"

    .prologue
    .line 365
    const/16 v0, 0x194

    if-ne p1, v0, :cond_e

    .line 366
    iget-object v0, p0, Lcom/google/android/apps/plus/api/EventReadOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/EventReadOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/EventReadOperation;->mEventId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/content/EsEventData;->deleteEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 376
    :cond_d
    :goto_d
    return-void

    .line 367
    :cond_e
    const/16 v0, 0x190

    if-lt p1, v0, :cond_d

    .line 369
    iget-object v0, p0, Lcom/google/android/apps/plus/api/EventReadOperation;->mEventId:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/EventReadOperation;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/apps/plus/phone/InstantUpload;->getInstantShareEventId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 370
    const-string v0, "HttpTransaction"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 371
    const-string v0, "HttpTransaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EVENT_READ] received error: "

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

    .line 373
    :cond_47
    iget-object v0, p0, Lcom/google/android/apps/plus/api/EventReadOperation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsEventData;->disableInstantShare(Landroid/content/Context;)V

    goto :goto_d
.end method

.method protected bridge synthetic populateRequest(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    check-cast p1, Lcom/google/api/services/plusi/model/EventReadRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/api/EventReadOperation;->populateRequest(Lcom/google/api/services/plusi/model/EventReadRequest;)V

    return-void
.end method

.method protected populateRequest(Lcom/google/api/services/plusi/model/EventReadRequest;)V
    .registers 16
    .parameter "request"

    .prologue
    const/4 v13, 0x1

    .line 102
    iget-boolean v9, p0, Lcom/google/android/apps/plus/api/EventReadOperation;->mResolveParameters:Z

    if-eqz v9, :cond_28

    .line 103
    iget-object v9, p0, Lcom/google/android/apps/plus/api/EventReadOperation;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/google/android/apps/plus/api/EventReadOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v11, p0, Lcom/google/android/apps/plus/api/EventReadOperation;->mEventId:Ljava/lang/String;

    sget-object v12, Lcom/google/android/apps/plus/api/EventReadOperation;->EVENT_PROJECTION:[Ljava/lang/String;

    invoke-static {v9, v10, v11, v12}, Lcom/google/android/apps/plus/content/EsEventData;->getEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 105
    .local v1, cursor:Landroid/database/Cursor;
    :try_start_11
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_25

    .line 106
    const/4 v9, 0x0

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/google/android/apps/plus/api/EventReadOperation;->mPollingToken:Ljava/lang/String;

    .line 107
    const/4 v9, 0x1

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/google/android/apps/plus/api/EventReadOperation;->mResumeToken:Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_11 .. :try_end_25} :catchall_a5

    .line 110
    :cond_25
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 114
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_28
    new-instance v8, Lcom/google/api/services/plusi/model/ReadOptionsUpdateOptions;

    invoke-direct {v8}, Lcom/google/api/services/plusi/model/ReadOptionsUpdateOptions;-><init>()V

    .line 115
    .local v8, updateOptions:Lcom/google/api/services/plusi/model/ReadOptionsUpdateOptions;
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v8, Lcom/google/api/services/plusi/model/ReadOptionsUpdateOptions;->includeActivityId:Ljava/lang/Boolean;

    .line 117
    new-instance v3, Lcom/google/api/services/plusi/model/ReadOptionsFramesOptions;

    invoke-direct {v3}, Lcom/google/api/services/plusi/model/ReadOptionsFramesOptions;-><init>()V

    .line 118
    .local v3, framesOptions:Lcom/google/api/services/plusi/model/ReadOptionsFramesOptions;
    const/16 v9, 0x3e8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v3, Lcom/google/api/services/plusi/model/ReadOptionsFramesOptions;->maxFrames:Ljava/lang/Integer;

    .line 119
    new-instance v0, Lcom/google/api/services/plusi/model/ReadOptionsCommentsOptions;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/ReadOptionsCommentsOptions;-><init>()V

    .line 120
    .local v0, commentOptions:Lcom/google/api/services/plusi/model/ReadOptionsCommentsOptions;
    const/16 v9, 0x1f4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v0, Lcom/google/api/services/plusi/model/ReadOptionsCommentsOptions;->maxComments:Ljava/lang/Integer;

    .line 121
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v5, photoOptions:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plusi/model/ReadOptionsPhotosOptions;>;"
    new-instance v4, Lcom/google/api/services/plusi/model/ReadOptionsPhotosOptions;

    invoke-direct {v4}, Lcom/google/api/services/plusi/model/ReadOptionsPhotosOptions;-><init>()V

    .line 125
    .local v4, photoOption:Lcom/google/api/services/plusi/model/ReadOptionsPhotosOptions;
    const/16 v9, 0x32

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v4, Lcom/google/api/services/plusi/model/ReadOptionsPhotosOptions;->maxPhotos:Ljava/lang/Integer;

    .line 126
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v2, Lcom/google/api/services/plusi/model/EventSelector;

    invoke-direct {v2}, Lcom/google/api/services/plusi/model/EventSelector;-><init>()V

    .line 129
    .local v2, eventSelector:Lcom/google/api/services/plusi/model/EventSelector;
    iget-object v9, p0, Lcom/google/android/apps/plus/api/EventReadOperation;->mEventId:Ljava/lang/String;

    iput-object v9, v2, Lcom/google/api/services/plusi/model/EventSelector;->eventId:Ljava/lang/String;

    .line 130
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v7, readOptions:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plusi/model/ReadOptions;>;"
    new-instance v6, Lcom/google/api/services/plusi/model/ReadOptions;

    invoke-direct {v6}, Lcom/google/api/services/plusi/model/ReadOptions;-><init>()V

    .line 132
    .local v6, readOption:Lcom/google/api/services/plusi/model/ReadOptions;
    iput-object v5, v6, Lcom/google/api/services/plusi/model/ReadOptions;->photosOptions:Ljava/util/List;

    .line 133
    iput-object v3, v6, Lcom/google/api/services/plusi/model/ReadOptions;->framesOptions:Lcom/google/api/services/plusi/model/ReadOptionsFramesOptions;

    .line 134
    iput-object v0, v6, Lcom/google/api/services/plusi/model/ReadOptions;->commentsOptions:Lcom/google/api/services/plusi/model/ReadOptionsCommentsOptions;

    .line 135
    iput-object v8, v6, Lcom/google/api/services/plusi/model/ReadOptions;->eventUpdateOptions:Lcom/google/api/services/plusi/model/ReadOptionsUpdateOptions;

    .line 136
    const-string v9, "LIST"

    iput-object v9, v6, Lcom/google/api/services/plusi/model/ReadOptions;->responseFormat:Ljava/lang/String;

    .line 137
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v6, Lcom/google/api/services/plusi/model/ReadOptions;->includePlusEvent:Ljava/lang/Boolean;

    .line 138
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v6, Lcom/google/api/services/plusi/model/ReadOptions;->resolvePersons:Ljava/lang/Boolean;

    .line 139
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    iput-object v7, p1, Lcom/google/api/services/plusi/model/EventReadRequest;->readOptions:Ljava/util/List;

    .line 142
    iput-object v2, p1, Lcom/google/api/services/plusi/model/EventReadRequest;->eventSelector:Lcom/google/api/services/plusi/model/EventSelector;

    .line 143
    iget-object v9, p0, Lcom/google/android/apps/plus/api/EventReadOperation;->mInvitationToken:Ljava/lang/String;

    iput-object v9, p1, Lcom/google/api/services/plusi/model/EventReadRequest;->invitationToken:Ljava/lang/String;

    .line 146
    iget-boolean v9, p0, Lcom/google/android/apps/plus/api/EventReadOperation;->mFetchNewer:Z

    if-nez v9, :cond_a0

    iget-object v9, p0, Lcom/google/android/apps/plus/api/EventReadOperation;->mResumeToken:Ljava/lang/String;

    if-nez v9, :cond_aa

    .line 147
    :cond_a0
    iget-object v9, p0, Lcom/google/android/apps/plus/api/EventReadOperation;->mPollingToken:Ljava/lang/String;

    iput-object v9, p1, Lcom/google/api/services/plusi/model/EventReadRequest;->pollingToken:Ljava/lang/String;

    .line 151
    :goto_a4
    return-void

    .line 110
    .end local v0           #commentOptions:Lcom/google/api/services/plusi/model/ReadOptionsCommentsOptions;
    .end local v2           #eventSelector:Lcom/google/api/services/plusi/model/EventSelector;
    .end local v3           #framesOptions:Lcom/google/api/services/plusi/model/ReadOptionsFramesOptions;
    .end local v4           #photoOption:Lcom/google/api/services/plusi/model/ReadOptionsPhotosOptions;
    .end local v5           #photoOptions:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plusi/model/ReadOptionsPhotosOptions;>;"
    .end local v6           #readOption:Lcom/google/api/services/plusi/model/ReadOptions;
    .end local v7           #readOptions:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plusi/model/ReadOptions;>;"
    .end local v8           #updateOptions:Lcom/google/api/services/plusi/model/ReadOptionsUpdateOptions;
    .restart local v1       #cursor:Landroid/database/Cursor;
    :catchall_a5
    move-exception v9

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v9

    .line 149
    .end local v1           #cursor:Landroid/database/Cursor;
    .restart local v0       #commentOptions:Lcom/google/api/services/plusi/model/ReadOptionsCommentsOptions;
    .restart local v2       #eventSelector:Lcom/google/api/services/plusi/model/EventSelector;
    .restart local v3       #framesOptions:Lcom/google/api/services/plusi/model/ReadOptionsFramesOptions;
    .restart local v4       #photoOption:Lcom/google/api/services/plusi/model/ReadOptionsPhotosOptions;
    .restart local v5       #photoOptions:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plusi/model/ReadOptionsPhotosOptions;>;"
    .restart local v6       #readOption:Lcom/google/api/services/plusi/model/ReadOptions;
    .restart local v7       #readOptions:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plusi/model/ReadOptions;>;"
    .restart local v8       #updateOptions:Lcom/google/api/services/plusi/model/ReadOptionsUpdateOptions;
    :cond_aa
    iget-object v9, p0, Lcom/google/android/apps/plus/api/EventReadOperation;->mResumeToken:Ljava/lang/String;

    iput-object v9, p1, Lcom/google/api/services/plusi/model/EventReadRequest;->resumeToken:Ljava/lang/String;

    goto :goto_a4
.end method
