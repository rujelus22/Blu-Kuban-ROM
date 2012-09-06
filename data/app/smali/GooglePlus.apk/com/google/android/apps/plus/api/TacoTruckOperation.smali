.class public Lcom/google/android/apps/plus/api/TacoTruckOperation;
.super Lcom/google/android/apps/plus/api/EsOperation;
.source "TacoTruckOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/api/TacoTruckOperation$3;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final sRegistry:Lcom/google/protobuf/ExtensionRegistryLite;


# instance fields
.field private mActivityId:Ljava/lang/String;

.field private mAttachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;"
        }
    .end annotation
.end field

.field private mAudienceData:Lcom/google/android/apps/plus/api/AudienceData;

.field private mDownloadAllowed:Z

.field private mEditableContentResponse:Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;

.field private mEventsToRestoreOnError:Lcom/google/wireless/webapps/Analytics$LogEnvelope;

.field private mGetPlusOnePeopleResponse:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;

.field private mGetPlusOneResponse:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;

.field private mLocationQueries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/protobuf/MessageLite;",
            "Lcom/google/android/apps/plus/api/LocationQuery;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationSettingsResponse:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

.field private mPeopleResult:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

.field private mPersonMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/wireless/tacotruck/proto/Data$Person;",
            ">;"
        }
    .end annotation
.end field

.field private mSetupAccount:Z

.field private final mSyncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

