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
            "Ljava/lang/Long;",
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
    .registers 1

    .prologue
    .line 143
    const-class v0, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->$assertionsDisabled:Z

    return-void

    :cond_c
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
    .line 183
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;ZLcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 184
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
    .line 198
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

    .line 200
    iput-object p6, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mSyncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    .line 201
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/api/TacoTruckOperation;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addAnalyticsLogRequest(Lcom/google/wireless/webapps/Analytics$LogEnvelope;)V
    .registers 5
    .parameter "events"

    .prologue
    .line 274
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;

    move-result-object v0

    .line 275
    .local v0, request:Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->setLogEnvelope(Lcom/google/wireless/webapps/Analytics$LogEnvelope;)Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;

    .line 276
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ANALYTICS_LOG:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 277
    return-void
.end method

.method private addCommentPostRequest(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)V
    .registers 4
    .parameter "request"

    .prologue
    .line 507
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->CREATE_COMMENT:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getPostType()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    move-result-object v1

    if-eq v0, v1, :cond_10

    .line 508
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Post is not a comment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_10
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->hasActivityId()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->hasTargetPhotoId()Z

    move-result v0

    if-nez v0, :cond_24

    .line 511
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No activity ID or photo was specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :cond_24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mProcessMasterResponseFirst:Z

    .line 514
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->POST:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 515
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mMode:I

    .line 516
    return-void
.end method

