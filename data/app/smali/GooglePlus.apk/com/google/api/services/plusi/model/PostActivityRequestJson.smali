.class public final Lcom/google/api/services/plusi/model/PostActivityRequestJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "PostActivityRequestJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/PostActivityRequest;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/PostActivityRequestJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/PostActivityRequestJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/PostActivityRequestJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/PostActivityRequestJson;->INSTANCE:Lcom/google/api/services/plusi/model/PostActivityRequestJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/PostActivityRequest;

    const/16 v1, 0x34

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "saveSendImplicitInvites"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "sendImplicitInvites"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "aclJson"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "hostDomain"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "saveSeenUnderageExtendedSharingOob"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "streamSourceId"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Lcom/google/api/services/plusi/model/PhotoServiceShareActionDataJson;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "photosShareData"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "saveDefaultAcl"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "albumOwnerId"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-class v3, Lcom/google/api/services/plusi/model/EditSegmentsJson;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "updateSegments"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "enableTracing"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-class v3, Lcom/google/api/services/plusi/model/GadgetsDataJson;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "gadgetsData"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-class v3, Lcom/google/api/services/plusi/model/SharingRosterJson;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "sharingRoster"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "externalSites"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "isFullAlbumShare"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "apiMode"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "albumTitle"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-class v3, Lcom/google/api/services/plusi/model/RequestsPostActivityRequestSquareStreamInfoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "squareStreams"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "doNotDistribute"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-class v3, Lcom/google/api/services/plusi/model/UpdateMetadataJson;

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "updateMetadata"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "externalId"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-class v3, Lcom/google/api/services/plusi/model/LocationJson;

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "location"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "resharedUpdateId"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "updateText"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "saveSeenFirstPostOob"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "saveSeenEmailConfirmationOob"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-class v3, Lcom/google/api/services/plusi/model/RequestsPostActivityRequestAttributionJson;

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "attribution"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-class v3, Lcom/google/api/services/plusi/model/EmailDeliveryIndicatorsJson;

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "emailDeliveryIndicators"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "isAlbumReshare"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "mediaJson"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "movePhotos"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "shouldSyncAcl"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "albumId"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "saveSeenUnderagePublicSharingOob"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "disableComments"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "activityToReshare"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "renderContextLocation"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "contentFormat"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-class v3, Lcom/google/api/services/plusi/model/ApiaryFieldsJson;

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "commonFields"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-class v3, Lcom/google/api/services/plusi/model/EmbedClientItemJson;

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "embed"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "disableReshares"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/PostActivityRequestJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/PostActivityRequestJson;->INSTANCE:Lcom/google/api/services/plusi/model/PostActivityRequestJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/PostActivityRequest;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 72
    const/16 v0, 0x29

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->saveSendImplicitInvites:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->sendImplicitInvites:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->aclJson:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->hostDomain:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->saveSeenUnderageExtendedSharingOob:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->streamSourceId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->photosShareData:Lcom/google/api/services/plusi/model/PhotoServiceShareActionData;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->saveDefaultAcl:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->albumOwnerId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->updateSegments:Lcom/google/api/services/plusi/model/EditSegments;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->enableTracing:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->gadgetsData:Lcom/google/api/services/plusi/model/GadgetsData;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->sharingRoster:Lcom/google/api/services/plusi/model/SharingRoster;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->externalSites:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->isFullAlbumShare:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->apiMode:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->albumTitle:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->squareStreams:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->doNotDistribute:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->updateMetadata:Lcom/google/api/services/plusi/model/UpdateMetadata;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->externalId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->location:Lcom/google/api/services/plusi/model/Location;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->resharedUpdateId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->updateText:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->saveSeenFirstPostOob:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->saveSeenEmailConfirmationOob:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->attribution:Lcom/google/api/services/plusi/model/RequestsPostActivityRequestAttribution;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->emailDeliveryIndicators:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->isAlbumReshare:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->mediaJson:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->movePhotos:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->shouldSyncAcl:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->albumId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->saveSeenUnderagePublicSharingOob:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->disableComments:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->activityToReshare:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->renderContextLocation:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->contentFormat:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->commonFields:Lcom/google/api/services/plusi/model/ApiaryFields;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->embed:Lcom/google/api/services/plusi/model/EmbedClientItem;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->disableReshares:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/PostActivityRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/PostActivityRequestJson;->getValues(Lcom/google/api/services/plusi/model/PostActivityRequest;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/PostActivityRequest;
    .registers 2

    .prologue
    .line 67
    new-instance v0, Lcom/google/api/services/plusi/model/PostActivityRequest;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/PostActivityRequest;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/PostActivityRequestJson;->newInstance()Lcom/google/api/services/plusi/model/PostActivityRequest;

    move-result-object v0

    return-object v0
.end method