.field private mUploadPhotoResponse:Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 160
    const-class v0, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_27

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->$assertionsDisabled:Z

    .line 180
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->newInstance()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->sRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 182
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->sRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    sget-object v1, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->plusEvent:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 183
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->sRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    sget-object v1, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->plusPhotosAddedToCollection:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 184
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->sRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    sget-object v1, Lcom/google/protos/embeds/ThingItem$Thing;->thing:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 185
    return-void

    .line 160
    :cond_27
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 12
    .parameter "context"
    .parameter "account"
    .parameter "intent"
    .parameter "listener"

    .prologue
    .line 214
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;ZLcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 215
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;ZLcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 15
    .parameter "context"
    .parameter "account"
    .parameter "intent"
    .parameter "listener"
    .parameter "retry"
    .parameter "syncState"

    .prologue
    .line 229
    const-string v3, "POST"

    invoke-static {p6}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->createESRequestUrl(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/api/EsOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 231
    iput-object p6, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mSyncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    .line 232
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/api/TacoTruckOperation;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addAnalyticsLogRequest(Lcom/google/wireless/webapps/Analytics$LogEnvelope;)V
    .registers 5
    .parameter "events"

    .prologue
    .line 307
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;

    move-result-object v0

    .line 308
    .local v0, request:Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->setLogEnvelope(Lcom/google/wireless/webapps/Analytics$LogEnvelope;)Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;

    .line 309
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ANALYTICS_LOG:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 310
    return-void
.end method

.method private addCommentPostRequest(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)V
    .registers 4
    .parameter "request"

    .prologue
    .line 558
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->CREATE_COMMENT:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getPostType()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    move-result-object v1

    if-eq v0, v1, :cond_10

    .line 559
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Post is not a comment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :cond_10
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->hasActivityId()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->hasTargetPhotoId()Z

    move-result v0

    if-nez v0, :cond_24

    .line 562
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No activity ID or photo was specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mProcessMasterResponseFirst:Z

    .line 565
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->POST:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 566
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mMode:I

    .line 567
    return-void
.end method

.method private buildActivitiesStreamKey(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Ljava/lang/String;
    .registers 6
    .parameter "params"

    .prologue
    .line 1467
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->hasFocusGroupId()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 1468
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "f."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getFocusGroupId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1476
    .local v0, circleId:Ljava/lang/String;
    :goto_1d
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->hasFocusObfuscatedId()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 1477
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getFocusObfuscatedId()Ljava/lang/String;

    move-result-object v1

    .line 1483
    .local v1, userId:Ljava/lang/String;
    :goto_27
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->hasLocation()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getLocation()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v2

    :goto_31
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getView()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/apps/plus/content/EsPostsData;->buildActivitiesStreamKey(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Location;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1469
    .end local v0           #circleId:Ljava/lang/String;
    .end local v1           #userId:Ljava/lang/String;
    :cond_3a
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->hasGaiaGroupId()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 1470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "g."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getGaiaGroupId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #circleId:Ljava/lang/String;
    goto :goto_1d

    .line 1472
    .end local v0           #circleId:Ljava/lang/String;
    :cond_58
    const/4 v0, 0x0

    .restart local v0       #circleId:Ljava/lang/String;
    goto :goto_1d

    .line 1479
    :cond_5a
    const/4 v1, 0x0

    .restart local v1       #userId:Ljava/lang/String;
    goto :goto_27

    .line 1483
    :cond_5c
    const/4 v2, 0x0

    goto :goto_31
.end method

.method private buildActivityRequest(Landroid/content/Context;Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/wireless/tacotruck/proto/Data$Audience;Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/util/List;Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/android/apps/plus/api/EsRequest;
    .registers 23
    .parameter "context"
    .parameter "type"
    .parameter "activityId"
    .parameter "content"
    .parameter
    .parameter "audience"
    .parameter "location"
    .parameter
    .parameter "hangoutData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Mention;",
            ">;",
            "Lcom/google/wireless/tacotruck/proto/Data$Audience;",
            "Lcom/google/wireless/tacotruck/proto/Data$Location;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;",
            "Lcom/google/apps/tacotown/proto/A2a$HangoutData;",
            ")",
            "Lcom/google/android/apps/plus/api/EsRequest;"
        }
    .end annotation

    .prologue
    .line 2218
    .local p5, mentions:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    .local p8, remoteAttachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/api/MediaRef;>;"
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    move-result-object v9

    .line 2219
    .local v9, builder:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    invoke-virtual {v9, p2}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setPostType(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 2220
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 2221
    if-eqz p4, :cond_1a

    .line 2222
    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setContent(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 2224
    if-eqz p5, :cond_1a

    .line 2225
    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->addAllMention(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 2229
    :cond_1a
    if-eqz p6, :cond_23

    .line 2230
    invoke-static/range {p6 .. p6}, Lcom/google/android/apps/plus/api/ApiUtils;->removeCircleIdNamespaces(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 2233
    :cond_23
    if-eqz p7, :cond_2a

    .line 2234
    move-object/from16 v0, p7

    invoke-virtual {v9, v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setLocation(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 2237
    :cond_2a
    if-eqz p8, :cond_87

    .line 2238
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAttachments:Ljava/util/List;

    .line 2240
    new-instance v7, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAttachments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v7, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 2241
    .local v7, photoSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v8, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAttachments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v8, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 2242
    .local v8, clientSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2243
    .local v3, resolver:Landroid/content/ContentResolver;
    const/4 v12, 0x0

    .line 2244
    .local v12, thumbnailCount:I
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_56
    :goto_56
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_87

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/api/MediaRef;

    .line 2245
    .local v4, ref:Lcom/google/android/apps/plus/api/MediaRef;
    const/4 v1, 0x4

    if-ge v12, v1, :cond_85

    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAttachments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_85

    const/4 v5, 0x1

    .line 2247
    .local v5, attachBytes:Z
    :goto_6f
    iget-object v6, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAttachments:Ljava/util/List;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->buildMediaReference(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/google/android/apps/plus/api/MediaRef;ZLjava/util/List;Ljava/util/Set;Ljava/util/Set;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    move-result-object v11

    .line 2250
    .local v11, tacoReference:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    if-eqz v11, :cond_56

    .line 2251
    invoke-virtual {v11}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->hasThumbnailBytes()Z

    move-result v1

    if-eqz v1, :cond_81

    .line 2252
    add-int/lit8 v12, v12, 0x1

    .line 2255
    :cond_81
    invoke-virtual {v9, v11}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->addMediaRef(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    goto :goto_56

    .line 2245
    .end local v5           #attachBytes:Z
    .end local v11           #tacoReference:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    :cond_85
    const/4 v5, 0x0

    goto :goto_6f

    .line 2260
    .end local v3           #resolver:Landroid/content/ContentResolver;
    .end local v4           #ref:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v7           #photoSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v8           #clientSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v12           #thumbnailCount:I
    :cond_87
    if-eqz p9, :cond_8e

    .line 2261
    move-object/from16 v0, p9

    invoke-virtual {v9, v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setHangoutData(Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 2263
    :cond_8e
    new-instance v1, Lcom/google/android/apps/plus/api/EsRequest;

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->POST:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v9}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    move-result-object v6

    invoke-direct {v1, v2, v6}, Lcom/google/android/apps/plus/api/EsRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    return-object v1
.end method

.method private buildMediaReference(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/google/android/apps/plus/api/MediaRef;ZLjava/util/List;Ljava/util/Set;Ljava/util/Set;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    .registers 30
    .parameter "context"
    .parameter "resolver"
    .parameter "ref"
    .parameter "attachThumbnail"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ContentResolver;",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;"
        }
    .end annotation

    .prologue
    .line 2284
    .local p5, attachmentList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/api/MediaRef;>;"
    .local p6, photoSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p7, caidSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    move-result-object v21

    .line 2289
    .local v21, tacoReference:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/apps/plus/api/MediaRef;->getType()Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    move-result-object v6

    sget-object v7, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->VIDEO:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    if-ne v6, v7, :cond_40

    sget-object v15, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;->VIDEO:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    .line 2292
    .local v15, mediaType:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;
    :goto_e
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->setMediaType(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    .line 2294
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/apps/plus/api/MediaRef;->hasLocalUri()Z

    move-result v6

    if-eqz v6, :cond_178

    .line 2295
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/apps/plus/api/MediaRef;->getLocalUri()Landroid/net/Uri;

    move-result-object v14

    .line 2296
    .local v14, localUri:Landroid/net/Uri;
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getFingerprint(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v16

    .line 2298
    .local v16, newFingerprint:Lcom/android/gallery3d/common/Fingerprint;
    if-nez v16, :cond_43

    .line 2300
    const-string v6, "HttpTransaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not determine fingerprint for media: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    const/16 v21, 0x0

    .line 2427
    .end local v14           #localUri:Landroid/net/Uri;
    .end local v16           #newFingerprint:Lcom/android/gallery3d/common/Fingerprint;
    .end local v21           #tacoReference:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    :goto_3f
    return-object v21

    .line 2289
    .end local v15           #mediaType:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;
    .restart local v21       #tacoReference:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    :cond_40
    sget-object v15, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;->PHOTO:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    goto :goto_e

    .line 2304
    .restart local v14       #localUri:Landroid/net/Uri;
    .restart local v15       #mediaType:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;
    .restart local v16       #newFingerprint:Lcom/android/gallery3d/common/Fingerprint;
    :cond_43
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/apps/plus/api/MediaRef;->getPhotoId()J

    move-result-wide v18

    .line 2305
    .local v18, photoId:J
    const-wide/16 v6, 0x0

    cmp-long v6, v18, v6

    if-eqz v6, :cond_f3

    .line 2306
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v18

    invoke-static {v6, v0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getFingerprint(Landroid/content/Context;J)Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v17

    .line 2307
    .local v17, oldFingerprint:Lcom/android/gallery3d/common/Fingerprint;
    invoke-virtual/range {v16 .. v17}, Lcom/android/gallery3d/common/Fingerprint;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f0

    .line 2311
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    invoke-virtual/range {v16 .. v16}, Lcom/android/gallery3d/common/Fingerprint;->toStreamId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getPhotoIdFromStream(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    .line 2314
    .local v4, newPhotoId:J
    const-string v6, "HttpTransaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fingerprint mismatch; old: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/common/Fingerprint;->toStreamId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", new: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Lcom/android/gallery3d/common/Fingerprint;->toStreamId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->sendFingerprintMismatch(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 2320
    new-instance v2, Lcom/google/android/apps/plus/api/MediaRef;

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/apps/plus/api/MediaRef;->getOwnerGaiaId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/apps/plus/api/MediaRef;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/apps/plus/api/MediaRef;->getLocalUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/apps/plus/api/MediaRef;->getType()Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    .line 2364
    .end local v4           #newPhotoId:J
    .end local v14           #localUri:Landroid/net/Uri;
    .end local v17           #oldFingerprint:Lcom/android/gallery3d/common/Fingerprint;
    .end local v18           #photoId:J
    .local v2, attachment:Lcom/google/android/apps/plus/api/MediaRef;
    :goto_b5
    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/MediaRef;->hasPhotoId()Z

    move-result v6

    if-eqz v6, :cond_1a2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/MediaRef;->getPhotoId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p6

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a2

    .line 2365
    const-string v6, "HttpTransaction"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_ec

    .line 2366
    const-string v6, "HttpTransaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Duplicate reference found; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    :cond_ec
    const/16 v21, 0x0

    goto/16 :goto_3f

    .line 2324
    .end local v2           #attachment:Lcom/google/android/apps/plus/api/MediaRef;
    .restart local v14       #localUri:Landroid/net/Uri;
    .restart local v17       #oldFingerprint:Lcom/android/gallery3d/common/Fingerprint;
    .restart local v18       #photoId:J
    :cond_f0
    move-object/from16 v2, p3

    .restart local v2       #attachment:Lcom/google/android/apps/plus/api/MediaRef;
    goto :goto_b5

    .line 2328
    .end local v2           #attachment:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v17           #oldFingerprint:Lcom/android/gallery3d/common/Fingerprint;
    :cond_f3
    const-string v6, "HttpTransaction"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_118

    .line 2329
    const-string v6, "HttpTransaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Looking for remote photo w/ CAID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Lcom/android/gallery3d/common/Fingerprint;->toStreamId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    :cond_118
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    invoke-virtual/range {v16 .. v16}, Lcom/android/gallery3d/common/Fingerprint;->toStreamId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getPhotoIdFromStream(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    .line 2335
    .restart local v4       #newPhotoId:J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_174

    .line 2336
    const-string v6, "HttpTransaction"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_159

    .line 2337
    const-string v6, "HttpTransaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found remote photo; ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " matches CAID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Lcom/android/gallery3d/common/Fingerprint;->toStreamId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    :cond_159
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v9

    .line 2342
    .local v9, account:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-virtual {v9}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v3

    .line 2345
    .local v3, ownerGaiaId:Ljava/lang/String;
    new-instance v2, Lcom/google/android/apps/plus/api/MediaRef;

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/apps/plus/api/MediaRef;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/apps/plus/api/MediaRef;->getLocalUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/apps/plus/api/MediaRef;->getType()Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    .line 2347
    .restart local v2       #attachment:Lcom/google/android/apps/plus/api/MediaRef;
    goto/16 :goto_b5

    .line 2349
    .end local v2           #attachment:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v3           #ownerGaiaId:Ljava/lang/String;
    .end local v9           #account:Lcom/google/android/apps/plus/content/EsAccount;
    :cond_174
    move-object/from16 v2, p3

    .restart local v2       #attachment:Lcom/google/android/apps/plus/api/MediaRef;
    goto/16 :goto_b5

    .line 2353
    .end local v2           #attachment:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v4           #newPhotoId:J
    .end local v14           #localUri:Landroid/net/Uri;
    .end local v16           #newFingerprint:Lcom/android/gallery3d/common/Fingerprint;
    .end local v18           #photoId:J
    :cond_178
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/apps/plus/api/MediaRef;->hasPhotoId()Z

    move-result v6

    if-eqz v6, :cond_184

    .line 2355
    move-object/from16 v2, p3

    .line 2356
    .restart local v2       #attachment:Lcom/google/android/apps/plus/api/MediaRef;
    const/16 v16, 0x0

    .restart local v16       #newFingerprint:Lcom/android/gallery3d/common/Fingerprint;
    goto/16 :goto_b5

    .line 2358
    .end local v2           #attachment:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v16           #newFingerprint:Lcom/android/gallery3d/common/Fingerprint;
    :cond_184
    const-string v6, "HttpTransaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No photo ID or local Uri for attachment; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    const/16 v21, 0x0

    goto/16 :goto_3f

    .line 2371
    .restart local v2       #attachment:Lcom/google/android/apps/plus/api/MediaRef;
    .restart local v16       #newFingerprint:Lcom/android/gallery3d/common/Fingerprint;
    :cond_1a2
    if-eqz v16, :cond_1d7

    invoke-virtual/range {v16 .. v16}, Lcom/android/gallery3d/common/Fingerprint;->toStreamId()Ljava/lang/String;

    move-result-object v13

    .line 2372
    .local v13, caid:Ljava/lang/String;
    :goto_1a8
    if-eqz v13, :cond_1d9

    .line 2376
    move-object/from16 v0, p7

    invoke-interface {v0, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d9

    .line 2377
    const-string v6, "HttpTransaction"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1d3

    .line 2378
    const-string v6, "HttpTransaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Duplicate CAID found; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    :cond_1d3
    const/16 v21, 0x0

    goto/16 :goto_3f

    .line 2371
    .end local v13           #caid:Ljava/lang/String;
    :cond_1d7
    const/4 v13, 0x0

    goto :goto_1a8

    .line 2384
    .restart local v13       #caid:Ljava/lang/String;
    :cond_1d9
    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/MediaRef;->hasPhotoId()Z

    move-result v6

    if-nez v6, :cond_246

    .line 2385
    if-eqz v13, :cond_1eb

    .line 2386
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->setClientAssignedId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    .line 2387
    move-object/from16 v0, p7

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2390
    :cond_1eb
    if-eqz p4, :cond_240

    .line 2391
    const/4 v10, 0x0

    .line 2393
    .local v10, bitmap:Landroid/graphics/Bitmap;
    :try_start_1ee
    new-instance v20, Lcom/google/android/apps/plus/content/LocalImageRequest;

    const/16 v6, 0x280

    const/16 v7, 0x280

    move-object/from16 v0, v20

    invoke-direct {v0, v2, v6, v7}, Lcom/google/android/apps/plus/content/LocalImageRequest;-><init>(Lcom/google/android/apps/plus/api/MediaRef;II)V

    .line 2395
    .local v20, request:Lcom/google/android/apps/plus/content/LocalImageRequest;
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsPhotosData;->loadLocalBitmap(Landroid/content/Context;Lcom/google/android/apps/plus/content/LocalImageRequest;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 2397
    if-nez v10, :cond_22b

    .line 2398
    const-string v6, "HttpTransaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bitmap decoding failed for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/MediaRef;->getLocalUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21f
    .catchall {:try_start_1ee .. :try_end_21f} :catchall_239

    .line 2405
    :goto_21f
    if-eqz v10, :cond_224

    .line 2407
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 2425
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .end local v20           #request:Lcom/google/android/apps/plus/content/LocalImageRequest;
    :cond_224
    :goto_224
    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3f

    .line 2400
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    .restart local v20       #request:Lcom/google/android/apps/plus/content/LocalImageRequest;
    :cond_22b
    :try_start_22b
    invoke-static {v10}, Lcom/google/android/apps/plus/util/ImageUtils;->compressBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v11

    .line 2401
    .local v11, bitmapBytes:[B
    invoke-static {v11}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v12

    .line 2402
    .local v12, byteString:Lcom/google/protobuf/ByteString;
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->setThumbnailBytes(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    :try_end_238
    .catchall {:try_start_22b .. :try_end_238} :catchall_239

    goto :goto_21f

    .line 2405
    .end local v11           #bitmapBytes:[B
    .end local v12           #byteString:Lcom/google/protobuf/ByteString;
    .end local v20           #request:Lcom/google/android/apps/plus/content/LocalImageRequest;
    :catchall_239
    move-exception v6

    if-eqz v10, :cond_23f

    .line 2407
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    :cond_23f
    throw v6

    .line 2410
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    :cond_240
    if-nez v16, :cond_224

    .line 2412
    const/16 v21, 0x0

    goto/16 :goto_3f

    .line 2415
    :cond_246
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;

    move-result-object v18

    .line 2417
    .local v18, photoId:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;
    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/MediaRef;->getOwnerGaiaId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;->setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;

    .line 2418
    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/MediaRef;->getPhotoId()J

    move-result-wide v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;->setPhotoId(J)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;

    .line 2419
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->setPicasaPhotoId(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    .line 2420
    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/MediaRef;->getPhotoId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_224
.end method

.method static createActivityAction(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;
    .registers 4
    .parameter "type"
    .parameter "activityId"

    .prologue
    .line 2179
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    move-result-object v0

    .line 2180
    .local v0, request:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    .line 2181
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    .line 2182
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;

    move-result-object v1

    return-object v1
.end method

.method private static getCityLevelLocation(Ljava/util/List;)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;"
        }
    .end annotation

    .prologue
    .line 2523
    .local p0, geocodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    .line 2524
    .local v0, geocode:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getGranularity()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    move-result-object v2

    sget-object v3, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;->LOCALITY:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    if-ne v2, v3, :cond_4

    .line 2529
    .end local v0           #geocode:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private static getFingerprint(Landroid/content/Context;J)Lcom/android/gallery3d/common/Fingerprint;
    .registers 11
    .parameter "context"
    .parameter "photoId"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2463
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v6

    .line 2464
    .local v6, account:Lcom/google/android/apps/plus/content/EsAccount;
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_PHOTO_ID_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    .line 2467
    .local v1, queryUri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "fingerprint"

    aput-object v0, v2, v4

    .line 2469
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2471
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_3d

    .line 2473
    :try_start_23
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3e

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 2474
    new-instance v3, Lcom/android/gallery3d/common/Fingerprint;

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/android/gallery3d/common/Fingerprint;-><init>([B)V
    :try_end_3a
    .catchall {:try_start_23 .. :try_end_3a} :catchall_42

    .line 2477
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2480
    :cond_3d
    :goto_3d
    return-object v3

    .line 2477
    :cond_3e
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_3d

    :catchall_42
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getFingerprint(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/gallery3d/common/Fingerprint;
    .registers 10
    .parameter "context"
    .parameter "localUri"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2438
    invoke-static {p0}, Lcom/google/android/picasastore/PicasaStoreFacade;->get(Landroid/content/Context;)Lcom/google/android/picasastore/PicasaStoreFacade;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Lcom/google/android/picasastore/PicasaStoreFacade;->getFingerprintUri(ZZ)Landroid/net/Uri;

    move-result-object v1

    .line 2439
    .local v1, queryUri:Landroid/net/Uri;
    new-array v2, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    .line 2440
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2442
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_39

    .line 2444
    :try_start_1f
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 2445
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 2446
    .local v6, bytes:[B
    new-instance v3, Lcom/android/gallery3d/common/Fingerprint;

    invoke-direct {v3, v6}, Lcom/android/gallery3d/common/Fingerprint;-><init>([B)V
    :try_end_36
    .catchall {:try_start_1f .. :try_end_36} :catchall_3e

    .line 2449
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2452
    .end local v6           #bytes:[B
    :cond_39
    :goto_39
    return-object v3

    .line 2449
    :cond_3a
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_39

    :catchall_3e
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getPhotoIdFromStream(Landroid/content/Context;Ljava/lang/String;)J
    .registers 12
    .parameter "context"
    .parameter "streamId"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 2492
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v6

    .line 2493
    .local v6, account:Lcom/google/android/apps/plus/content/EsAccount;
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_STREAM_ID_AND_OWNER_ID_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 2494
    .local v7, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v7, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v6}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 2496
    .local v9, uri:Landroid/net/Uri;
    invoke-static {v9, v6}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    .line 2497
    .local v1, queryUri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "photo_id"

    aput-object v0, v2, v5

    .line 2499
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2501
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_4c

    .line 2503
    :try_start_33
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 2504
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_49

    .line 2505
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_44
    .catchall {:try_start_33 .. :try_end_44} :catchall_4f

    move-result-wide v3

    .line 2509
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2512
    :goto_48
    return-wide v3

    .line 2509
    :cond_49
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2512
    :cond_4c
    const-wide/16 v3, 0x0

    goto :goto_48

    .line 2509
    :catchall_4f
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getStreetLevelLocation(Ljava/util/List;)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;"
        }
    .end annotation

    .prologue
    .line 2540
    .local p0, geocodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    .line 2541
    .local v0, geocode:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getGranularity()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    move-result-object v2

    sget-object v3, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;->FINEST:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    if-ne v2, v3, :cond_4

    .line 2546
    .end local v0           #geocode:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;)V
    .registers 9
    .parameter "request"
    .parameter "response"

    .prologue
    .line 1616
    const-string v3, "HttpTransaction"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1617
    const-string v3, "HttpTransaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  -- ActivityAction type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->getType()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    :cond_25
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->getActivityId()Ljava/lang/String;

    move-result-object v0

    .line 1621
    .local v0, activityId:Ljava/lang/String;
    sget-object v3, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$ActivityActionRequest$Type:[I

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->getType()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_b2

    .line 1682
    const-string v3, "HttpTransaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown post type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->getType()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    :goto_54
    return-void

    .line 1623
    :pswitch_55
    iget-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v3, v4, v0}, Lcom/google/android/apps/plus/content/EsPostsData;->deleteActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    goto :goto_54

    .line 1628
    :pswitch_5d
    iget-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v3, v4, v0}, Lcom/google/android/apps/plus/content/EsPostsData;->deleteActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    goto :goto_54

    .line 1633
    :pswitch_65
    iget-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v3, v4, v0}, Lcom/google/android/apps/plus/content/EsPostsData;->muteActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    goto :goto_54

    .line 1638
    :pswitch_6d
    iget v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mMode:I

    packed-switch v3, :pswitch_data_c0

    :pswitch_72
    goto :goto_54

    .line 1640
    :pswitch_73
    iget-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->getDeleteCommentIdList()Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v4, v0, v5}, Lcom/google/android/apps/plus/content/EsPostsData;->deleteComments(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_54

    .line 1646
    :pswitch_7f
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1647
    .local v1, photoId:J
    iget-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->getDeleteCommentIdList()Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v4, v1, v2, v5}, Lcom/google/android/apps/plus/content/EsPhotosData;->deletePhotoComments(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/util/List;)V

    goto :goto_54

    .line 1660
    .end local v1           #photoId:J
    :pswitch_8f
    iget v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mMode:I

    packed-switch v3, :pswitch_data_ca

    :pswitch_94
    goto :goto_54

    .line 1662
    :pswitch_95
    iget-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->getDeleteCommentIdList()Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v4, v0, v5}, Lcom/google/android/apps/plus/content/EsPostsData;->deleteComments(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_54

    .line 1668
    :pswitch_a1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1669
    .restart local v1       #photoId:J
    iget-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->getDeleteCommentIdList()Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v4, v1, v2, v5}, Lcom/google/android/apps/plus/content/EsPhotosData;->deletePhotoComments(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/util/List;)V

    goto :goto_54

    .line 1621
    nop

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_55
        :pswitch_5d
        :pswitch_65
        :pswitch_6d
        :pswitch_8f
    .end packed-switch

    .line 1638
    :pswitch_data_c0
    .packed-switch 0x4
        :pswitch_73
        :pswitch_72
        :pswitch_7f
    .end packed-switch

    .line 1660
    :pswitch_data_ca
    .packed-switch 0x5
        :pswitch_95
        :pswitch_94
        :pswitch_a1
    .end packed-switch
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;)V
    .registers 11
    .parameter "request"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1455
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->getParams()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->buildActivitiesStreamKey(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Ljava/lang/String;

    move-result-object v2

    .line 1457
    .local v2, streamKey:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->getActivityList()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mPersonMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->getParams()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getContinuationToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->getNextContinuationToken()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mSyncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/plus/content/EsPostsData;->updateStreamActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 1460
    return-void
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;)V
    .registers 9
    .parameter "request"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1495
    iget v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mMode:I

    packed-switch v1, :pswitch_data_8e

    .line 1536
    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->getActivityList()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mPersonMap:Ljava/util/Map;

    invoke-static {v1, v2, v5, v3, v4}, Lcom/google/android/apps/plus/content/EsPostsData;->insertActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    .line 1541
    :goto_14
    return-void

    .line 1497
    :pswitch_15
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->getActivityCount()I

    move-result v1

    if-nez v1, :cond_23

    .line 1498
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "Activity not created"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1502
    :cond_23
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->CIRCLES:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    invoke-static {v5, v5, v5, v1}, Lcom/google/android/apps/plus/content/EsPostsData;->buildActivitiesStreamKey(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Location;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;)Ljava/lang/String;

    move-result-object v0

    .line 1504
    .local v0, streamMyStream:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->getActivityList()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mPersonMap:Ljava/util/Map;

    invoke-static {v1, v2, v0, v3, v4}, Lcom/google/android/apps/plus/content/EsPostsData;->insertActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    goto :goto_14

    .line 1510
    .end local v0           #streamMyStream:Ljava/lang/String;
    :pswitch_37
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->getActivityCount()I

    move-result v1

    if-lez v1, :cond_4b

    .line 1512
    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->getActivityList()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mPersonMap:Ljava/util/Map;

    invoke-static {v1, v2, v5, v3, v4}, Lcom/google/android/apps/plus/content/EsPostsData;->insertActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    goto :goto_14

    .line 1515
    :cond_4b
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "Activity not found while creating comment"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1522
    :pswitch_53
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->getActivityCount()I

    move-result v1

    if-nez v1, :cond_76

    .line 1523
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->getActivityId(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1526
    :cond_76
    invoke-virtual {p2, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->getActivity(I)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getActivityId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mActivityId:Ljava/lang/String;

    .line 1529
    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->getActivityList()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mPersonMap:Ljava/util/Map;

    invoke-static {v1, v2, v5, v3, v4}, Lcom/google/android/apps/plus/content/EsPostsData;->insertActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    goto :goto_14

    .line 1495
    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_15
        :pswitch_53
        :pswitch_37
    .end packed-switch
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;)V
    .registers 9
    .parameter "request"
    .parameter "response"

    .prologue
    .line 1955
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->getAlbumList()Ljava/util/List;

    move-result-object v0

    .line 1956
    .local v0, albums:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;>;"
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->getSharedAlbumsOnly()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1957
    iget-object v2, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mSyncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-static {v2, v3, v4, v0, v5}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertProfileAlbumList(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/util/List;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 1965
    :goto_17
    return-void

    .line 1962
    :cond_18
    iget-object v2, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v1

    .line 1963
    .local v1, ownerId:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v4, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mSyncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-static {v2, v3, v1, v0, v4}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertAlbumList(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/util/List;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    goto :goto_17
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;)V
    .registers 11
    .parameter "request"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1975
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v4

    .line 1976
    .local v4, gaiaId:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->hasAlbumInfo()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1977
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->getAlbumInfo()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v7

    .line 1978
    .local v7, album:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v6, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mSyncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-static {v0, v1, v4, v7, v6}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertAlbum(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 1981
    .end local v7           #album:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    :cond_17
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->getId()J

    move-result-wide v2

    .line 1982
    .local v2, albumId:J
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->getPhotoList()Ljava/util/List;

    move-result-object v5

    .line 1983
    .local v5, photos:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v6, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mSyncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertAlbumPhotos(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Ljava/util/List;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 1984
    return-void
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;)V
    .registers 7
    .parameter "request"
    .parameter "response"

    .prologue
    .line 1552
    new-instance v0, Lcom/google/android/apps/plus/api/AudienceData;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->getHiddenAudienceCountText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/plus/api/AudienceData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAudienceData:Lcom/google/android/apps/plus/api/AudienceData;

    .line 1554
    return-void
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;)V
    .registers 3
    .parameter "request"
    .parameter "response"

    .prologue
    .line 1564
    iput-object p2, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mEditableContentResponse:Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;

    .line 1565
    return-void
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;)V
    .registers 8
    .parameter "request"
    .parameter "response"

    .prologue
    .line 1720
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;->getPersonList()Ljava/util/List;

    move-result-object v2

    .line 1721
    .local v2, personList:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    iget-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mPersonMap:Ljava/util/Map;

    if-nez v3, :cond_f

    .line 1722
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mPersonMap:Ljava/util/Map;

    .line 1725
    :cond_f
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 1726
    .local v1, person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    iget-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mPersonMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getFocusObfuscatedId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 1729
    .end local v1           #person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    :cond_29
    iget-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v3, v4, v2}, Lcom/google/android/apps/plus/content/EsPeopleData;->insertPersons(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;)V

    .line 1730
    return-void
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;)V
    .registers 9
    .parameter "request"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2024
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->hasFocusGroupId()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 2025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "f."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->getFocusGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2032
    .local v2, circleId:Ljava/lang/String;
    :goto_1d
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->getPhotoList()Ljava/util/List;

    move-result-object v3

    .line 2033
    .local v3, photos:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;>;"
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->hasOffset()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->getOffset()I

    move-result v4

    .line 2034
    .local v4, offset:I
    :goto_2b
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v5, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mSyncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertCirclePhotos(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/util/List;ILcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 2035
    return-void

    .line 2026
    .end local v2           #circleId:Ljava/lang/String;
    .end local v3           #photos:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;>;"
    .end local v4           #offset:I
    :cond_35
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->hasGaiaGroupId()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 2027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "g."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->getGaiaGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #circleId:Ljava/lang/String;
    goto :goto_1d

    .line 2029
    .end local v2           #circleId:Ljava/lang/String;
    :cond_53
    const/4 v2, 0x0

    .restart local v2       #circleId:Ljava/lang/String;
    goto :goto_1d

    .line 2033
    .restart local v3       #photos:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;>;"
    :cond_55
    const/4 v4, 0x0

    goto :goto_2b
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;)V
    .registers 7
    .parameter "request"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2110
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->hasPhoto()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2111
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->getPhoto()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    .line 2112
    .local v0, photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertSinglePhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 2114
    .end local v0           #photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    :cond_12
    return-void
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;)V
    .registers 4
    .parameter "request"
    .parameter "response"

    .prologue
    .line 2124
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;->hasEnablePhotoDownload()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;->getEnablePhotoDownload()Z

    move-result v0

    :goto_a
    iput-boolean v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mDownloadAllowed:Z

    .line 2126
    return-void

    .line 2124
    :cond_d
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;)V
    .registers 10
    .parameter "request"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1696
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;->getPhotoList()Ljava/util/List;

    move-result-object v2

    .line 1698
    .local v2, photos:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_30

    .line 1699
    const-string v3, "HttpTransaction"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1700
    const-string v3, "HttpTransaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No photos for activity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->getActivityId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    :cond_2f
    :goto_2f
    return-void

    .line 1706
    :cond_30
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;->getAlbumInfo()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    .line 1707
    .local v0, album:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v1

    .line 1708
    .local v1, ownerGaiaId:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v5, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mSyncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-static {v3, v4, v1, v0, v5}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertActivityAlbum(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 1709
    iget-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->getActivityId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mSyncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-static {v3, v4, v5, v2, v6}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertActivityPhotos(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/util/List;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    goto :goto_2f
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;)V
    .registers 9
    .parameter "request"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2009
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->getApprovedPhotoList()Ljava/util/List;

    move-result-object v3

    .line 2010
    .local v3, approvedPhotos:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;>;"
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->getUnapprovedPhotoList()Ljava/util/List;

    move-result-object v4

    .line 2011
    .local v4, unapprovedPhotos:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getFocusObfuscatedId()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mSyncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertPhotosOfUser(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 2013
    return-void
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;)V
    .registers 8
    .parameter "request"
    .parameter "response"

    .prologue
    .line 1740
    iput-object p2, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mGetPlusOnePeopleResponse:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;

    .line 1742
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->getPersonList()Ljava/util/List;

    move-result-object v2

    .line 1743
    .local v2, personList:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    iget-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mPersonMap:Ljava/util/Map;

    if-nez v3, :cond_11

    .line 1744
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mPersonMap:Ljava/util/Map;

    .line 1747
    :cond_11
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 1748
    .local v1, person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    iget-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mPersonMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getFocusObfuscatedId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 1751
    .end local v1           #person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    :cond_2b
    iget-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v3, v4, v2}, Lcom/google/android/apps/plus/content/EsPeopleData;->insertPersons(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;)V

    .line 1752
    return-void
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;)V
    .registers 7
    .parameter "request"
    .parameter "response"

    .prologue
    .line 1910
    if-nez p1, :cond_3

    .line 1923
    :cond_2
    :goto_2
    return-void

    .line 1913
    :cond_3
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->AD:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->getType()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1914
    iput-object p2, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mGetPlusOneResponse:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;

    .line 1915
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mGetPlusOneResponse:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mGetPlusOneResponse:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->hasPlusoneData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1916
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mGetPlusOneResponse:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsAdPlusOnesData;->insertAdPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)V

    goto :goto_2

    .line 1919
    :cond_2f
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->ENTITY:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->getType()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1920
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsPeopleData;->insertPlusOneData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)V

    goto :goto_2
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;)V
    .registers 10
    .parameter "request"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1994
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getStreamId()Ljava/lang/String;

    move-result-object v2

    .line 1995
    .local v2, streamId:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->getPhotoList()Ljava/util/List;

    move-result-object v4

    .line 1996
    .local v4, photos:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;>;"
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getOffset()I

    move-result v5

    .line 1997
    .local v5, offset:I
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mSyncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertStreamPhotos(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 1999
    return-void
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;)V
    .registers 6
    .parameter "request"
    .parameter "response"

    .prologue
    .line 1934
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;->getActivityIdList()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/content/EsPostsData;->markActivitiesAsRead(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;)V

    .line 1935
    return-void
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;)V
    .registers 10
    .parameter "request"
    .parameter "response"

    .prologue
    .line 2044
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->getShapeId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->getPhotoId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->getApprove()Z

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/content/EsPhotosData;->updatePhotoShapeApproval(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJZ)V

    .line 2046
    return-void
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;)V
    .registers 4
    .parameter "request"
    .parameter "response"

    .prologue
    .line 1844
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->getNotificationSettings()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mNotificationSettingsResponse:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    .line 1845
    return-void
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;)V
    .registers 9
    .parameter "request"
    .parameter "response"

    .prologue
    .line 2066
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getType()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    move-result-object v1

    .line 2067
    .local v1, requestType:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v0

    .line 2068
    .local v0, gaiaId:Ljava/lang/String;
    sget-object v2, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$PhotoActionRequest$Type:[I

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_28

    .line 2084
    :goto_13
    return-void

    .line 2070
    :pswitch_14
    iget-object v2, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getPhotoId()J

    move-result-wide v4

    invoke-static {v2, v3, v0, v4, v5}, Lcom/google/android/apps/plus/content/EsPhotosData;->deletePhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;J)V

    goto :goto_13

    .line 2076
    :pswitch_20
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getPhotoId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/android/apps/plus/content/EsPhotosData;->setPhotoAbuseReported(Ljava/lang/String;J)V

    goto :goto_13

    .line 2068
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_14
        :pswitch_20
    .end packed-switch
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;)V
    .registers 7
    .parameter "request"
    .parameter "response"

    .prologue
    .line 2055
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->getSectionList()Ljava/util/List;

    move-result-object v0

    .line 2056
    .local v0, sections:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;>;"
    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mSyncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-static {v1, v2, v0, v3}, Lcom/google/android/apps/plus/content/EsPhotosData;->updatePhotosHome(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 2057
    return-void
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;)V
    .registers 13
    .parameter "request"
    .parameter "response"

    .prologue
    const/4 v3, 0x0

    .line 1885
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->getPlaceCount()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1886
    .local v5, places:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Location;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_b
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->getPlaceCount()I

    move-result v0

    if-ge v6, v0, :cond_39

    .line 1887
    invoke-virtual {p2, v6}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->getPlace(I)Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v8

    .line 1888
    .local v8, place:Lcom/google/wireless/tacotruck/proto/Data$Location;
    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1889
    .local v7, originalName:Ljava/lang/String;
    invoke-static {v7}, Lcom/google/android/apps/plus/util/StringUtils;->replaceHtmlEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1890
    .local v9, strippedName:Ljava/lang/String;
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 1891
    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Data$Location;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1886
    :goto_32
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 1893
    :cond_35
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 1897
    .end local v7           #originalName:Ljava/lang/String;
    .end local v8           #place:Lcom/google/wireless/tacotruck/proto/Data$Location;
    .end local v9           #strippedName:Ljava/lang/String;
    :cond_39
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mLocationQueries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/api/LocationQuery;

    .line 1898
    .local v2, query:Lcom/google/android/apps/plus/api/LocationQuery;
    if-eqz v2, :cond_4b

    .line 1899
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsPostsData;->insertLocations(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/LocationQuery;Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;Ljava/util/List;)V

    .line 1901
    :cond_4b
    return-void
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Lcom/google/wireless/tacotruck/proto/Network$PostResponse;)V
    .registers 16
    .parameter "request"
    .parameter "response"

    .prologue
    const/4 v12, 0x3

    .line 1574
    const-string v9, "HttpTransaction"

    invoke-static {v9, v12}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_25

    .line 1575
    const-string v9, "HttpTransaction"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  -- PostRequest type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getPostType()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    :cond_25
    sget-object v9, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$PostRequest$Type:[I

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getPostType()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_c0

    .line 1607
    :cond_34
    return-void

    .line 1580
    :pswitch_35
    iget-object v9, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v9}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1581
    .local v0, accountName:Ljava/lang/String;
    sget-object v7, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->uploadsUri:Landroid/net/Uri;

    .line 1582
    .local v7, uploadUri:Landroid/net/Uri;
    iget-object v9, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1583
    .local v6, resolver:Landroid/content/ContentResolver;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1584
    .local v8, values:Landroid/content/ContentValues;
    const-string v9, "account"

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    iget-object v9, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/google/android/apps/plus/phone/InstantUpload;->isEnabled(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_68

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->hasAlbumId()Z

    move-result v9

    if-eqz v9, :cond_68

    .line 1588
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->getAlbumId()J

    move-result-wide v1

    .line 1589
    .local v1, albumId:J
    const-string v9, "album_id"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1591
    .end local v1           #albumId:J
    :cond_68
    iget-object v9, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAttachments:Ljava/util/List;

    if-eqz v9, :cond_34

    .line 1592
    iget-object v9, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAttachments:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_72
    :goto_72
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_34

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/api/MediaRef;

    .line 1593
    .local v3, attachment:Lcom/google/android/apps/plus/api/MediaRef;
    invoke-virtual {v3}, Lcom/google/android/apps/plus/api/MediaRef;->hasPhotoId()Z

    move-result v9

    if-nez v9, :cond_72

    invoke-virtual {v3}, Lcom/google/android/apps/plus/api/MediaRef;->hasLocalUri()Z

    move-result v9

    if-eqz v9, :cond_72

    .line 1594
    invoke-virtual {v3}, Lcom/google/android/apps/plus/api/MediaRef;->getLocalUri()Landroid/net/Uri;

    move-result-object v5

    .line 1596
    .local v5, imageUri:Landroid/net/Uri;
    const-string v9, "HttpTransaction"

    invoke-static {v9, v12}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_b2

    .line 1597
    const-string v9, "HttpTransaction"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  -- on-demand upload; img: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    :cond_b2
    const-string v9, "content_uri"

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1600
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_72

    .line 1578
    nop

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_35
    .end packed-switch
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;)V
    .registers 15
    .parameter "request"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2146
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->getSearchQuery()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    move-result-object v10

    .line 2147
    .local v10, searchQuery:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;
    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->getFilterList()Ljava/util/List;

    move-result-object v9

    .line 2148
    .local v9, filters:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;>;"
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;->TACOS:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 2150
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->getActivityResults()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    move-result-object v8

    .line 2151
    .local v8, activityResults:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;
    if-eqz v8, :cond_4a

    .line 2152
    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->getQueryText()Ljava/lang/String;

    move-result-object v11

    .line 2153
    .local v11, searchQueryText:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v11}, Lcom/google/android/apps/plus/util/SearchUtils;->getSearchKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->getActivityList()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mPersonMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->getActivityRequestData()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->getShownActivitiesBlob()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->getActivityResults()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->getShownActivitiesBlob()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mSyncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/plus/content/EsPostsData;->updateStreamActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 2159
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->getShownActivitiesBlob()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v11, v2}, Lcom/google/android/apps/plus/util/SearchUtils;->insertSearchResults(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)V

    .line 2167
    .end local v8           #activityResults:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;
    .end local v11           #searchQueryText:Ljava/lang/String;
    :cond_49
    :goto_49
    return-void

    .line 2162
    .restart local v8       #activityResults:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;
    :cond_4a
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, v2, v2}, Lcom/google/android/apps/plus/util/SearchUtils;->insertSearchResults(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    .line 2164
    .end local v8           #activityResults:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;
    :cond_52
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;->PEOPLE:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 2165
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->getPeopleResults()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mPeopleResult:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    goto :goto_49
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;)V
    .registers 6
    .parameter "originalRequest"
    .parameter "response"

    .prologue
    .line 1945
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/content/EsAccountsData;->setNotificationPushEnabled(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V

    .line 1946
    return-void
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;)V
    .registers 7
    .parameter "request"
    .parameter "response"

    .prologue
    .line 2095
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->getPhoto()Ljava/lang/String;

    move-result-object v0

    .line 2096
    .local v0, photo:Ljava/lang/String;
    if-eqz v0, :cond_11

    .line 2097
    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeImageBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/content/EsAvatarData;->insertProfilePhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[B)V

    .line 2100
    :cond_11
    return-void
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;)V
    .registers 17
    .parameter "request"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1764
    sget-boolean v11, Lcom/google/android/apps/plus/api/TacoTruckOperation;->$assertionsDisabled:Z

    if-nez v11, :cond_10

    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->hasMe()Z

    move-result v11

    if-nez v11, :cond_10

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 1765
    :cond_10
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->getMe()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v5

    .line 1767
    .local v5, me:Lcom/google/wireless/tacotruck/proto/Data$Person;
    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getFocusObfuscatedId()Ljava/lang/String;

    move-result-object v3

    .line 1769
    .local v3, gaiaId:Ljava/lang/String;
    iget-boolean v11, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mSetupAccount:Z

    if-eqz v11, :cond_b5

    .line 1771
    if-nez v3, :cond_2f

    .line 1772
    const-string v2, "Settings response missing gaid ID"

    .line 1773
    .local v2, errorMessage:Ljava/lang/String;
    const-string v11, "HttpTransaction"

    const-string v12, "Settings response missing gaid ID"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    new-instance v11, Ljava/net/ProtocolException;

    const-string v12, "Settings response missing gaid ID"

    invoke-direct {v11, v12}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1778
    .end local v2           #errorMessage:Ljava/lang/String;
    :cond_2f
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1779
    .local v6, persons:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1780
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->hasIsChild()Z

    move-result v11

    if-eqz v11, :cond_b3

    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->getIsChild()Z

    move-result v11

    if-eqz v11, :cond_b3

    const/4 v4, 0x1

    .line 1782
    .local v4, isChild:Z
    :goto_44
    iget-object v11, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v12}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v3, v12, v13, v4}, Lcom/google/android/apps/plus/content/EsAccountsData;->insertAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 1784
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    iget-object v11, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    invoke-static {v11, v0}, Lcom/google/android/apps/plus/content/EsAccountsData;->activateAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 1785
    iget-object v11, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    invoke-static {v11, v0, v6}, Lcom/google/android/apps/plus/content/EsPeopleData;->insertPersons(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;)V

    .line 1792
    .end local v6           #persons:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    :goto_5e
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->hasUserPreferences()Z

    move-result v11

    if-eqz v11, :cond_b2

    .line 1793
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->getUserPreferences()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    move-result-object v10

    .line 1801
    .local v10, userPreferences:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;
    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->hasDefaultPostAudience()Z

    move-result v11

    if-eqz v11, :cond_7f

    .line 1802
    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->getDefaultPostAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v1

    .line 1803
    .local v1, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-static {v1}, Lcom/google/android/apps/plus/api/ApiUtils;->setCircleIdNamespaces(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v1

    .line 1804
    iget-object v11, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->toByteArray()[B

    move-result-object v12

    invoke-static {v11, v0, v12}, Lcom/google/android/apps/plus/content/EsAccountsData;->saveAudience(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[B)V

    .line 1807
    .end local v1           #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    :cond_7f
    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->getStreamViewTypeCount()I

    move-result v11

    if-lez v11, :cond_8e

    .line 1808
    iget-object v11, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->getStreamViewTypeList()Ljava/util/List;

    move-result-object v12

    invoke-direct {p0, v11, v0, v12}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->saveStreamViewList(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;)V

    .line 1811
    :cond_8e
    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->hasPromoData()Z

    move-result v11

    if-eqz v11, :cond_a8

    .line 1812
    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->getPromoData()Lcom/google/wireless/tacotruck/proto/Data$Promo;

    move-result-object v7

    .line 1813
    .local v7, promo:Lcom/google/wireless/tacotruck/proto/Data$Promo;
    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->hasWwMainFlowAckTimestampMsec()Z

    move-result v11

    if-eqz v11, :cond_a8

    .line 1814
    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->getWwMainFlowAckTimestampMsec()J

    move-result-wide v8

    .line 1815
    .local v8, timestamp:J
    iget-object v11, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    const/4 v12, 0x1

    invoke-static {v11, v0, v8, v9, v12}, Lcom/google/android/apps/plus/content/EsAccountsData;->setWarmWelcomeTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZ)V

    .line 1822
    .end local v7           #promo:Lcom/google/wireless/tacotruck/proto/Data$Promo;
    .end local v8           #timestamp:J
    :cond_a8
    sget-object v11, Lcom/google/android/apps/plus/api/TacoTruckOperation;->sHandler:Landroid/os/Handler;

    new-instance v12, Lcom/google/android/apps/plus/api/TacoTruckOperation$1;

    invoke-direct {v12, p0, v10}, Lcom/google/android/apps/plus/api/TacoTruckOperation$1;-><init>(Lcom/google/android/apps/plus/api/TacoTruckOperation;Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1840
    .end local v10           #userPreferences:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;
    :cond_b2
    return-void

    .line 1780
    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v4           #isChild:Z
    .restart local v6       #persons:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    :cond_b3
    const/4 v4, 0x0

    goto :goto_44

    .line 1787
    .end local v6           #persons:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    :cond_b5
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 1788
    .restart local v0       #account:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->hasIsChild()Z

    move-result v11

    if-eqz v11, :cond_d0

    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->getIsChild()Z

    move-result v11

    if-eqz v11, :cond_d0

    const/4 v4, 0x1

    .line 1789
    .restart local v4       #isChild:Z
    :goto_c4
    iget-object v11, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v3, v13, v4}, Lcom/google/android/apps/plus/content/EsAccountsData;->updateAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_5e

    .line 1788
    .end local v4           #isChild:Z
    :cond_d0
    const/4 v4, 0x0

    goto :goto_c4
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;)V
    .registers 14
    .parameter "request"
    .parameter "response"

    .prologue
    .line 1855
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->getReverseGeocodeList()Ljava/util/List;

    move-result-object v6

    .line 1856
    .local v6, geocodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;>;"
    invoke-static {v6}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getStreetLevelLocation(Ljava/util/List;)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v3

    .line 1857
    .local v3, street:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;
    invoke-static {v6}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getCityLevelLocation(Ljava/util/List;)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v4

    .line 1860
    .local v4, city:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->getPlaceCount()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1861
    .local v5, places:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Location;>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_16
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->getPlaceCount()I

    move-result v0

    if-ge v7, v0, :cond_44

    .line 1862
    invoke-virtual {p2, v7}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->getPlace(I)Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v9

    .line 1863
    .local v9, place:Lcom/google/wireless/tacotruck/proto/Data$Location;
    invoke-virtual {v9}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1864
    .local v8, originalName:Ljava/lang/String;
    invoke-static {v8}, Lcom/google/android/apps/plus/util/StringUtils;->replaceHtmlEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1865
    .local v10, strippedName:Ljava/lang/String;
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 1866
    invoke-virtual {v9}, Lcom/google/wireless/tacotruck/proto/Data$Location;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1861
    :goto_3d
    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    .line 1868
    :cond_40
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 1872
    .end local v8           #originalName:Ljava/lang/String;
    .end local v9           #place:Lcom/google/wireless/tacotruck/proto/Data$Location;
    .end local v10           #strippedName:Ljava/lang/String;
    :cond_44
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mLocationQueries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/api/LocationQuery;

    .line 1873
    .local v2, query:Lcom/google/android/apps/plus/api/LocationQuery;
    if-eqz v2, :cond_55

    .line 1874
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsPostsData;->insertLocations(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/LocationQuery;Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;Ljava/util/List;)V

    .line 1876
    :cond_55
    return-void
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;)V
    .registers 3
    .parameter "request"
    .parameter "response"

    .prologue
    .line 2135
    iput-object p2, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mUploadPhotoResponse:Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

    .line 2136
    return-void
.end method

.method private static newCommentPostRequestBuilder(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    .registers 4
    .parameter "text"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Mention;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 540
    .local p1, mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    move-result-object v0

    .line 541
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->CREATE_COMMENT:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setPostType(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 542
    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setContent(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 543
    if-eqz p1, :cond_11

    .line 544
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->addAllMention(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 546
    :cond_11
    return-object v0
.end method

.method private static newNotificationSettingsRequestBuilder()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;
    .registers 2

    .prologue
    .line 1039
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;

    move-result-object v0

    .line 1040
    .local v0, request:Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->ANDROID_PUSH:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->setChannel(Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;)Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;

    .line 1041
    return-object v0
.end method

.method private saveStreamViewList(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;)V
    .registers 9
    .parameter "context"
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2557
    .local p3, streamViewTypeList:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2558
    .local v0, circleIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    .line 2559
    .local v2, streamView:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;
    sget-object v3, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$StreamViewType$Type:[I

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->getType()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_4e

    goto :goto_9

    .line 2561
    :pswitch_25
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->getCircleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 2564
    :pswitch_2d
    const-string v3, "v.all.circles"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 2567
    :pswitch_33
    const-string v3, "v.nearby"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 2570
    :pswitch_39
    const-string v3, "v.whatshot"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 2578
    .end local v2           #streamView:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;
    :cond_3f
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {p1, p2, v3, v4}, Lcom/google/android/apps/plus/content/EsAccountsData;->saveStreamViewList(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Ljava/lang/String;Z)V

    .line 2579
    return-void

    .line 2559
    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_25
        :pswitch_2d
        :pswitch_33
        :pswitch_39
    .end packed-switch
.end method

.method private sendFingerprintMismatch(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 2189
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/android/apps/plus/api/TacoTruckOperation$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/apps/plus/api/TacoTruckOperation$2;-><init>(Lcom/google/android/apps/plus/api/TacoTruckOperation;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2199
    return-void
.end method


# virtual methods
.method protected addAnalyticsData()V
    .registers 6

    .prologue
    .line 326
    iget-object v2, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mEventsToRestoreOnError:Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    if-eqz v2, :cond_5

    .line 340
    :cond_4
    :goto_4
    return-void

    .line 329
    :cond_5
    iget-object v2, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsAccount;->getIndex()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 330
    iget-object v2, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/content/EsAnalyticsData;->removeAll(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    move-result-object v1

    .line 331
    .local v1, events:Lcom/google/wireless/webapps/Analytics$LogEnvelope;
    invoke-virtual {v1}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->getEventCount()I

    move-result v0

    .line 332
    .local v0, eventCount:I
    const-string v2, "HttpTransaction"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 333
    const-string v2, "HttpTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " analytics events"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_41
    if-lez v0, :cond_4

    .line 336
    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addAnalyticsLogRequest(Lcom/google/wireless/webapps/Analytics$LogEnvelope;)V

    .line 337
    iput-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mEventsToRestoreOnError:Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    goto :goto_4
.end method

.method public changeNotificationSettings(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)V
    .registers 5
    .parameter "settings"

    .prologue
    .line 1058
    invoke-static {}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->newNotificationSettingsRequestBuilder()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;

    move-result-object v0

    .line 1059
    .local v0, request:Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->setNotificationSettings(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;

    .line 1060
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->NOTIFICATION_SETTINGS:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 1061
    return-void
.end method

.method public createActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/util/List;Lcom/google/apps/tacotown/proto/A2a$HangoutData;)V
    .registers 21
    .parameter "context"
    .parameter "activityId"
    .parameter "content"
    .parameter
    .parameter "audience"
    .parameter "aclDisplay"
    .parameter "location"
    .parameter
    .parameter "hangoutData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Mention;",
            ">;",
            "Lcom/google/wireless/tacotruck/proto/Data$Audience;",
            "Ljava/lang/String;",
            "Lcom/google/wireless/tacotruck/proto/Data$Location;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;",
            "Lcom/google/apps/tacotown/proto/A2a$HangoutData;",
            ")V"
        }
    .end annotation

    .prologue
    .line 430
    .local p4, mentions:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    .local p8, attachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/api/MediaRef;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mProcessMasterResponseFirst:Z

    .line 432
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->CREATE_ACTIVITY:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->buildActivityRequest(Landroid/content/Context;Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/wireless/tacotruck/proto/Data$Audience;Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/util/List;Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/android/apps/plus/api/EsRequest;

    move-result-object v10

    .line 434
    .local v10, request:Lcom/google/android/apps/plus/api/EsRequest;
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->POST:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/api/EsRequest;->getMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 436
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mMode:I

    .line 437
    return-void
.end method

.method public createActivityComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 7
    .parameter "activityId"
    .parameter "commentId"
    .parameter "text"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Mention;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 524
    .local p4, mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    invoke-static {p3, p4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->newCommentPostRequestBuilder(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    move-result-object v0

    .line 525
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 526
    invoke-virtual {v0, p2}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setCommentId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 527
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addCommentPostRequest(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)V

    .line 528
    return-void
.end method

.method public createApproveNameTag(Ljava/lang/String;JJZ)V
    .registers 10
    .parameter "ownerGaiaId"
    .parameter "photoId"
    .parameter "shapeId"
    .parameter "approve"

    .prologue
    .line 876
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

    move-result-object v0

    .line 877
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

    .line 878
    invoke-virtual {v0, p2, p3}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->setPhotoId(J)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

    .line 879
    invoke-virtual {v0, p4, p5}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->setShapeId(J)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

    .line 880
    invoke-virtual {v0, p6}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->setApprove(Z)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

    .line 881
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->NAME_TAG_APPROVAL:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 882
    return-void
.end method

.method public createPhotoAction(Ljava/lang/String;JLcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;)V
    .registers 8
    .parameter "ownerGaiaId"
    .parameter "photoId"
    .parameter "type"

    .prologue
    .line 958
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    move-result-object v0

    .line 959
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    .line 960
    invoke-virtual {v0, p2, p3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->setPhotoId(J)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    .line 961
    invoke-virtual {v0, p4}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    .line 962
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->PHOTO_ACTION:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 963
    return-void
.end method

.method public createPhotoComment(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 6
    .parameter "photoId"
    .parameter "text"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Mention;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 893
    .local p3, mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    invoke-static {p2, p3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->newCommentPostRequestBuilder(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    move-result-object v0

    .line 894
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setTargetPhotoId(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 895
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addCommentPostRequest(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)V

    .line 896
    return-void
.end method

.method public createPostPlusOne(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    .registers 7
    .parameter "type"
    .parameter "activityId"
    .parameter "audience"

    .prologue
    .line 653
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    move-result-object v0

    .line 654
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    .line 655
    invoke-virtual {v0, p2}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    .line 656
    if-eqz p3, :cond_13

    .line 657
    invoke-static {p3}, Lcom/google/android/apps/plus/api/ApiUtils;->removeCircleIdNamespaces(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    .line 659
    :cond_13
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->CREATE_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 660
    return-void
.end method

.method public deleteActivity(Ljava/lang/String;)V
    .registers 4
    .parameter "activityId"

    .prologue
    .line 483
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mProcessMasterResponseFirst:Z

    .line 485
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->DELETE:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    invoke-static {v1, p1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->createActivityAction(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;

    move-result-object v0

    .line 487
    .local v0, request:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ACTIVITY_ACTION:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 488
    return-void
.end method

.method public deleteAdPlusOne(Ljava/lang/String;)V
    .registers 5
    .parameter "plusOneId"

    .prologue
    .line 1096
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    move-result-object v0

    .line 1097
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->AD:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    .line 1098
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->setPlusoneId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    .line 1100
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->DELETE_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 1101
    return-void
.end method

.method public deleteComments(Ljava/lang/String;Ljava/util/List;Z)V
    .registers 7
    .parameter "activityId"
    .parameter
    .parameter "isPostComment"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 600
    .local p2, commentIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    move-result-object v0

    .line 601
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->DELETE_COMMENT:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    .line 602
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    .line 603
    invoke-virtual {v0, p2}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->addAllDeleteCommentId(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    .line 604
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ACTIVITY_ACTION:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 606
    if-eqz p3, :cond_1e

    .line 607
    const/4 v1, 0x4

    iput v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mMode:I

    .line 611
    :goto_1d
    return-void

    .line 609
    :cond_1e
    const/4 v1, 0x6

    iput v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mMode:I

    goto :goto_1d
.end method

.method public deletePostPlusOne(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "plusOneId"
    .parameter "activityId"

    .prologue
    .line 669
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    move-result-object v0

    .line 670
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->setPlusoneId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    .line 671
    invoke-virtual {v0, p2}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    .line 672
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->DELETE_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 673
    return-void
.end method

.method public editActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 16
    .parameter "context"
    .parameter "activityId"
    .parameter "content"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Mention;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, mentions:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    const/4 v6, 0x0

    .line 449
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mProcessMasterResponseFirst:Z

    .line 451
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->EDIT_ACTIVITY:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    invoke-direct/range {v0 .. v9}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->buildActivityRequest(Landroid/content/Context;Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/wireless/tacotruck/proto/Data$Audience;Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/util/List;Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/android/apps/plus/api/EsRequest;

    move-result-object v10

    .line 453
    .local v10, request:Lcom/google/android/apps/plus/api/EsRequest;
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->POST:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/api/EsRequest;->getMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 454
    return-void
.end method

.method public editComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 8
    .parameter "activityId"
    .parameter "commentId"
    .parameter "text"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Mention;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 579
    .local p4, mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mProcessMasterResponseFirst:Z

    .line 581
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    move-result-object v0

    .line 582
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->EDIT_COMMENT:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setPostType(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 583
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 584
    invoke-virtual {v0, p2}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setCommentId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 585
    invoke-virtual {v0, p3}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setContent(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 586
    if-eqz p4, :cond_1a

    .line 587
    invoke-virtual {v0, p4}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->addAllMention(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 589
    :cond_1a
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->POST:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 590
    return-void
.end method

.method public editPhotoComment(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 12
    .parameter "activityId"
    .parameter "photoId"
    .parameter "commentId"
    .parameter "text"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Mention;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    const/4 v5, 0x1

    .line 909
    iput-boolean v5, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mProcessMasterResponseFirst:Z

    .line 911
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    move-result-object v2

    .line 912
    .local v2, postRequestBuilder:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    sget-object v3, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->EDIT_COMMENT:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    invoke-virtual {v2, v3}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setPostType(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 913
    invoke-virtual {v2, p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 914
    invoke-virtual {v2, p3}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setCommentId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 915
    invoke-virtual {v2, p4}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setContent(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 916
    if-eqz p5, :cond_1a

    .line 917
    invoke-virtual {v2, p5}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->addAllMention(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 919
    :cond_1a
    sget-object v3, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->POST:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 921
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    move-result-object v1

    .line 922
    .local v1, photoRequestBuilder:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    .line 927
    .local v0, photoOptions:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    invoke-virtual {v0, v5}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnComments(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 928
    invoke-virtual {v0, v5}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnImageUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 929
    invoke-virtual {v0, v5}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnPlusOnes(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 930
    invoke-virtual {v0, v5}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnShapes(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 931
    invoke-virtual {v0, v5}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnVideoUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 932
    invoke-virtual {v0, v5}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnDownloadability(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 934
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    .line 935
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->getPhotoId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->setPhotoId(J)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    .line 936
    invoke-virtual {v1, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    .line 938
    sget-object v3, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_PHOTO:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 939
    return-void
.end method

.method public enablePush()V
    .registers 4

    .prologue
    .line 1164
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;

    move-result-object v0

    .line 1166
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->ANDROID_PUSH:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->setChannelToEnable(Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;)Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;

    .line 1168
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->SET_DEFAULT_NOTIFICATION_SETTINGS:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 1169
    return-void
.end method

.method public getActivity(Ljava/lang/String;)V
    .registers 5
    .parameter "activityId"

    .prologue
    .line 364
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    move-result-object v0

    .line 365
    .local v0, request:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->addActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    .line 366
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->setFetchReadState(Z)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    .line 367
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_ACTIVITY:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 369
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mMode:I

    .line 370
    return-void
.end method

.method public getActivityAudience(Ljava/lang/String;)V
    .registers 5
    .parameter "activityId"

    .prologue
    .line 395
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mProcessMasterResponseFirst:Z

    .line 397
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;

    move-result-object v0

    .line 398
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;

    .line 400
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_AUDIENCE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 401
    return-void
.end method

.method public getActivityByDesktopId(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "desktopActivityId"
    .parameter "ownerGaiaId"

    .prologue
    .line 379
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    move-result-object v0

    .line 380
    .local v0, request:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;->DESKTOP:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->setIdType(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    .line 381
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->addActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    .line 382
    invoke-virtual {v0, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->addObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    .line 383
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->setFetchReadState(Z)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    .line 384
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_ACTIVITY:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 386
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mMode:I

    .line 387
    return-void
.end method

.method public getActivityId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2642
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mActivityId:Ljava/lang/String;

    return-object v0
.end method

.method public getActivityPhotos(Ljava/lang/String;)V
    .registers 6
    .parameter "activityId"

    .prologue
    const/4 v3, 0x1

    .line 692
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v1

    .line 693
    .local v1, photoOptions:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnComments(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 694
    invoke-virtual {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnImageUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 695
    invoke-virtual {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnPlusOnes(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 696
    invoke-virtual {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnShapes(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 697
    invoke-virtual {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnVideoUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 698
    invoke-virtual {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnDownloadability(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 700
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

    move-result-object v0

    .line 703
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

    .line 704
    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

    .line 705
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_PHOTOS_BY_ACTIVITY_ID:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 706
    return-void
.end method

.method public getActivityStream(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .parameter "view"
    .parameter "circleId"
    .parameter "gaiaId"
    .parameter "continuationToken"
    .parameter "maxCount"

    .prologue
    const/4 v3, 0x1

    .line 272
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;

    move-result-object v2

    .line 273
    .local v2, request:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    move-result-object v0

    .line 274
    .local v0, parameters:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    invoke-virtual {v0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setCollapsedDataOnly(Z)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 275
    invoke-virtual {v0, p5}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setMaxCount(I)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 276
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setView(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 277
    sget-object v4, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->CIRCLES:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    if-ne p1, v4, :cond_4f

    if-nez p2, :cond_4f

    if-nez p3, :cond_4f

    :goto_1a
    invoke-virtual {v0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setFetchPopularPost(Z)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 279
    if-eqz p2, :cond_34

    .line 280
    const-string v3, "f."

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 281
    const-string v3, "f."

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 282
    .local v1, prefixLength:I
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setFocusGroupId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 290
    .end local v1           #prefixLength:I
    :cond_34
    :goto_34
    if-eqz p3, :cond_39

    .line 291
    invoke-virtual {v0, p3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setFocusObfuscatedId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 293
    :cond_39
    if-eqz p4, :cond_3e

    .line 294
    invoke-virtual {v0, p4}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setContinuationToken(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 296
    :cond_3e
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->setParams(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;

    .line 298
    sget-object v3, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_ACTIVITIES:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 299
    return-void

    .line 277
    :cond_4f
    const/4 v3, 0x0

    goto :goto_1a

    .line 283
    :cond_51
    const-string v3, "g."

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 284
    const-string v3, "g."

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 285
    .restart local v1       #prefixLength:I
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setGaiaGroupId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    goto :goto_34

    .line 287
    .end local v1           #prefixLength:I
    :cond_67
    const-string v3, "HttpTransaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected circle id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method

.method public getAdPlusOne(Ljava/lang/String;)V
    .registers 5
    .parameter "shareToken"

    .prologue
    .line 1109
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;

    move-result-object v0

    .line 1110
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;

    .line 1111
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->setReturnGaiaId(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;

    .line 1112
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->AD:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;

    .line 1114
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 1115
    return-void
.end method

.method public getAlbum(Ljava/lang/String;J)V
    .registers 8
    .parameter "ownerGaiaId"
    .parameter "albumId"

    .prologue
    const/4 v3, 0x1

    .line 739
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v1

    .line 740
    .local v1, photoOptions:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnComments(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 741
    invoke-virtual {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnImageUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 742
    invoke-virtual {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnPlusOnes(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 743
    invoke-virtual {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnShapes(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 744
    invoke-virtual {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnVideoUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 745
    invoke-virtual {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnDownloadability(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 747
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    move-result-object v0

    .line 748
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    .line 749
    invoke-virtual {v0, p2, p3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->setId(J)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    .line 750
    invoke-virtual {v0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->setReturnAlbumInfo(Z)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    .line 751
    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    .line 753
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_ALBUM:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 754
    return-void
.end method

.method public getAlbumList()V
    .registers 5

    .prologue
    .line 712
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    move-result-object v1

    .line 713
    .local v1, builder:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;

    move-result-object v0

    .line 714
    .local v0, albumOptions:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->setMaxPreviewCount(I)Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;

    .line 715
    invoke-virtual {v1, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->setAlbumOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    .line 716
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_ALBUM_LIST:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 717
    return-void
.end method

.method public getAudience()Lcom/google/android/apps/plus/api/AudienceData;
    .registers 2

    .prologue
    .line 2585
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAudienceData:Lcom/google/android/apps/plus/api/AudienceData;

    return-object v0
.end method

.method public getEditableActivityContent(Ljava/lang/String;)V
    .registers 5
    .parameter "activityId"

    .prologue
    .line 409
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;

    move-result-object v0

    .line 410
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;

    .line 412
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_EDITABLE_CONTENT:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 413
    return-void
.end method

.method public getEditableContentResponse()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;
    .registers 2

    .prologue
    .line 2592
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mEditableContentResponse:Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;

    return-object v0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 160
    invoke-super {p0}, Lcom/google/android/apps/plus/api/EsOperation;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNearbyActivities(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/lang/String;I)V
    .registers 9
    .parameter "view"
    .parameter "location"
    .parameter "continuationToken"
    .parameter "maxCount"

    .prologue
    .line 245
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;

    move-result-object v1

    .line 246
    .local v1, request:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    move-result-object v0

    .line 247
    .local v0, parameters:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setCollapsedDataOnly(Z)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 248
    invoke-virtual {v0, p4}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setMaxCount(I)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 249
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setView(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 250
    invoke-virtual {v0, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setLocation(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 251
    if-eqz p3, :cond_1a

    .line 252
    invoke-virtual {v0, p3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setContinuationToken(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 254
    :cond_1a
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->setParams(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;

    .line 256
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_ACTIVITIES:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 257
    return-void
.end method

.method public getNearbyLocations(Lcom/google/android/apps/plus/api/LocationQuery;)V
    .registers 7
    .parameter "query"

    .prologue
    .line 1069
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mLocationQueries:Ljava/util/Map;

    .line 1070
    invoke-virtual {p1}, Lcom/google/android/apps/plus/api/LocationQuery;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 1071
    .local v0, location:Landroid/location/Location;
    invoke-virtual {p1}, Lcom/google/android/apps/plus/api/LocationQuery;->hasQueryString()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1072
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;

    move-result-object v3

    invoke-static {v0}, Lcom/google/android/apps/plus/util/LocationUtils;->createPoint(Landroid/location/Location;)Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->setPosition(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/apps/plus/api/LocationQuery;->getQueryString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->setQuery(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;

    move-result-object v2

    .line 1076
    .local v2, request:Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;

    move-result-object v1

    .line 1077
    .local v1, message:Lcom/google/protobuf/MessageLite;
    iget-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mLocationQueries:Ljava/util/Map;

    invoke-interface {v3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    sget-object v3, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->PLACE_SEARCH:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {p0, v3, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 1088
    .end local v2           #request:Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;
    :goto_33
    return-void

    .line 1080
    .end local v1           #message:Lcom/google/protobuf/MessageLite;
    :cond_34
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;

    move-result-object v3

    invoke-static {v0}, Lcom/google/android/apps/plus/util/LocationUtils;->createPoint(Landroid/location/Location;)Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->setPosition(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->setAccuracyInMeters(I)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;

    move-result-object v2

    .line 1084
    .local v2, request:Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;

    move-result-object v1

    .line 1085
    .restart local v1       #message:Lcom/google/protobuf/MessageLite;
    iget-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mLocationQueries:Ljava/util/Map;

    invoke-interface {v3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    sget-object v3, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->SNAP_TO_PLACE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {p0, v3, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    goto :goto_33
.end method

.method public getNotificationSettings()V
    .registers 4

    .prologue
    .line 1048
    invoke-static {}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->newNotificationSettingsRequestBuilder()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;

    move-result-object v0

    .line 1049
    .local v0, request:Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->NOTIFICATION_SETTINGS:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 1050
    return-void
.end method

.method public getNotificationSettingsResponse()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
    .registers 2

    .prologue
    .line 2607
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mNotificationSettingsResponse:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    return-object v0
.end method

.method public getPeopleSearchResult()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;
    .registers 2

    .prologue
    .line 2628
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mPeopleResult:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    return-object v0
.end method

.method public getPhoto(Ljava/lang/String;J)V
    .registers 8
    .parameter "ownerGaiaId"
    .parameter "photoId"

    .prologue
    const/4 v2, 0x1

    .line 984
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    move-result-object v0

    .line 985
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v1

    .line 987
    .local v1, photoOptions:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    invoke-virtual {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnComments(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 988
    invoke-virtual {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnImageUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 989
    invoke-virtual {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnPlusOnes(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 990
    invoke-virtual {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnShapes(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 991
    invoke-virtual {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnVideoUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 992
    invoke-virtual {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnDownloadability(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 994
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    .line 995
    invoke-virtual {v0, p2, p3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->setPhotoId(J)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    .line 996
    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    .line 998
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_PHOTO:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 999
    return-void
.end method

.method public getPhotoConsumptionStream(Ljava/lang/String;II)V
    .registers 10
    .parameter "circleId"
    .parameter "photoCount"
    .parameter "photoOffset"

    .prologue
    const/4 v4, 0x1

    .line 838
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    move-result-object v0

    .line 840
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v1

    .line 842
    .local v1, photoOptions:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnComments(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 843
    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnImageUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 844
    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnPlusOnes(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 845
    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnShapes(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 846
    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnVideoUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 847
    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnDownloadability(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 849
    if-eqz p1, :cond_37

    const-string v3, "0"

    if-eq p1, v3, :cond_37

    .line 850
    const-string v3, "f."

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 851
    const-string v3, "f."

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 852
    .local v2, prefixLength:I
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->setFocusGroupId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    .line 861
    .end local v2           #prefixLength:I
    :cond_37
    :goto_37
    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    .line 862
    invoke-virtual {v0, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->setMaxPhotoCount(I)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    .line 863
    invoke-virtual {v0, p3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->setOffset(I)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    .line 864
    sget-object v3, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_PHOTO_CONSUMPTION_STREAM:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 865
    return-void

    .line 853
    :cond_4a
    const-string v3, "g."

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 854
    const-string v3, "g."

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 855
    .restart local v2       #prefixLength:I
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->setGaiaGroupId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    goto :goto_37

    .line 857
    .end local v2           #prefixLength:I
    :cond_60
    const-string v3, "HttpTransaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected circle id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37
.end method

.method public getPhotoSettings(Ljava/lang/String;)V
    .registers 5
    .parameter "gaiaId"

    .prologue
    .line 1007
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;

    move-result-object v0

    .line 1009
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->setUserId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;

    .line 1011
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_PHOTO_SETTINGS:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 1012
    return-void
.end method

.method public getPhotoSettingsResult()Z
    .registers 2

    .prologue
    .line 2635
    iget-boolean v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mDownloadAllowed:Z

    return v0
.end method

.method public getPhotosOfUser(Ljava/lang/String;)V
    .registers 6
    .parameter "gaiaId"

    .prologue
    const/4 v3, 0x1

    .line 814
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    move-result-object v0

    .line 815
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v1

    .line 817
    .local v1, photoOptions:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnComments(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 818
    invoke-virtual {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnImageUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 819
    invoke-virtual {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnPlusOnes(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 820
    invoke-virtual {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnShapes(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 821
    invoke-virtual {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnVideoUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 822
    invoke-virtual {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnDownloadability(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 824
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->setFocusObfuscatedId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    .line 825
    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    .line 827
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_PHOTOS_OF_USER:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 828
    return-void
.end method

.method public getPlusOnePeople(Ljava/lang/String;)V
    .registers 5
    .parameter "plusOneId"

    .prologue
    .line 681
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;

    move-result-object v0

    .line 682
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->setPlusoneId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;

    .line 683
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_PLUS_ONE_PEOPLE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 684
    return-void
.end method

.method public getPlusOnePeopleResponse()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;
    .registers 2

    .prologue
    .line 2621
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mGetPlusOnePeopleResponse:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;

    return-object v0
.end method

.method public getPlusOneResponse()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;
    .registers 2

    .prologue
    .line 2614
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mGetPlusOneResponse:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;

    return-object v0
.end method

.method public getProfileAlbumList(Ljava/lang/String;Z)V
    .registers 6
    .parameter "ownerGaiaId"
    .parameter "onlySharedAlbums"

    .prologue
    .line 726
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    move-result-object v0

    .line 727
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    .line 728
    invoke-virtual {v0, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->setSharedAlbumsOnly(Z)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    .line 729
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_ALBUM_LIST:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 730
    return-void
.end method

.method public getProfilePlusOneData(Ljava/lang/String;)V
    .registers 5
    .parameter "gaiaId"

    .prologue
    .line 1177
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;

    move-result-object v0

    .line 1178
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->ENTITY:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;

    .line 1179
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;

    .line 1180
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 1181
    return-void
.end method

.method public getSettings()V
    .registers 3

    .prologue
    .line 1018
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->SETTINGS:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 1019
    return-void
.end method

.method public getStreamPhotos(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 9
    .parameter "ownerGaiaId"
    .parameter "streamId"
    .parameter "offset"
    .parameter "pageSize"

    .prologue
    const/4 v3, 0x1

    .line 785
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    move-result-object v0

    .line 786
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v1

    .line 789
    .local v1, photoOptions:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnComments(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 790
    invoke-virtual {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnImageUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 791
    invoke-virtual {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnPlusOnes(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 792
    invoke-virtual {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnVideoUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 793
    invoke-virtual {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnDownloadability(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 795
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    .line 796
    invoke-virtual {v0, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->setStreamId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    .line 799
    invoke-virtual {v0, p3}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->setOffset(I)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    .line 800
    invoke-virtual {v0, p4}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->setMaxPhotoCount(I)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    .line 802
    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    .line 804
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;->UPLOAD_TIME:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->setSortBy(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    .line 805
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_STREAM_PHOTOS:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 806
    return-void
.end method

.method public getUploadPhotoResponse()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;
    .registers 2

    .prologue
    .line 2599
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mUploadPhotoResponse:Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

    return-object v0
.end method

.method protected handleOneResponse(Lcom/google/wireless/tacotruck/proto/Network$Response;Lcom/google/protobuf/MessageLite;)V
    .registers 7
    .parameter "response"
    .parameter "originalRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1268
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getResponseBody()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1269
    .local v0, body:Lcom/google/protobuf/ByteString;
    const-string v1, "HttpTransaction"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1270
    const-string v1, "HttpTransaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---- Response type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getRequestType()Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    :cond_3b
    sget-object v1, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getRequestType()Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1a4

    .line 1442
    const-string v1, "HttpTransaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled response type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getRequestType()Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    .end local p2
    :goto_6a
    :pswitch_6a
    return-void

    .line 1276
    .restart local p2
    :pswitch_6b
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;

    .end local p2
    sget-object v1, Lcom/google/android/apps/plus/api/TacoTruckOperation;->sRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    invoke-static {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;)V

    goto :goto_6a

    .line 1282
    .restart local p2
    :pswitch_77
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;

    .end local p2
    sget-object v1, Lcom/google/android/apps/plus/api/TacoTruckOperation;->sRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    invoke-static {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;)V

    goto :goto_6a

    .line 1288
    .restart local p2
    :pswitch_83
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;

    .end local p2
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;)V

    goto :goto_6a

    .line 1294
    .restart local p2
    :pswitch_8d
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;

    .end local p2
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;)V

    goto :goto_6a

    .line 1300
    .restart local p2
    :pswitch_97
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    .end local p2
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$PostResponse;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Lcom/google/wireless/tacotruck/proto/Network$PostResponse;)V

    goto :goto_6a

    .line 1305
    .restart local p2
    :pswitch_a1
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;

    .end local p2
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;)V

    goto :goto_6a

    .line 1310
    .restart local p2
    :pswitch_ab
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;

    .end local p2
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;)V

    goto :goto_6a

    .line 1321
    .restart local p2
    :pswitch_b5
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;

    .end local p2
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;)V

    goto :goto_6a

    .line 1326
    .restart local p2
    :pswitch_bf
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;

    .end local p2
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;)V

    goto :goto_6a

    .line 1334
    .restart local p2
    :pswitch_c9
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;

    .end local p2
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;)V

    goto :goto_6a

    .line 1340
    .restart local p2
    :pswitch_d3
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;

    .end local p2
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;)V

    goto :goto_6a

    .line 1346
    .restart local p2
    :pswitch_dd
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;

    .end local p2
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;)V

    goto :goto_6a

    .line 1351
    .restart local p2
    :pswitch_e7
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;

    .end local p2
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;)V

    goto/16 :goto_6a

    .line 1356
    .restart local p2
    :pswitch_f2
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;

    .end local p2
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;)V

    goto/16 :goto_6a

    .line 1361
    .restart local p2
    :pswitch_fd
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;

    .end local p2
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;)V

    goto/16 :goto_6a

    .line 1366
    .restart local p2
    :pswitch_108
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;

    .end local p2
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;)V

    goto/16 :goto_6a

    .line 1371
    .restart local p2
    :pswitch_113
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;

    .end local p2
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;)V

    goto/16 :goto_6a

    .line 1376
    .restart local p2
    :pswitch_11e
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;

    .end local p2
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;)V

    goto/16 :goto_6a

    .line 1381
    .restart local p2
    :pswitch_129
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;

    .end local p2
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;)V

    goto/16 :goto_6a

    .line 1386
    .restart local p2
    :pswitch_134
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;

    .end local p2
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;)V

    goto/16 :goto_6a

    .line 1391
    .restart local p2
    :pswitch_13f
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;

    .end local p2
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;)V

    goto/16 :goto_6a

    .line 1396
    .restart local p2
    :pswitch_14a
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;

    .end local p2
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;)V

    goto/16 :goto_6a

    .line 1401
    .restart local p2
    :pswitch_155
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;

    .end local p2
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;)V

    goto/16 :goto_6a

    .line 1406
    .restart local p2
    :pswitch_160
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;

    .end local p2
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;)V

    goto/16 :goto_6a

    .line 1412
    .restart local p2
    :pswitch_16b
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;

    .end local p2
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;)V

    goto/16 :goto_6a

    .line 1417
    .restart local p2
    :pswitch_176
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;

    .end local p2
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;)V

    goto/16 :goto_6a

    .line 1422
    .restart local p2
    :pswitch_181
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;

    .end local p2
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;)V

    goto/16 :goto_6a

    .line 1427
    .restart local p2
    :pswitch_18c
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;

    .end local p2
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;)V

    goto/16 :goto_6a

    .line 1436
    .restart local p2
    :pswitch_197
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;

    .end local p2
    sget-object v1, Lcom/google/android/apps/plus/api/TacoTruckOperation;->sRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    invoke-static {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;)V

    goto/16 :goto_6a

    .line 1274
    :pswitch_data_1a4
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_77
        :pswitch_83
        :pswitch_8d
        :pswitch_97
        :pswitch_a1
        :pswitch_ab
        :pswitch_6a
        :pswitch_6a
        :pswitch_b5
        :pswitch_bf
        :pswitch_6a
        :pswitch_c9
        :pswitch_d3
        :pswitch_dd
        :pswitch_e7
        :pswitch_f2
        :pswitch_fd
        :pswitch_108
        :pswitch_113
        :pswitch_11e
        :pswitch_129
        :pswitch_134
        :pswitch_13f
        :pswitch_14a
        :pswitch_155
        :pswitch_160
        :pswitch_16b
        :pswitch_176
        :pswitch_181
        :pswitch_18c
        :pswitch_6a
        :pswitch_197
    .end packed-switch
.end method

.method public markActivitiesAsRead([Ljava/lang/String;)V
    .registers 9
    .parameter "activityIds"

    .prologue
    .line 1151
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest$Builder;

    move-result-object v2

    .line 1152
    .local v2, builder:Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest$Builder;
    move-object v1, p1

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_7
    if-ge v3, v4, :cond_11

    aget-object v0, v1, v3

    .line 1153
    .local v0, activityId:Ljava/lang/String;
    invoke-virtual {v2, v0}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest$Builder;->addActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest$Builder;

    .line 1152
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1156
    .end local v0           #activityId:Ljava/lang/String;
    :cond_11
    sget-object v5, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->MARK_ACTIVITY_AS_READ:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 1157
    return-void
.end method

.method public moderateComments(Ljava/lang/String;Ljava/util/List;ZZZ)V
    .registers 9
    .parameter "activityId"
    .parameter
    .parameter "delete"
    .parameter "report"
    .parameter "isPostComment"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZZ)V"
        }
    .end annotation

    .prologue
    .line 624
    .local p2, commentIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mProcessMasterResponseFirst:Z

    .line 626
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    move-result-object v0

    .line 627
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->MODERATE_COMMENTS:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    .line 628
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    .line 629
    if-eqz p3, :cond_14

    .line 630
    invoke-virtual {v0, p2}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->addAllDeleteCommentId(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    .line 632
    :cond_14
    if-eqz p4, :cond_19

    .line 633
    invoke-virtual {v0, p2}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->addAllReportCommentId(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    .line 635
    :cond_19
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ACTIVITY_ACTION:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 637
    if-eqz p5, :cond_28

    .line 638
    const/4 v1, 0x5

    iput v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mMode:I

    .line 642
    :goto_27
    return-void

    .line 640
    :cond_28
    const/4 v1, 0x7

    iput v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mMode:I

    goto :goto_27
.end method

.method public muteActivity(Ljava/lang/String;)V
    .registers 4
    .parameter "activityId"

    .prologue
    .line 496
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mProcessMasterResponseFirst:Z

    .line 498
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->MUTE:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    invoke-static {v1, p1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->createActivityAction(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;

    move-result-object v0

    .line 500
    .local v0, request:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ACTIVITY_ACTION:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 501
    return-void
.end method

.method public bridge synthetic onHttpCookie(Lorg/apache/http/cookie/Cookie;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/api/EsOperation;->onHttpCookie(Lorg/apache/http/cookie/Cookie;)V

    return-void
.end method

.method protected onHttpOperationComplete(ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 7
    .parameter "errorCode"
    .parameter "reasonPhrase"
    .parameter "ex"

    .prologue
    .line 347
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/api/EsOperation;->onHttpOperationComplete(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 349
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_9

    if-eqz p3, :cond_22

    .line 350
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mEventsToRestoreOnError:Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_22

    .line 351
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mEventsToRestoreOnError:Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/content/EsAnalyticsData;->bulkInsert(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/webapps/Analytics$LogEnvelope;)V

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mEventsToRestoreOnError:Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    .line 355
    :cond_22
    return-void
.end method

.method public photosHome()V
    .registers 4

    .prologue
    .line 945
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;

    move-result-object v0

    .line 946
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->setMaxCoverCountPerSection(I)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;

    .line 947
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->PHOTOS_HOME:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 948
    return-void
.end method

.method public reportActivity(Ljava/lang/String;)V
    .registers 4
    .parameter "activityId"

    .prologue
    .line 507
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mProcessMasterResponseFirst:Z

    .line 509
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->REPORT_ABUSE:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    invoke-static {v1, p1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->createActivityAction(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;

    move-result-object v0

    .line 511
    .local v0, request:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ACTIVITY_ACTION:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 512
    return-void
.end method

.method public reportAdPlusOne(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "packageName"
    .parameter "installerPackageName"

    .prologue
    .line 1124
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;

    move-result-object v0

    .line 1125
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;->PLATFORM:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->setContentType(Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;)Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;

    .line 1126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;

    .line 1128
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->REPORT_ABUSE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 1129
    return-void
.end method

.method public reshareActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/lang/String;)V
    .registers 18
    .parameter "newActivityId"
    .parameter "activityId"
    .parameter "content"
    .parameter
    .parameter "audience"
    .parameter "aclDisplay"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Mention;",
            ">;",
            "Lcom/google/wireless/tacotruck/proto/Data$Audience;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 468
    .local p4, mentions:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mProcessMasterResponseFirst:Z

    .line 470
    const/4 v1, 0x0

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->RESHARE:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v9}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->buildActivityRequest(Landroid/content/Context;Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/wireless/tacotruck/proto/Data$Audience;Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/util/List;Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/android/apps/plus/api/EsRequest;

    move-result-object v10

    .line 472
    .local v10, request:Lcom/google/android/apps/plus/api/EsRequest;
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->POST:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/api/EsRequest;->getMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 474
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mMode:I

    .line 475
    return-void
.end method

.method public searchActivities(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "query"
    .parameter "continuationToken"

    .prologue
    .line 1191
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

    move-result-object v1

    .line 1193
    .local v1, builder:Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    move-result-object v2

    .line 1194
    .local v2, searchQueryBuilder:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    invoke-virtual {v2, p1}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->setQueryText(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    .line 1195
    sget-object v3, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;->TACOS:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

    invoke-virtual {v2, v3}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->addFilter(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    .line 1196
    sget-object v3, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;->RECENT:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    invoke-virtual {v2, v3}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->setSort(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    .line 1197
    invoke-virtual {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->setSearchQuery(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

    .line 1199
    if-eqz p2, :cond_24

    .line 1200
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    move-result-object v0

    .line 1202
    .local v0, activityRequestDataBuilder:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;
    invoke-virtual {v0, p2}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->setShownActivitiesBlob(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    .line 1203
    invoke-virtual {v1, v0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->setActivityRequestData(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

    .line 1206
    .end local v0           #activityRequestDataBuilder:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;
    :cond_24
    sget-object v3, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->SEARCH:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 1207
    return-void
.end method

.method public searchPeople(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 9
    .parameter "query"
    .parameter "includePlusPages"
    .parameter "continuationToken"

    .prologue
    .line 1217
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

    move-result-object v0

    .line 1219
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    move-result-object v2

    .line 1220
    .local v2, searchQueryBuilder:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    invoke-virtual {v2, p1}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->setQueryText(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    .line 1221
    sget-object v3, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;->PEOPLE:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

    invoke-virtual {v2, v3}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->addFilter(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    .line 1222
    sget-object v3, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;->BEST:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    invoke-virtual {v2, v3}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->setSort(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    .line 1223
    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->setSearchQuery(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

    .line 1225
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;

    move-result-object v1

    .line 1227
    .local v1, peopleRequestDataBuilder:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;
    invoke-virtual {v1, p2}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->setIncludePlusPages(Z)Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;

    .line 1228
    if-eqz p3, :cond_24

    .line 1229
    invoke-virtual {v1, p3}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->setShownPeopleBlob(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;

    .line 1232
    :cond_24
    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->setPeopleRequestData(Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

    .line 1234
    sget-object v3, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->SEARCH:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 1235
    return-void
.end method

.method public setLastNotificationReadTime(D)V
    .registers 6
    .parameter "time"

    .prologue
    .line 1138
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest$Builder;

    move-result-object v0

    .line 1140
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest$Builder;
    invoke-virtual {v0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest$Builder;->setLastReadTime(D)Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest$Builder;

    .line 1142
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->SET_NOTIFICATIONS_LAST_READ_TIME:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 1143
    return-void
.end method

.method public setProfilePhoto([B)V
    .registers 6
    .parameter "photoBytes"

    .prologue
    .line 971
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;

    move-result-object v0

    .line 972
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;
    invoke-static {p1}, Lcom/google/android/apps/plus/util/ImageUtils;->encodeImageBytes([B)Ljava/lang/String;

    move-result-object v1

    .line 973
    .local v1, encodedPhoto:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->setPhoto(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;

    .line 974
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->SET_PROFILE_PHOTO:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 975
    return-void
.end method

.method public setUserPreferences(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;)V
    .registers 5
    .parameter "userPref"

    .prologue
    .line 1025
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;

    move-result-object v0

    .line 1026
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->setUserPreferences(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;)Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;

    .line 1027
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->SETTINGS:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 1028
    return-void
.end method

.method public setupAccount()V
    .registers 2

    .prologue
    .line 1034
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getSettings()V

    .line 1035
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mSetupAccount:Z

    .line 1036
    return-void
.end method

.method public start(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpTransactionMetrics;)V
    .registers 3
    .parameter "syncState"
    .parameter "metrics"

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addAnalyticsData()V

    .line 318
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/api/EsOperation;->start(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpTransactionMetrics;)V

    .line 319
    return-void
.end method

.method public uploadPhotoThumbnail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/apps/plus/api/MediaRef;)V
    .registers 14
    .parameter "context"
    .parameter "albumTitle"
    .parameter "albumLabel"
    .parameter
    .parameter "ref"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, streamIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v5, 0x280

    .line 1242
    new-instance v3, Lcom/google/android/apps/plus/content/LocalImageRequest;

    invoke-direct {v3, p5, v5, v5}, Lcom/google/android/apps/plus/content/LocalImageRequest;-><init>(Lcom/google/android/apps/plus/api/MediaRef;II)V

    .line 1244
    .local v3, request:Lcom/google/android/apps/plus/content/LocalImageRequest;
    invoke-static {p1, v3}, Lcom/google/android/apps/plus/content/EsPhotosData;->loadLocalBitmap(Landroid/content/Context;Lcom/google/android/apps/plus/content/LocalImageRequest;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1245
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1246
    .local v4, stream:Ljava/io/ByteArrayOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v0, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1247
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 1248
    .local v1, imageBytes:[B
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1250
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->setAlbumTitle(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->setAlbumLabel(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

    move-result-object v5

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    move-result-object v6

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->setThumbnailBytes(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->setMediaRef(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

    move-result-object v5

    invoke-virtual {v5, p4}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->addAllStreamId(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;

    move-result-object v2

    .line 1258
    .local v2, photoRequest:Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;
    sget-object v5, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->UPLOAD_PHOTO:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {p0, v5, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 1259
    return-void
.end method