.method private buildActivitiesStreamKey(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Ljava/lang/String;
    .registers 6
    .parameter "params"

    .prologue
    .line 1313
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->hasFocusGroupId()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1314
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

    .line 1322
    .local v0, circleId:Ljava/lang/String;
    :goto_1d
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->hasUserGaiaId()Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 1323
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getUserGaiaId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1329
    .local v1, userId:Ljava/lang/Long;
    :goto_2b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->hasLocation()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getLocation()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v2

    :goto_35
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getView()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/apps/plus/content/EsPostsData;->buildActivitiesStreamKey(Ljava/lang/Long;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Location;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1315
    .end local v0           #circleId:Ljava/lang/String;
    .end local v1           #userId:Ljava/lang/Long;
    :cond_3e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->hasGaiaGroupId()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 1316
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

    .line 1318
    .end local v0           #circleId:Ljava/lang/String;
    :cond_5c
    const/4 v0, 0x0

    .restart local v0       #circleId:Ljava/lang/String;
    goto :goto_1d

    .line 1325
    :cond_5e
    const/4 v1, 0x0

    .restart local v1       #userId:Ljava/lang/Long;
    goto :goto_2b

    .line 1329
    :cond_60
    const/4 v2, 0x0

    goto :goto_35
.end method

.method private buildActivityRequest(Landroid/content/Context;Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/wireless/tacotruck/proto/Data$Audience;Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/util/List;)Lcom/google/android/apps/plus/api/EsRequest;
    .registers 18
    .parameter "context"
    .parameter "type"
    .parameter "activityId"
    .parameter "content"
    .parameter
    .parameter "audience"
    .parameter "location"
    .parameter
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
            ">;)",
            "Lcom/google/android/apps/plus/api/EsRequest;"
        }
    .end annotation

    .prologue
    .line 2014
    .local p5, mentions:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    .local p8, remoteAttachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/api/MediaRef;>;"
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    move-result-object v1

    .line 2015
    .local v1, builder:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    invoke-virtual {v1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setPostType(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 2016
    invoke-virtual {v1, p3}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 2017
    if-eqz p4, :cond_14

    .line 2018
    invoke-virtual {v1, p4}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setContent(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 2020
    if-eqz p5, :cond_14

    .line 2021
    invoke-virtual {v1, p5}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->addAllMention(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 2025
    :cond_14
    invoke-static {p6}, Lcom/google/android/apps/plus/api/ApiUtils;->removeCircleIdNamespaces(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 2026
    if-eqz p7, :cond_22

    .line 2027
    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setLocation(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 2030
    :cond_22
    if-eqz p8, :cond_42

    .line 2031
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2032
    .local v4, resolver:Landroid/content/ContentResolver;
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2c
    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/api/MediaRef;

    .line 2033
    .local v3, ref:Lcom/google/android/apps/plus/api/MediaRef;
    invoke-direct {p0, p1, v4, v3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->buildMediaReference(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/google/android/apps/plus/api/MediaRef;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    move-result-object v5

    .line 2036
    .local v5, tacoReference:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    if-eqz v5, :cond_2c

    .line 2037
    invoke-virtual {v1, v5}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->addMediaRef(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    goto :goto_2c

    .line 2042
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #ref:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v4           #resolver:Landroid/content/ContentResolver;
    .end local v5           #tacoReference:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    :cond_42
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAttachments:Ljava/util/List;

    .line 2043
    new-instance v6, Lcom/google/android/apps/plus/api/EsRequest;

    sget-object v7, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->POST:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/google/android/apps/plus/api/EsRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    return-object v6
.end method

.method private buildMediaReference(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/google/android/apps/plus/api/MediaRef;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 2060
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    move-result-object v9

    .line 2063
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;->PHOTO:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    invoke-virtual {v9, v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->setMediaType(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    .line 2066
    invoke-virtual {p3}, Lcom/google/android/apps/plus/api/MediaRef;->hasLocalUri()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p3}, Lcom/google/android/apps/plus/api/MediaRef;->getLocalUri()Landroid/net/Uri;

    move-result-object v0

    move-object v10, v0

    .line 2069
    :goto_15
    if-eqz v10, :cond_d7

    .line 2070
    invoke-static {p1, v10}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getFingerprint(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v7

    .line 2072
    if-nez v7, :cond_38

    .line 2074
    const-string v0, "HttpTransaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not determine fingerprint for media: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    :goto_35
    return-object v8

    :cond_36
    move-object v10, v8

    .line 2066
    goto :goto_15

    .line 2078
    :cond_38
    invoke-virtual {p3}, Lcom/google/android/apps/plus/api/MediaRef;->getPhotoId()J

    move-result-wide v0

    .line 2079
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_d5

    .line 2080
    iget-object v2, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getFingerprint(Landroid/content/Context;J)Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v0

    .line 2081
    invoke-virtual {v7, v0}, Lcom/android/gallery3d/common/Fingerprint;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d3

    .line 2085
    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Lcom/android/gallery3d/common/Fingerprint;->toStreamId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getPhotoIdFromStream(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    .line 2088
    const-string v1, "HttpTransaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fingerprint mismatch; old: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/gallery3d/common/Fingerprint;->toStreamId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", new: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/gallery3d/common/Fingerprint;->toStreamId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->sendFingerprintMismatch(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 2094
    new-instance v0, Lcom/google/android/apps/plus/api/MediaRef;

    invoke-virtual {p3}, Lcom/google/android/apps/plus/api/MediaRef;->getOwnerGaiaId()J

    move-result-wide v1

    invoke-virtual {p3}, Lcom/google/android/apps/plus/api/MediaRef;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Lcom/google/android/apps/plus/api/MediaRef;->getLocalUri()Landroid/net/Uri;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(JJLjava/lang/String;Landroid/net/Uri;)V

    :goto_9a
    move-object p3, v0

    move-object v0, v7

    .line 2115
    :goto_9c
    invoke-virtual {p3}, Lcom/google/android/apps/plus/api/MediaRef;->hasPhotoId()Z

    move-result v1

    if-nez v1, :cond_10c

    .line 2116
    if-eqz v0, :cond_ab

    .line 2117
    invoke-virtual {v0}, Lcom/android/gallery3d/common/Fingerprint;->toStreamId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->setClientAssignedId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    .line 2126
    :cond_ab
    const/16 v0, 0x280

    :try_start_ad
    invoke-static {p2, v10, v0}, Lcom/google/android/apps/plus/util/ImageUtils;->createBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 2127
    if-nez v8, :cond_f9

    .line 2128
    const-string v0, "HttpTransaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bitmap decoding failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cb
    .catchall {:try_start_ad .. :try_end_cb} :catchall_105

    .line 2135
    :goto_cb
    if-eqz v8, :cond_d0

    .line 2137
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :cond_d0
    :goto_d0
    move-object v8, v9

    .line 2148
    goto/16 :goto_35

    :cond_d3
    move-object v0, p3

    .line 2098
    goto :goto_9a

    :cond_d5
    move-object v0, p3

    .line 2102
    goto :goto_9a

    .line 2105
    :cond_d7
    invoke-virtual {p3}, Lcom/google/android/apps/plus/api/MediaRef;->hasPhotoId()Z

    move-result v0

    if-eqz v0, :cond_df

    move-object v0, v8

    .line 2108
    goto :goto_9c

    .line 2110
    :cond_df
    const-string v0, "HttpTransaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No photo ID or local Uri for attachment; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    .line 2130
    :cond_f9
    :try_start_f9
    invoke-static {v8}, Lcom/google/android/apps/plus/util/ImageUtils;->compressBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 2131
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2132
    invoke-virtual {v9, v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->setThumbnailBytes(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    :try_end_104
    .catchall {:try_start_f9 .. :try_end_104} :catchall_105

    goto :goto_cb

    .line 2135
    :catchall_105
    move-exception v0

    if-eqz v8, :cond_10b

    .line 2137
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 2135
    :cond_10b
    throw v0

    .line 2141
    :cond_10c
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;

    move-result-object v0

    .line 2143
    invoke-virtual {p3}, Lcom/google/android/apps/plus/api/MediaRef;->getOwnerGaiaId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;->setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;

    .line 2144
    invoke-virtual {p3}, Lcom/google/android/apps/plus/api/MediaRef;->getPhotoId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;->setPhotoId(J)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;

    .line 2145
    invoke-virtual {v9, v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->setPicasaPhotoId(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    goto :goto_d0
.end method

.method static createActivityAction(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;
    .registers 4
    .parameter "type"
    .parameter "activityId"

    .prologue
    .line 1975
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    move-result-object v0

    .line 1976
    .local v0, request:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    .line 1977
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    .line 1978
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
    .line 2246
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

    .line 2247
    .local v0, geocode:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getGranularity()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    move-result-object v2

    sget-object v3, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;->LOCALITY:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    if-ne v2, v3, :cond_4

    .line 2252
    .end local v0           #geocode:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private static getFingerprint(Landroid/content/Context;J)Lcom/android/gallery3d/common/Fingerprint;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2186
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 2187
    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_PHOTO_ID_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    .line 2190
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "fingerprint"

    aput-object v0, v2, v4

    .line 2192
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2194
    if-eqz v1, :cond_3d

    .line 2196
    :try_start_23
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 2197
    new-instance v3, Lcom/android/gallery3d/common/Fingerprint;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/android/gallery3d/common/Fingerprint;-><init>([B)V
    :try_end_3a
    .catchall {:try_start_23 .. :try_end_3a} :catchall_3e

    .line 2200
    :cond_3a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2203
    :cond_3d
    return-object v3

    .line 2200
    :catchall_3e
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getFingerprint(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/gallery3d/common/Fingerprint;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2159
    invoke-static {p0}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaFacade;->getFingerprintUri()Landroid/net/Uri;

    move-result-object v0

    .line 2160
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "force_recalculate"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 2162
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    .line 2163
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2165
    if-eqz v1, :cond_49

    .line 2167
    :try_start_2f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_46

    .line 2168
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 2169
    new-instance v3, Lcom/android/gallery3d/common/Fingerprint;

    invoke-direct {v3, v0}, Lcom/android/gallery3d/common/Fingerprint;-><init>([B)V
    :try_end_46
    .catchall {:try_start_2f .. :try_end_46} :catchall_4a

    .line 2172
    :cond_46
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2175
    :cond_49
    return-object v3

    .line 2172
    :catchall_4a
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getPhotoIdFromStream(Landroid/content/Context;Ljava/lang/String;)J
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 2215
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 2216
    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_STREAM_ID_AND_OWNER_ID_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 2217
    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2219
    invoke-static {v1, v0}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    .line 2220
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "photo_id"

    aput-object v0, v2, v6

    .line 2222
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2224
    if-eqz v2, :cond_51

    .line 2226
    :try_start_33
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 2227
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 2228
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_44
    .catchall {:try_start_33 .. :try_end_44} :catchall_49

    move-result-wide v0

    .line 2232
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2235
    :goto_48
    return-wide v0

    .line 2232
    :catchall_49
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2235
    :cond_51
    const-wide/16 v0, 0x0

    goto :goto_48
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
    .line 2263
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

    .line 2264
    .local v0, geocode:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getGranularity()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    move-result-object v2

    sget-object v3, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;->FINEST:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    if-ne v2, v3, :cond_4

    .line 2269
    .end local v0           #geocode:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 1450
    const-string v0, "HttpTransaction"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1451
    const-string v0, "HttpTransaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  -- ActivityAction type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->getType()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    :cond_25
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->getActivityId()Ljava/lang/String;

    move-result-object v0

    .line 1455
    sget-object v1, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$ActivityActionRequest$Type:[I

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->getType()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_b2

    .line 1516
    const-string v0, "HttpTransaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown post type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->getType()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    :goto_54
    return-void

    .line 1457
    :pswitch_55
    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/plus/content/EsPostsData;->deleteActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    goto :goto_54

    .line 1462
    :pswitch_5d
    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/plus/content/EsPostsData;->deleteActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    goto :goto_54

    .line 1467
    :pswitch_65
    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/plus/content/EsPostsData;->muteActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    goto :goto_54

    .line 1472
    :pswitch_6d
    iget v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mMode:I

    packed-switch v1, :pswitch_data_c0

    :pswitch_72
    goto :goto_54

    .line 1474
    :pswitch_73
    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->getDeleteCommentIdList()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/google/android/apps/plus/content/EsPostsData;->deleteComments(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_54

    .line 1480
    :pswitch_7f
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1481
    iget-object v2, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->getDeleteCommentIdList()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v3, v0, v1, v4}, Lcom/google/android/apps/plus/content/EsPhotosData;->deletePhotoComments(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/util/List;)V

    goto :goto_54

    .line 1494
    :pswitch_8f
    iget v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mMode:I

    packed-switch v1, :pswitch_data_ca

    :pswitch_94
    goto :goto_54

    .line 1496
    :pswitch_95
    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->getDeleteCommentIdList()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/google/android/apps/plus/content/EsPostsData;->deleteComments(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_54

    .line 1502
    :pswitch_a1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1503
    iget-object v2, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->getDeleteCommentIdList()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v3, v0, v1, v4}, Lcom/google/android/apps/plus/content/EsPhotosData;->deletePhotoComments(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/util/List;)V

    goto :goto_54

    .line 1455
    nop

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_55
        :pswitch_5d
        :pswitch_65
        :pswitch_6d
        :pswitch_8f
    .end packed-switch

    .line 1472
    :pswitch_data_c0
    .packed-switch 0x4
        :pswitch_73
        :pswitch_72
        :pswitch_7f
    .end packed-switch

    .line 1494
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
    .line 1301
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->getParams()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->buildActivitiesStreamKey(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Ljava/lang/String;

    move-result-object v2

    .line 1303
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

    .line 1306
    return-void
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;)V
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1341
    iget v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mMode:I

    packed-switch v0, :pswitch_data_8e

    .line 1382
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->getActivityList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mPersonMap:Ljava/util/Map;

    invoke-static {v0, v1, v4, v2, v3}, Lcom/google/android/apps/plus/content/EsPostsData;->insertActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    .line 1387
    :goto_14
    return-void

    .line 1343
    :pswitch_15
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->getActivityCount()I

    move-result v0

    if-nez v0, :cond_23

    .line 1344
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Activity not created"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1348
    :cond_23
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->CIRCLES:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    invoke-static {v4, v4, v4, v0}, Lcom/google/android/apps/plus/content/EsPostsData;->buildActivitiesStreamKey(Ljava/lang/Long;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Location;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;)Ljava/lang/String;

    move-result-object v0

    .line 1350
    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->getActivityList()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mPersonMap:Ljava/util/Map;

    invoke-static {v1, v2, v0, v3, v4}, Lcom/google/android/apps/plus/content/EsPostsData;->insertActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    goto :goto_14

    .line 1356
    :pswitch_37
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->getActivityCount()I

    move-result v0

    if-lez v0, :cond_4b

    .line 1358
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->getActivityList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mPersonMap:Ljava/util/Map;

    invoke-static {v0, v1, v4, v2, v3}, Lcom/google/android/apps/plus/content/EsPostsData;->insertActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    goto :goto_14

    .line 1361
    :cond_4b
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Activity not found while creating comment"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1368
    :pswitch_53
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->getActivityCount()I

    move-result v0

    if-nez v0, :cond_76

    .line 1369
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->getActivityId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1372
    :cond_76
    invoke-virtual {p2, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->getActivity(I)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getActivityId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mActivityId:Ljava/lang/String;

    .line 1375
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->getActivityList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mPersonMap:Ljava/util/Map;

    invoke-static {v0, v1, v4, v2, v3}, Lcom/google/android/apps/plus/content/EsPostsData;->insertActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    goto :goto_14

    .line 1341
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
    .line 1762
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->getAlbumList()Ljava/util/List;

    move-result-object v4

    .line 1763
    .local v4, albums:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;>;"
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->getSharedAlbumsOnly()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1764
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->getOwnerGaiaId()J

    move-result-wide v2

    .line 1765
    .local v2, ownerId:J
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v5, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mSyncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertProfileAlbumList(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/util/List;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 1772
    :goto_17
    return-void

    .line 1769
    .end local v2           #ownerId:J
    :cond_18
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v2

    .line 1770
    .restart local v2       #ownerId:J
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v5, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mSyncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertAlbumList(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/util/List;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    goto :goto_17
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;)V
    .registers 16
    .parameter "request"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1782
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->getOwnerGaiaId()J

    move-result-wide v2

    .line 1783
    .local v2, ownerId:J
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->hasAlbumInfo()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1784
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->getAlbumInfo()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v4

    .line 1785
    .local v4, album:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v5, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mSyncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertAlbum(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 1788
    .end local v4           #album:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    :cond_17
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->getId()J

    move-result-wide v7

    .line 1789
    .local v7, albumId:J
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->getPhotoList()Ljava/util/List;

    move-result-object v11

    .line 1790
    .local v11, photos:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;>;"
    iget-object v5, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v12, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mSyncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    move-wide v9, v2

    invoke-static/range {v5 .. v12}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertAlbumPhotos(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJLjava/util/List;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 1791
    return-void
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;)V
    .registers 7
    .parameter "request"
    .parameter "response"

    .prologue
    .line 1398
    new-instance v0, Lcom/google/android/apps/plus/api/AudienceData;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->getHiddenAudienceCountText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/plus/api/AudienceData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAudienceData:Lcom/google/android/apps/plus/api/AudienceData;

    .line 1400
    return-void
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;)V
    .registers 9
    .parameter "request"
    .parameter "response"

    .prologue
    .line 1555
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;->getPersonList()Ljava/util/List;

    move-result-object v2

    .line 1556
    .local v2, personList:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    iget-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mPersonMap:Ljava/util/Map;

    if-nez v3, :cond_f

    .line 1557
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mPersonMap:Ljava/util/Map;

    .line 1560
    :cond_f
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 1561
    .local v1, person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    iget-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mPersonMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getGaiaId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 1564
    .end local v1           #person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    :cond_2d
    iget-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v3, v4, v2}, Lcom/google/android/apps/plus/content/EsPeopleData;->insertPersons(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;)V

    .line 1565
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
    .line 1833
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->hasFocusGroupId()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1834
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

    .line 1841
    .local v2, circleId:Ljava/lang/String;
    :goto_1d
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->getPhotoList()Ljava/util/List;

    move-result-object v3

    .line 1842
    .local v3, photos:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;>;"
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->hasOffset()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->getOffset()I

    move-result v4

    .line 1843
    .local v4, offset:I
    :goto_2b
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v5, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mSyncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertCirclePhotos(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/util/List;ILcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 1844
    return-void

    .line 1835
    .end local v2           #circleId:Ljava/lang/String;
    .end local v3           #photos:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;>;"
    .end local v4           #offset:I
    :cond_35
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->hasGaiaGroupId()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1836
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

    .line 1838
    .end local v2           #circleId:Ljava/lang/String;
    :cond_53
    const/4 v2, 0x0

    .restart local v2       #circleId:Ljava/lang/String;
    goto :goto_1d

    .line 1842
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
    .line 1918
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->hasPhoto()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1919
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->getPhoto()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    .line 1920
    .local v0, photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertSinglePhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 1922
    .end local v0           #photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    :cond_12
    return-void
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;)V
    .registers 16
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1530
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;->getPhotoList()Ljava/util/List;

    move-result-object v9

    .line 1532
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_30

    .line 1533
    const-string v0, "HttpTransaction"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1534
    const-string v0, "HttpTransaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No photos for activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->getActivityId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    :cond_2f
    :goto_2f
    return-void

    .line 1540
    :cond_30
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;->getAlbumInfo()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v4

    .line 1541
    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getOwnerGaiaId()J

    move-result-wide v2

    .line 1543
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v5, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mSyncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertActivityAlbum(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 1544
    iget-object v4, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->getActivityId()Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mSyncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    move-wide v7, v2

    invoke-static/range {v4 .. v12}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertStreamPhotos(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;JLjava/util/List;IZLcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    goto :goto_2f
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;)V
    .registers 10
    .parameter "request"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1817
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getUserGaiaId()J

    move-result-wide v2

    .line 1818
    .local v2, userId:J
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->getApprovedPhotoList()Ljava/util/List;

    move-result-object v4

    .line 1819
    .local v4, approvedPhotos:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;>;"
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->getUnapprovedPhotoList()Ljava/util/List;

    move-result-object v5

    .line 1820
    .local v5, unapprovedPhotos:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v6, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mSyncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertPhotosOfUser(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/util/List;Ljava/util/List;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 1822
    return-void
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;)V
    .registers 9
    .parameter "request"
    .parameter "response"

    .prologue
    .line 1575
    iput-object p2, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mGetPlusOnePeopleResponse:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;

    .line 1577
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->getPersonList()Ljava/util/List;

    move-result-object v2

    .line 1578
    .local v2, personList:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    iget-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mPersonMap:Ljava/util/Map;

    if-nez v3, :cond_11

    .line 1579
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mPersonMap:Ljava/util/Map;

    .line 1582
    :cond_11
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 1583
    .local v1, person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    iget-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mPersonMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getGaiaId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 1586
    .end local v1           #person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    :cond_2f
    iget-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v3, v4, v2}, Lcom/google/android/apps/plus/content/EsPeopleData;->insertPersons(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;)V

    .line 1587
    return-void
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;)V
    .registers 8
    .parameter "request"
    .parameter "response"

    .prologue
    .line 1729
    if-nez p1, :cond_3

    .line 1742
    :cond_2
    :goto_2
    return-void

    .line 1732
    :cond_3
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->AD:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->getType()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1733
    iput-object p2, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mGetPlusOneResponse:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;

    .line 1734
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mGetPlusOneResponse:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mGetPlusOneResponse:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->hasPlusoneData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1735
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mGetPlusOneResponse:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsAdPlusOnesData;->insertAdPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)V

    goto :goto_2

    .line 1738
    :cond_2f
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->ENTITY:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->getType()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1739
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/content/EsPeopleData;->insertPlusOneData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/tacotruck/proto/Data$PlusOneData;)V

    goto :goto_2
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;)V
    .registers 12
    .parameter "request"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1801
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getStreamId()Ljava/lang/String;

    move-result-object v2

    .line 1802
    .local v2, streamId:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getOwnerGaiaId()J

    move-result-wide v3

    .line 1803
    .local v3, ownerId:J
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->getPhotoList()Ljava/util/List;

    move-result-object v5

    .line 1804
    .local v5, photos:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;>;"
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getOffset()I

    move-result v6

    .line 1805
    .local v6, offset:I
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mSyncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-static/range {v0 .. v8}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertStreamPhotos(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;JLjava/util/List;IZLcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 1807
    return-void
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;)V
    .registers 10
    .parameter "request"
    .parameter "response"

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->getShapeId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->getPhotoId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->getApprove()Z

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/content/EsPhotosData;->updatePhotoShapeApproval(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJZ)V

    .line 1855
    return-void
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;)V
    .registers 4
    .parameter "request"
    .parameter "response"

    .prologue
    .line 1663
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->getNotificationSettings()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mNotificationSettingsResponse:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    .line 1664
    return-void
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;)V
    .registers 10
    .parameter "request"
    .parameter "response"

    .prologue
    .line 1875
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getType()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    move-result-object v6

    .line 1876
    .local v6, requestType:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$PhotoActionRequest$Type:[I

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2c

    .line 1892
    :goto_f
    return-void

    .line 1878
    :pswitch_10
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getOwnerGaiaId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getPhotoId()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsPhotosData;->deletePhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJ)V

    goto :goto_f

    .line 1884
    :pswitch_20
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getOwnerGaiaId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getPhotoId()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsPhotosData;->setPhotoAbuseReported(JJ)V

    goto :goto_f

    .line 1876
    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_10
        :pswitch_20
    .end packed-switch
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;)V
    .registers 7
    .parameter "request"
    .parameter "response"

    .prologue
    .line 1864
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->getSectionList()Ljava/util/List;

    move-result-object v0

    .line 1865
    .local v0, sections:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;>;"
    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mSyncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-static {v1, v2, v0, v3}, Lcom/google/android/apps/plus/content/EsPhotosData;->updatePhotosHome(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 1866
    return-void
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;)V
    .registers 13
    .parameter "request"
    .parameter "response"

    .prologue
    const/4 v3, 0x0

    .line 1704
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->getPlaceCount()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1705
    .local v5, places:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Location;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_b
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->getPlaceCount()I

    move-result v0

    if-ge v6, v0, :cond_39

    .line 1706
    invoke-virtual {p2, v6}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->getPlace(I)Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v8

    .line 1707
    .local v8, place:Lcom/google/wireless/tacotruck/proto/Data$Location;
    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1708
    .local v7, originalName:Ljava/lang/String;
    invoke-static {v7}, Lcom/google/android/apps/plus/util/StringUtils;->replaceHtmlEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1709
    .local v9, strippedName:Ljava/lang/String;
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 1710
    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Data$Location;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1705
    :goto_32
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 1712
    :cond_35
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 1716
    .end local v7           #originalName:Ljava/lang/String;
    .end local v8           #place:Lcom/google/wireless/tacotruck/proto/Data$Location;
    .end local v9           #strippedName:Ljava/lang/String;
    :cond_39
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mLocationQueries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/api/LocationQuery;

    .line 1717
    .local v2, query:Lcom/google/android/apps/plus/api/LocationQuery;
    if-eqz v2, :cond_4b

    .line 1718
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsPostsData;->insertLocations(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/LocationQuery;Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;Ljava/util/List;)V

    .line 1720
    :cond_4b
    return-void
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Lcom/google/wireless/tacotruck/proto/Network$PostResponse;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x3

    .line 1409
    const-string v0, "HttpTransaction"

    invoke-static {v0, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1410
    const-string v0, "HttpTransaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  -- PostRequest type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getPostType()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    :cond_25
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$PostRequest$Type:[I

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->getPostType()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_c4

    .line 1441
    :cond_34
    return-void

    .line 1415
    :pswitch_35
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1416
    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaFacade;->getUploadsUri()Landroid/net/Uri;

    move-result-object v1

    .line 1417
    iget-object v2, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1418
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1419
    const-string v4, "account"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/plus/phone/InstantUpload;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_70

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->hasAlbumId()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 1423
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->getAlbumId()J

    move-result-wide v4

    .line 1424
    const-string v0, "album_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1427
    :cond_70
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAttachments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_76
    :goto_76
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/api/MediaRef;

    .line 1428
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/MediaRef;->hasPhotoId()Z

    move-result v5

    if-nez v5, :cond_76

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/MediaRef;->hasLocalUri()Z

    move-result v5

    if-eqz v5, :cond_76

    .line 1429
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/MediaRef;->getLocalUri()Landroid/net/Uri;

    move-result-object v0

    .line 1431
    const-string v5, "HttpTransaction"

    invoke-static {v5, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_b6

    .line 1432
    const-string v5, "HttpTransaction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  -- on-demand upload; img: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    :cond_b6
    const-string v5, "content_uri"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_76

    .line 1413
    nop

    :pswitch_data_c4
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

    .line 1942
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->getSearchQuery()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    move-result-object v10

    .line 1943
    .local v10, searchQuery:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;
    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->getFilterList()Ljava/util/List;

    move-result-object v9

    .line 1944
    .local v9, filters:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;>;"
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;->TACOS:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1946
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->getActivityResults()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    move-result-object v8

    .line 1947
    .local v8, activityResults:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;
    if-eqz v8, :cond_4a

    .line 1948
    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->getQueryText()Ljava/lang/String;

    move-result-object v11

    .line 1949
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

    .line 1955
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->getShownActivitiesBlob()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v11, v2}, Lcom/google/android/apps/plus/util/SearchUtils;->insertSearchResults(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)V

    .line 1963
    .end local v8           #activityResults:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;
    .end local v11           #searchQueryText:Ljava/lang/String;
    :cond_49
    :goto_49
    return-void

    .line 1958
    .restart local v8       #activityResults:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;
    :cond_4a
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, v2, v2}, Lcom/google/android/apps/plus/util/SearchUtils;->insertSearchResults(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    .line 1960
    .end local v8           #activityResults:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;
    :cond_52
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;->PEOPLE:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1961
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
    .line 1752
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/content/EsAccountsData;->setNotificationPushEnabled(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V

    .line 1753
    return-void
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;)V
    .registers 7
    .parameter "request"
    .parameter "response"

    .prologue
    .line 1903
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->getPhoto()Ljava/lang/String;

    move-result-object v0

    .line 1904
    .local v0, photo:Ljava/lang/String;
    if-eqz v0, :cond_11

    .line 1905
    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeImageBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/content/EsAvatarData;->insertProfilePhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[B)V

    .line 1908
    :cond_11
    return-void
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;)V
    .registers 16
    .parameter "request"
    .parameter "response"

    .prologue
    const/4 v5, 0x1

    const/4 v12, 0x0

    .line 1598
    iget-boolean v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mSetupAccount:Z

    if-eqz v0, :cond_83

    .line 1599
    sget-boolean v0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->$assertionsDisabled:Z

    if-nez v0, :cond_16

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->hasMe()Z

    move-result v0

    if-nez v0, :cond_16

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1601
    :cond_16
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1602
    .local v10, persons:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->getMe()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v8

    .line 1603
    .local v8, me:Lcom/google/wireless/tacotruck/proto/Data$Person;
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1604
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->hasIsChild()Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->getIsChild()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 1605
    .local v5, isChild:Z
    :goto_2e
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getGaiaId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsAccountsData;->insertAccount(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Z)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v6

    .line 1607
    .local v6, account:Lcom/google/android/apps/plus/content/EsAccount;
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/google/android/apps/plus/content/EsAccountsData;->activateAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 1608
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    invoke-static {v0, v6, v10}, Lcom/google/android/apps/plus/content/EsPeopleData;->insertPersons(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;)V

    .line 1612
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/content/EsAccount;->getPersonId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v6, v1, v12}, Lcom/google/android/apps/plus/content/EsPeopleData;->getProfileAndContactData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;

    .line 1623
    .end local v8           #me:Lcom/google/wireless/tacotruck/proto/Data$Person;
    .end local v10           #persons:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    :goto_55
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->hasUserPreferences()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 1624
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->getUserPreferences()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    move-result-object v11

    .line 1632
    .local v11, userPreferences:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;
    invoke-virtual {v11}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->hasDefaultPostAudience()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 1633
    invoke-virtual {v11}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->getDefaultPostAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v7

    .line 1634
    .local v7, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-static {v7}, Lcom/google/android/apps/plus/api/ApiUtils;->setCircleIdNamespaces(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v7

    .line 1635
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->toByteArray()[B

    move-result-object v1

    invoke-static {v0, v6, v1}, Lcom/google/android/apps/plus/content/EsAccountsData;->saveAudience(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[B)V

    .line 1641
    .end local v7           #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    :cond_76
    sget-object v0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/plus/api/TacoTruckOperation$1;

    invoke-direct {v1, p0, v11}, Lcom/google/android/apps/plus/api/TacoTruckOperation$1;-><init>(Lcom/google/android/apps/plus/api/TacoTruckOperation;Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1659
    .end local v11           #userPreferences:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;
    :cond_80
    return-void

    .end local v5           #isChild:Z
    .end local v6           #account:Lcom/google/android/apps/plus/content/EsAccount;
    .restart local v8       #me:Lcom/google/wireless/tacotruck/proto/Data$Person;
    .restart local v10       #persons:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    :cond_81
    move v5, v12

    .line 1604
    goto :goto_2e

    .line 1614
    .end local v8           #me:Lcom/google/wireless/tacotruck/proto/Data$Person;
    .end local v10           #persons:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    :cond_83
    iget-object v6, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 1615
    .restart local v6       #account:Lcom/google/android/apps/plus/content/EsAccount;
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    .line 1616
    .local v9, name:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->hasMe()Z

    move-result v0

    if-eqz v0, :cond_99

    .line 1617
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->getMe()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1619
    :cond_99
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->hasIsChild()Z

    move-result v0

    if-eqz v0, :cond_ad

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->getIsChild()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 1620
    .restart local v5       #isChild:Z
    :goto_a5
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, v9, v5}, Lcom/google/android/apps/plus/content/EsAccountsData;->updateAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)V

    goto :goto_55

    .end local v5           #isChild:Z
    :cond_ad
    move v5, v12

    .line 1619
    goto :goto_a5
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;)V
    .registers 14
    .parameter "request"
    .parameter "response"

    .prologue
    .line 1674
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->getReverseGeocodeList()Ljava/util/List;

    move-result-object v6

    .line 1675
    .local v6, geocodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;>;"
    invoke-static {v6}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getStreetLevelLocation(Ljava/util/List;)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v3

    .line 1676
    .local v3, street:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;
    invoke-static {v6}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getCityLevelLocation(Ljava/util/List;)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v4

    .line 1679
    .local v4, city:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->getPlaceCount()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1680
    .local v5, places:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Location;>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_16
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->getPlaceCount()I

    move-result v0

    if-ge v7, v0, :cond_44

    .line 1681
    invoke-virtual {p2, v7}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->getPlace(I)Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v9

    .line 1682
    .local v9, place:Lcom/google/wireless/tacotruck/proto/Data$Location;
    invoke-virtual {v9}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1683
    .local v8, originalName:Ljava/lang/String;
    invoke-static {v8}, Lcom/google/android/apps/plus/util/StringUtils;->replaceHtmlEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1684
    .local v10, strippedName:Ljava/lang/String;
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 1685
    invoke-virtual {v9}, Lcom/google/wireless/tacotruck/proto/Data$Location;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1680
    :goto_3d
    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    .line 1687
    :cond_40
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 1691
    .end local v8           #originalName:Ljava/lang/String;
    .end local v9           #place:Lcom/google/wireless/tacotruck/proto/Data$Location;
    .end local v10           #strippedName:Ljava/lang/String;
    :cond_44
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mLocationQueries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/api/LocationQuery;

    .line 1692
    .local v2, query:Lcom/google/android/apps/plus/api/LocationQuery;
    if-eqz v2, :cond_55

    .line 1693
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsPostsData;->insertLocations(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/LocationQuery;Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;Ljava/util/List;)V

    .line 1695
    :cond_55
    return-void
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;)V
    .registers 3
    .parameter "request"
    .parameter "response"

    .prologue
    .line 1931
    iput-object p2, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mUploadPhotoResponse:Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

    .line 1932
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
    .line 489
    .local p1, mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    move-result-object v0

    .line 490
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->CREATE_COMMENT:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setPostType(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 491
    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setContent(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 492
    if-eqz p1, :cond_11

    .line 493
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->addAllMention(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 495
    :cond_11
    return-object v0
.end method

.method private static newNotificationSettingsRequestBuilder()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;
    .registers 2

    .prologue
    .line 919
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;

    move-result-object v0

    .line 920
    .local v0, request:Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->ANDROID_PUSH:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->setChannel(Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;)Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;

    .line 921
    return-object v0
.end method

.method private sendFingerprintMismatch(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 1985
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/android/apps/plus/api/TacoTruckOperation$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/apps/plus/api/TacoTruckOperation$2;-><init>(Lcom/google/android/apps/plus/api/TacoTruckOperation;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1995
    return-void
.end method


# virtual methods
.method public changeNotificationSettings(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)V
    .registers 5
    .parameter "settings"

    .prologue
    .line 938
    invoke-static {}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->newNotificationSettingsRequestBuilder()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;

    move-result-object v0

    .line 939
    .local v0, request:Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->setNotificationSettings(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;

    .line 940
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->NOTIFICATION_SETTINGS:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 941
    return-void
.end method

.method public createActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/util/List;)V
    .registers 19
    .parameter "context"
    .parameter "activityId"
    .parameter "content"
    .parameter
    .parameter "audience"
    .parameter "aclDisplay"
    .parameter "location"
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
            ">;",
            "Lcom/google/wireless/tacotruck/proto/Data$Audience;",
            "Ljava/lang/String;",
            "Lcom/google/wireless/tacotruck/proto/Data$Location;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 377
    .local p4, mentions:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    .local p8, attachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/api/MediaRef;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mProcessMasterResponseFirst:Z

    .line 379
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->CREATE_ACTIVITY:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->buildActivityRequest(Landroid/content/Context;Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/wireless/tacotruck/proto/Data$Audience;Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/util/List;)Lcom/google/android/apps/plus/api/EsRequest;

    move-result-object v9

    .line 381
    .local v9, request:Lcom/google/android/apps/plus/api/EsRequest;
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->POST:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v9}, Lcom/google/android/apps/plus/api/EsRequest;->getMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 383
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mMode:I

    .line 384
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
    .line 473
    .local p4, mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    invoke-static {p3, p4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->newCommentPostRequestBuilder(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    move-result-object v0

    .line 474
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 475
    invoke-virtual {v0, p2}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setCommentId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 476
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addCommentPostRequest(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)V

    .line 477
    return-void
.end method

.method public createApproveNameTag(JJJZ)V
    .registers 11
    .parameter "userId"
    .parameter "photoId"
    .parameter "shapeId"
    .parameter "approve"

    .prologue
    .line 822
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

    move-result-object v0

    .line 823
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;
    invoke-virtual {v0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

    .line 824
    invoke-virtual {v0, p3, p4}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->setPhotoId(J)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

    .line 825
    invoke-virtual {v0, p5, p6}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->setShapeId(J)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

    .line 826
    invoke-virtual {v0, p7}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->setApprove(Z)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

    .line 827
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->NAME_TAG_APPROVAL:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 828
    return-void
.end method

.method public createPhotoAction(JJLcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;)V
    .registers 9
    .parameter "ownerId"
    .parameter "photoId"
    .parameter "type"

    .prologue
    .line 861
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    move-result-object v0

    .line 862
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    invoke-virtual {v0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    .line 863
    invoke-virtual {v0, p3, p4}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->setPhotoId(J)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    .line 864
    invoke-virtual {v0, p5}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    .line 865
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->PHOTO_ACTION:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 866
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
    .line 839
    .local p3, mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    invoke-static {p2, p3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->newCommentPostRequestBuilder(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    move-result-object v0

    .line 840
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setTargetPhotoId(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 841
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addCommentPostRequest(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;)V

    .line 842
    return-void
.end method

.method public createPostPlusOne(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    .registers 7
    .parameter "type"
    .parameter "activityId"
    .parameter "audience"

    .prologue
    .line 604
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    move-result-object v0

    .line 605
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    .line 606
    invoke-virtual {v0, p2}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    .line 607
    if-eqz p3, :cond_13

    .line 608
    invoke-static {p3}, Lcom/google/android/apps/plus/api/ApiUtils;->removeCircleIdNamespaces(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    .line 610
    :cond_13
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->CREATE_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 611
    return-void
.end method

.method public deleteActivity(Ljava/lang/String;)V
    .registers 4
    .parameter "activityId"

    .prologue
    .line 432
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mProcessMasterResponseFirst:Z

    .line 434
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->DELETE:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    invoke-static {v1, p1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->createActivityAction(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;

    move-result-object v0

    .line 436
    .local v0, request:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ACTIVITY_ACTION:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 437
    return-void
.end method

.method public deleteAdPlusOne(Ljava/lang/String;)V
    .registers 5
    .parameter "plusOneId"

    .prologue
    .line 976
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    move-result-object v0

    .line 977
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->AD:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    .line 978
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->setPlusoneId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    .line 980
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->DELETE_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 981
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
    .line 549
    .local p2, commentIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mProcessMasterResponseFirst:Z

    .line 551
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    move-result-object v0

    .line 552
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->DELETE_COMMENT:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    .line 553
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    .line 554
    invoke-virtual {v0, p2}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->addAllDeleteCommentId(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    .line 555
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ACTIVITY_ACTION:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 557
    if-eqz p3, :cond_21

    .line 558
    const/4 v1, 0x4

    iput v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mMode:I

    .line 562
    :goto_20
    return-void

    .line 560
    :cond_21
    const/4 v1, 0x6

    iput v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mMode:I

    goto :goto_20
.end method

.method public deletePostPlusOne(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "plusOneId"
    .parameter "activityId"

    .prologue
    .line 620
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    move-result-object v0

    .line 621
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->setPlusoneId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    .line 622
    invoke-virtual {v0, p2}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    .line 623
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->DELETE_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 624
    return-void
.end method

.method public editActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/util/List;)V
    .registers 17
    .parameter "context"
    .parameter "activityId"
    .parameter "content"
    .parameter
    .parameter "audience"
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
            ">;",
            "Lcom/google/wireless/tacotruck/proto/Data$Audience;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 398
    .local p4, mentions:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    .local p6, attachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/api/MediaRef;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mProcessMasterResponseFirst:Z

    .line 400
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->EDIT_ACTIVITY:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->buildActivityRequest(Landroid/content/Context;Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/wireless/tacotruck/proto/Data$Audience;Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/util/List;)Lcom/google/android/apps/plus/api/EsRequest;

    move-result-object v9

    .line 402
    .local v9, request:Lcom/google/android/apps/plus/api/EsRequest;
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->POST:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v9}, Lcom/google/android/apps/plus/api/EsRequest;->getMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 403
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
    .line 528
    .local p4, mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mProcessMasterResponseFirst:Z

    .line 530
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    move-result-object v0

    .line 531
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->EDIT_COMMENT:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setPostType(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 532
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 533
    invoke-virtual {v0, p2}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setCommentId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 534
    invoke-virtual {v0, p3}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->setContent(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 535
    if-eqz p4, :cond_1a

    .line 536
    invoke-virtual {v0, p4}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->addAllMention(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;

    .line 538
    :cond_1a
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->POST:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 539
    return-void
.end method

.method public enablePush()V
    .registers 4

    .prologue
    .line 1030
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;

    move-result-object v0

    .line 1032
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->ANDROID_PUSH:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->setChannelToEnable(Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;)Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;

    .line 1034
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->SET_DEFAULT_NOTIFICATION_SETTINGS:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 1035
    return-void
.end method

.method public getActivity(Ljava/lang/String;)V
    .registers 5
    .parameter "activityId"

    .prologue
    .line 324
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    move-result-object v0

    .line 325
    .local v0, request:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->addActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    .line 327
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_ACTIVITY:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 329
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mMode:I

    .line 330
    return-void
.end method

.method public getActivityAudience(Ljava/lang/String;)V
    .registers 5
    .parameter "activityId"

    .prologue
    .line 354
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mProcessMasterResponseFirst:Z

    .line 356
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;

    move-result-object v0

    .line 357
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;

    .line 359
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_AUDIENCE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 360
    return-void
.end method

.method public getActivityByDesktopId(Ljava/lang/String;)V
    .registers 5
    .parameter "desktopActivityId"

    .prologue
    .line 339
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    move-result-object v0

    .line 340
    .local v0, request:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;->DESKTOP:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->setIdType(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    .line 341
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->addActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    .line 343
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_ACTIVITY:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 345
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mMode:I

    .line 346
    return-void
.end method

.method public getActivityId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2319
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mActivityId:Ljava/lang/String;

    return-object v0
.end method

.method public getActivityPhotos(Ljava/lang/String;)V
    .registers 6
    .parameter "activityId"

    .prologue
    const/4 v3, 0x1

    .line 643
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v1

    .line 644
    .local v1, photoOptions:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnComments(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 645
    invoke-virtual {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnImageUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 646
    invoke-virtual {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnPlusOnes(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 647
    invoke-virtual {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnShapes(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 648
    invoke-virtual {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnVideoUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 650
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

    move-result-object v0

    .line 653
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

    .line 654
    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

    .line 655
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_PHOTOS_BY_ACTIVITY_ID:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 656
    return-void
.end method

.method public getActivityStream(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;I)V
    .registers 12
    .parameter "view"
    .parameter "circleId"
    .parameter "userId"
    .parameter "continuationToken"
    .parameter "maxCount"

    .prologue
    .line 241
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;

    move-result-object v2

    .line 242
    .local v2, request:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    move-result-object v0

    .line 243
    .local v0, parameters:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setCollapsedDataOnly(Z)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 244
    invoke-virtual {v0, p5}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setMaxCount(I)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 245
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setView(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 246
    if-eqz p2, :cond_29

    .line 247
    const-string v3, "f."

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 248
    const-string v3, "f."

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 249
    .local v1, prefixLength:I
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setFocusGroupId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 257
    .end local v1           #prefixLength:I
    :cond_29
    :goto_29
    if-eqz p3, :cond_32

    .line 258
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setUserGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 260
    :cond_32
    if-eqz p4, :cond_37

    .line 261
    invoke-virtual {v0, p4}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setContinuationToken(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 263
    :cond_37
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->setParams(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;

    .line 265
    sget-object v3, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_ACTIVITIES:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 266
    return-void

    .line 250
    :cond_48
    const-string v3, "g."

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 251
    const-string v3, "g."

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 252
    .restart local v1       #prefixLength:I
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setGaiaGroupId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    goto :goto_29

    .line 254
    .end local v1           #prefixLength:I
    :cond_5e
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

    goto :goto_29
.end method

.method public getAdPlusOne(Ljava/lang/String;)V
    .registers 5
    .parameter "shareToken"

    .prologue
    .line 989
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;

    move-result-object v0

    .line 990
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;

    .line 991
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->setReturnGaiaId(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;

    .line 992
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->AD:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;

    .line 994
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 995
    return-void
.end method

.method public getAlbum(JJ)V
    .registers 9
    .parameter "ownerId"
    .parameter "albumId"

    .prologue
    const/4 v3, 0x1

    .line 689
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v1

    .line 690
    .local v1, photoOptions:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnComments(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 691
    invoke-virtual {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnImageUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 692
    invoke-virtual {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnPlusOnes(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 693
    invoke-virtual {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnShapes(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 694
    invoke-virtual {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnVideoUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 696
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    move-result-object v0

    .line 697
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    invoke-virtual {v0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    .line 698
    invoke-virtual {v0, p3, p4}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->setId(J)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    .line 699
    invoke-virtual {v0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->setReturnAlbumInfo(Z)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    .line 700
    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    .line 702
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_ALBUM:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 703
    return-void
.end method

.method public getAlbumList()V
    .registers 5

    .prologue
    .line 662
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    move-result-object v1

    .line 663
    .local v1, builder:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;

    move-result-object v0

    .line 664
    .local v0, albumOptions:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->setMaxPreviewCount(I)Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;

    .line 665
    invoke-virtual {v1, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->setAlbumOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    .line 666
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_ALBUM_LIST:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 667
    return-void
.end method

.method public getAudience()Lcom/google/android/apps/plus/api/AudienceData;
    .registers 2

    .prologue
    .line 2276
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAudienceData:Lcom/google/android/apps/plus/api/AudienceData;

    return-object v0
.end method

.method public getNearbyActivities(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/lang/String;I)V
    .registers 9
    .parameter "view"
    .parameter "location"
    .parameter "continuationToken"
    .parameter "maxCount"

    .prologue
    .line 214
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;

    move-result-object v1

    .line 215
    .local v1, request:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    move-result-object v0

    .line 216
    .local v0, parameters:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setCollapsedDataOnly(Z)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 217
    invoke-virtual {v0, p4}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setMaxCount(I)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 218
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setView(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 219
    invoke-virtual {v0, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setLocation(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 220
    if-eqz p3, :cond_1a

    .line 221
    invoke-virtual {v0, p3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->setContinuationToken(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    .line 223
    :cond_1a
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->setParams(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;

    .line 225
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_ACTIVITIES:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 226
    return-void
.end method

.method public getNearbyLocations(Lcom/google/android/apps/plus/api/LocationQuery;)V
    .registers 7
    .parameter "query"

    .prologue
    .line 949
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mLocationQueries:Ljava/util/Map;

    .line 950
    invoke-virtual {p1}, Lcom/google/android/apps/plus/api/LocationQuery;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 951
    .local v0, location:Landroid/location/Location;
    invoke-virtual {p1}, Lcom/google/android/apps/plus/api/LocationQuery;->hasQueryString()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 952
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

    .line 956
    .local v2, request:Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;

    move-result-object v1

    .line 957
    .local v1, message:Lcom/google/protobuf/MessageLite;
    iget-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mLocationQueries:Ljava/util/Map;

    invoke-interface {v3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    sget-object v3, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->PLACE_SEARCH:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {p0, v3, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 968
    .end local v2           #request:Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;
    :goto_33
    return-void

    .line 960
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

    .line 964
    .local v2, request:Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;

    move-result-object v1

    .line 965
    .restart local v1       #message:Lcom/google/protobuf/MessageLite;
    iget-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mLocationQueries:Ljava/util/Map;

    invoke-interface {v3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    sget-object v3, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->SNAP_TO_PLACE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {p0, v3, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    goto :goto_33
.end method

.method public getNotificationSettings()V
    .registers 4

    .prologue
    .line 928
    invoke-static {}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->newNotificationSettingsRequestBuilder()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;

    move-result-object v0

    .line 929
    .local v0, request:Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->NOTIFICATION_SETTINGS:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 930
    return-void
.end method

.method public getNotificationSettingsResponse()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
    .registers 2

    .prologue
    .line 2291
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mNotificationSettingsResponse:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    return-object v0
.end method

.method public getPeopleSearchResult()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;
    .registers 2

    .prologue
    .line 2312
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mPeopleResult:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    return-object v0
.end method

.method public getPhoto(JJ)V
    .registers 9
    .parameter "ownerId"
    .parameter "photoId"

    .prologue
    const/4 v2, 0x1

    .line 887
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    move-result-object v0

    .line 888
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v1

    .line 890
    .local v1, photoOptions:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    invoke-virtual {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnComments(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 891
    invoke-virtual {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnImageUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 892
    invoke-virtual {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnPlusOnes(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 893
    invoke-virtual {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnShapes(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 894
    invoke-virtual {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnVideoUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 896
    invoke-virtual {v0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    .line 897
    invoke-virtual {v0, p3, p4}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->setPhotoId(J)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    .line 898
    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    .line 900
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_PHOTO:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 901
    return-void
.end method

.method public getPhotoConsumptionStream(Ljava/lang/String;II)V
    .registers 10
    .parameter "circleId"
    .parameter "photoCount"
    .parameter "photoOffset"

    .prologue
    const/4 v4, 0x1

    .line 785
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    move-result-object v0

    .line 787
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v1

    .line 789
    .local v1, photoOptions:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnComments(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 790
    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnImageUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 791
    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnPlusOnes(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 792
    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnShapes(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 793
    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnVideoUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 795
    if-eqz p1, :cond_34

    const-string v3, "0"

    if-eq p1, v3, :cond_34

    .line 796
    const-string v3, "f."

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 797
    const-string v3, "f."

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 798
    .local v2, prefixLength:I
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->setFocusGroupId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    .line 807
    .end local v2           #prefixLength:I
    :cond_34
    :goto_34
    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    .line 808
    invoke-virtual {v0, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->setMaxPhotoCount(I)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    .line 809
    invoke-virtual {v0, p3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->setOffset(I)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    .line 810
    sget-object v3, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_PHOTO_CONSUMPTION_STREAM:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 811
    return-void

    .line 799
    :cond_47
    const-string v3, "g."

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 800
    const-string v3, "g."

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 801
    .restart local v2       #prefixLength:I
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->setGaiaGroupId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    goto :goto_34

    .line 803
    .end local v2           #prefixLength:I
    :cond_5d
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

    goto :goto_34
.end method

.method public getPhotosOfUser(J)V
    .registers 7
    .parameter "userId"

    .prologue
    const/4 v3, 0x1

    .line 762
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    move-result-object v0

    .line 763
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v1

    .line 765
    .local v1, photoOptions:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnComments(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 766
    invoke-virtual {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnImageUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 767
    invoke-virtual {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnPlusOnes(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 768
    invoke-virtual {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnShapes(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 769
    invoke-virtual {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnVideoUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 771
    invoke-virtual {v0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->setUserGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    .line 772
    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    .line 774
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_PHOTOS_OF_USER:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 775
    return-void
.end method

.method public getPlusOnePeople(Ljava/lang/String;)V
    .registers 5
    .parameter "plusOneId"

    .prologue
    .line 632
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;

    move-result-object v0

    .line 633
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->setPlusoneId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;

    .line 634
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_PLUS_ONE_PEOPLE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 635
    return-void
.end method

.method public getPlusOnePeopleResponse()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;
    .registers 2

    .prologue
    .line 2305
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mGetPlusOnePeopleResponse:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;

    return-object v0
.end method

.method public getPlusOneResponse()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;
    .registers 2

    .prologue
    .line 2298
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mGetPlusOneResponse:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;

    return-object v0
.end method

.method public getProfileAlbumList(JZ)V
    .registers 7
    .parameter "ownerGaiaId"
    .parameter "onlySharedAlbums"

    .prologue
    .line 676
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    move-result-object v0

    .line 677
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    invoke-virtual {v0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    .line 678
    invoke-virtual {v0, p3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->setSharedAlbumsOnly(Z)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    .line 679
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_ALBUM_LIST:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 680
    return-void
.end method

.method public getProfilePlusOneData(J)V
    .registers 6
    .parameter "gaiaId"

    .prologue
    .line 1043
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;

    move-result-object v0

    .line 1044
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->ENTITY:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;

    .line 1045
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;

    .line 1046
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 1047
    return-void
.end method

.method public getSettings()V
    .registers 3

    .prologue
    .line 907
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->SETTINGS:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 908
    return-void
.end method

.method public getStreamPhotos(JLjava/lang/String;II)V
    .registers 10
    .parameter "ownerId"
    .parameter "streamId"
    .parameter "offset"
    .parameter "pageSize"

    .prologue
    const/4 v3, 0x1

    .line 734
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    move-result-object v0

    .line 735
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v1

    .line 738
    .local v1, photoOptions:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnComments(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 739
    invoke-virtual {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnImageUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 740
    invoke-virtual {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnPlusOnes(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 741
    invoke-virtual {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->setReturnVideoUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 743
    invoke-virtual {v0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    .line 744
    invoke-virtual {v0, p3}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->setStreamId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    .line 747
    invoke-virtual {v0, p4}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->setOffset(I)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    .line 748
    invoke-virtual {v0, p5}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->setMaxPhotoCount(I)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    .line 750
    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    .line 752
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;->UPLOAD_TIME:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->setSortBy(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    .line 753
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_STREAM_PHOTOS:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 754
    return-void
.end method

.method public getUploadPhotoResponse()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;
    .registers 2

    .prologue
    .line 2283
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mUploadPhotoResponse:Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

    return-object v0
.end method

.method protected handleOneResponse(Lcom/google/wireless/tacotruck/proto/Network$Response;Lcom/google/protobuf/MessageLite;)V
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1134
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getResponseBody()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1135
    const-string v1, "HttpTransaction"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1136
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

    .line 1140
    :cond_3b
    sget-object v1, Lcom/google/android/apps/plus/api/TacoTruckOperation$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getRequestType()Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_17e

    .line 1288
    const-string v0, "HttpTransaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled response type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getRequestType()Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    :goto_6a
    :pswitch_6a
    return-void

    .line 1142
    :pswitch_6b
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesRequest;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;)V

    goto :goto_6a

    .line 1147
    :pswitch_75
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;)V

    goto :goto_6a

    .line 1152
    :pswitch_7f
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;)V

    goto :goto_6a

    .line 1158
    :pswitch_89
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$PostRequest;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$PostResponse;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$PostRequest;Lcom/google/wireless/tacotruck/proto/Network$PostResponse;)V

    goto :goto_6a

    .line 1163
    :pswitch_93
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;)V

    goto :goto_6a

    .line 1168
    :pswitch_9d
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;)V

    goto :goto_6a

    .line 1179
    :pswitch_a7
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;)V

    goto :goto_6a

    .line 1184
    :pswitch_b1
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;)V

    goto :goto_6a

    .line 1192
    :pswitch_bb
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;)V

    goto :goto_6a

    .line 1198
    :pswitch_c5
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;)V

    goto :goto_6a

    .line 1203
    :pswitch_cf
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;)V

    goto :goto_6a

    .line 1208
    :pswitch_d9
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;)V

    goto :goto_6a

    .line 1213
    :pswitch_e3
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;)V

    goto/16 :goto_6a

    .line 1218
    :pswitch_ee
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;)V

    goto/16 :goto_6a

    .line 1223
    :pswitch_f9
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;)V

    goto/16 :goto_6a

    .line 1228
    :pswitch_104
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;)V

    goto/16 :goto_6a

    .line 1233
    :pswitch_10f
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;)V

    goto/16 :goto_6a

    .line 1238
    :pswitch_11a
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;)V

    goto/16 :goto_6a

    .line 1243
    :pswitch_125
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamResponse;)V

    goto/16 :goto_6a

    .line 1248
    :pswitch_130
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;)V

    goto/16 :goto_6a

    .line 1253
    :pswitch_13b
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;)V

    goto/16 :goto_6a

    .line 1258
    :pswitch_146
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;)V

    goto/16 :goto_6a

    .line 1264
    :pswitch_151
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;)V

    goto/16 :goto_6a

    .line 1269
    :pswitch_15c
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;)V

    goto/16 :goto_6a

    .line 1274
    :pswitch_167
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;)V

    goto/16 :goto_6a

    .line 1283
    :pswitch_172
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;)V

    goto/16 :goto_6a

    .line 1140
    nop

    :pswitch_data_17e
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_75
        :pswitch_7f
        :pswitch_89
        :pswitch_93
        :pswitch_9d
        :pswitch_6a
        :pswitch_6a
        :pswitch_a7
        :pswitch_b1
        :pswitch_6a
        :pswitch_bb
        :pswitch_c5
        :pswitch_cf
        :pswitch_d9
        :pswitch_e3
        :pswitch_ee
        :pswitch_f9
        :pswitch_104
        :pswitch_10f
        :pswitch_11a
        :pswitch_125
        :pswitch_130
        :pswitch_13b
        :pswitch_146
        :pswitch_151
        :pswitch_15c
        :pswitch_167
        :pswitch_6a
        :pswitch_172
    .end packed-switch
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
    .line 575
    .local p2, commentIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mProcessMasterResponseFirst:Z

    .line 577
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    move-result-object v0

    .line 578
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->MODERATE_COMMENTS:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    .line 579
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    .line 580
    if-eqz p3, :cond_14

    .line 581
    invoke-virtual {v0, p2}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->addAllDeleteCommentId(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    .line 583
    :cond_14
    if-eqz p4, :cond_19

    .line 584
    invoke-virtual {v0, p2}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->addAllReportCommentId(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    .line 586
    :cond_19
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ACTIVITY_ACTION:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 588
    if-eqz p5, :cond_28

    .line 589
    const/4 v1, 0x5

    iput v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mMode:I

    .line 593
    :goto_27
    return-void

    .line 591
    :cond_28
    const/4 v1, 0x7

    iput v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mMode:I

    goto :goto_27
.end method

.method public muteActivity(Ljava/lang/String;)V
    .registers 4
    .parameter "activityId"

    .prologue
    .line 445
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mProcessMasterResponseFirst:Z

    .line 447
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->MUTE:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    invoke-static {v1, p1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->createActivityAction(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;

    move-result-object v0

    .line 449
    .local v0, request:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ACTIVITY_ACTION:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 450
    return-void
.end method

.method public bridge synthetic onHttpCookie(Lorg/apache/http/cookie/Cookie;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/api/EsOperation;->onHttpCookie(Lorg/apache/http/cookie/Cookie;)V

    return-void
.end method

.method protected onHttpOperationComplete(ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 7
    .parameter "errorCode"
    .parameter "reasonPhrase"
    .parameter "ex"

    .prologue
    .line 307
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/api/EsOperation;->onHttpOperationComplete(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 309
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_9

    if-eqz p3, :cond_19

    .line 310
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mEventsToRestoreOnError:Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    if-eqz v0, :cond_19

    .line 311
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mEventsToRestoreOnError:Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/content/EsAnalyticsData;->bulkInsert(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/webapps/Analytics$LogEnvelope;)V

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mEventsToRestoreOnError:Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    .line 315
    :cond_19
    return-void
.end method

.method public photosHome()V
    .registers 4

    .prologue
    .line 848
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;

    move-result-object v0

    .line 849
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->setMaxCoverCountPerSection(I)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;

    .line 850
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->PHOTOS_HOME:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 851
    return-void
.end method

.method public reportActivity(Ljava/lang/String;)V
    .registers 4
    .parameter "activityId"

    .prologue
    .line 456
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mProcessMasterResponseFirst:Z

    .line 458
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->REPORT_ABUSE:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    invoke-static {v1, p1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->createActivityAction(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;

    move-result-object v0

    .line 460
    .local v0, request:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ACTIVITY_ACTION:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 461
    return-void
.end method

.method public reportAdPlusOne(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "packageName"
    .parameter "installerPackageName"

    .prologue
    .line 1004
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;

    move-result-object v0

    .line 1005
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;->PLATFORM:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->setContentType(Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;)Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;

    .line 1006
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

    .line 1008
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->REPORT_ABUSE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 1009
    return-void
.end method

.method public reshareActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/lang/String;)V
    .registers 17
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
    .line 417
    .local p4, mentions:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mProcessMasterResponseFirst:Z

    .line 419
    const/4 v1, 0x0

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->RESHARE:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->buildActivityRequest(Landroid/content/Context;Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/wireless/tacotruck/proto/Data$Audience;Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/util/List;)Lcom/google/android/apps/plus/api/EsRequest;

    move-result-object v9

    .line 421
    .local v9, request:Lcom/google/android/apps/plus/api/EsRequest;
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->POST:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v9}, Lcom/google/android/apps/plus/api/EsRequest;->getMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 423
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mMode:I

    .line 424
    return-void
.end method

.method public searchActivities(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "query"
    .parameter "continuationToken"

    .prologue
    .line 1057
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

    move-result-object v1

    .line 1059
    .local v1, builder:Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    move-result-object v2

    .line 1060
    .local v2, searchQueryBuilder:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    invoke-virtual {v2, p1}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->setQueryText(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    .line 1061
    sget-object v3, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;->TACOS:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

    invoke-virtual {v2, v3}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->addFilter(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    .line 1062
    sget-object v3, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;->RECENT:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    invoke-virtual {v2, v3}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->setSort(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    .line 1063
    invoke-virtual {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->setSearchQuery(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

    .line 1065
    if-eqz p2, :cond_24

    .line 1066
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    move-result-object v0

    .line 1068
    .local v0, activityRequestDataBuilder:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;
    invoke-virtual {v0, p2}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->setShownActivitiesBlob(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    .line 1069
    invoke-virtual {v1, v0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->setActivityRequestData(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

    .line 1072
    .end local v0           #activityRequestDataBuilder:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;
    :cond_24
    sget-object v3, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->SEARCH:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 1073
    return-void
.end method

.method public searchPeople(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 9
    .parameter "query"
    .parameter "includePlusPages"
    .parameter "continuationToken"

    .prologue
    .line 1083
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

    move-result-object v0

    .line 1085
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    move-result-object v2

    .line 1086
    .local v2, searchQueryBuilder:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    invoke-virtual {v2, p1}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->setQueryText(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    .line 1087
    sget-object v3, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;->PEOPLE:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

    invoke-virtual {v2, v3}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->addFilter(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    .line 1088
    sget-object v3, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;->BEST:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    invoke-virtual {v2, v3}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->setSort(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    .line 1089
    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->setSearchQuery(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

    .line 1091
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;

    move-result-object v1

    .line 1093
    .local v1, peopleRequestDataBuilder:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;
    invoke-virtual {v1, p2}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->setIncludePlusPages(Z)Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;

    .line 1094
    if-eqz p3, :cond_24

    .line 1095
    invoke-virtual {v1, p3}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->setShownPeopleBlob(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;

    .line 1098
    :cond_24
    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->setPeopleRequestData(Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

    .line 1100
    sget-object v3, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->SEARCH:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 1101
    return-void
.end method

.method public setLastNotificationReadTime(D)V
    .registers 6
    .parameter "time"

    .prologue
    .line 1018
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest$Builder;

    move-result-object v0

    .line 1020
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest$Builder;
    invoke-virtual {v0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest$Builder;->setLastReadTime(D)Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest$Builder;

    .line 1022
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->SET_NOTIFICATIONS_LAST_READ_TIME:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 1023
    return-void
.end method

.method public setProfilePhoto([B)V
    .registers 6
    .parameter "photoBytes"

    .prologue
    .line 874
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;

    move-result-object v0

    .line 875
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;
    invoke-static {p1}, Lcom/google/android/apps/plus/util/ImageUtils;->encodeImageBytes([B)Ljava/lang/String;

    move-result-object v1

    .line 876
    .local v1, encodedPhoto:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->setPhoto(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;

    .line 877
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->SET_PROFILE_PHOTO:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 878
    return-void
.end method

.method public setupAccount()V
    .registers 2

    .prologue
    .line 914
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getSettings()V

    .line 915
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mSetupAccount:Z

    .line 916
    return-void
.end method

.method public start(Lcom/google/android/apps/plus/network/HttpTransactionMetrics;)V
    .registers 7
    .parameter "metrics"

    .prologue
    .line 285
    iget-object v2, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mEventsToRestoreOnError:Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    if-eqz v2, :cond_8

    .line 299
    :cond_4
    :goto_4
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/api/EsOperation;->start(Lcom/google/android/apps/plus/network/HttpTransactionMetrics;)V

    .line 300
    return-void

    .line 289
    :cond_8
    iget-object v2, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/content/EsAnalyticsData;->removeAll(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    move-result-object v1

    .line 290
    .local v1, events:Lcom/google/wireless/webapps/Analytics$LogEnvelope;
    invoke-virtual {v1}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->getEventCount()I

    move-result v0

    .line 291
    .local v0, eventCount:I
    const-string v2, "HttpTransaction"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 292
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

    .line 294
    :cond_3b
    if-lez v0, :cond_4

    .line 295
    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addAnalyticsLogRequest(Lcom/google/wireless/webapps/Analytics$LogEnvelope;)V

    .line 296
    iput-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation;->mEventsToRestoreOnError:Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    goto :goto_4
.end method

.method public uploadPhotoThumbnail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/net/Uri;)V
    .registers 14
    .parameter "context"
    .parameter "albumTitle"
    .parameter "albumLabel"
    .parameter
    .parameter "localUri"
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
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1108
    .local p4, streamIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v0, 0x280

    .line 1109
    .local v0, MAX_IMAGE_DIMENSION:I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/16 v6, 0x280

    invoke-static {v5, p5, v6}, Lcom/google/android/apps/plus/util/ImageUtils;->createBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1111
    .local v1, bitmap:Landroid/graphics/Bitmap;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1112
    .local v4, stream:Ljava/io/ByteArrayOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v1, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1113
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 1114
    .local v2, imageBytes:[B
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1116
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->setAlbumTitle(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->setAlbumLabel(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

    move-result-object v5

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    move-result-object v6

    invoke-static {v2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

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

    move-result-object v3

    .line 1124
    .local v3, photoRequest:Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;
    sget-object v5, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->UPLOAD_PHOTO:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {p0, v5, v3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 1125
    return-void
.end method
