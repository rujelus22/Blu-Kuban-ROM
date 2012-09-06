.class public final Lcom/google/api/services/plusi/model/PostActivityRequest;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "PostActivityRequest.java"


# instance fields
.field public aclJson:Ljava/lang/String;

.field public activityToReshare:Ljava/lang/String;

.field public albumId:Ljava/lang/String;

.field public albumOwnerId:Ljava/lang/String;

.field public albumTitle:Ljava/lang/String;

.field public apiMode:Ljava/lang/String;

.field public attribution:Lcom/google/api/services/plusi/model/RequestsPostActivityRequestAttribution;

.field public commonFields:Lcom/google/api/services/plusi/model/ApiaryFields;

.field public contentFormat:Ljava/lang/String;

.field public disableComments:Ljava/lang/Boolean;

.field public disableReshares:Ljava/lang/Boolean;

.field public doNotDistribute:Ljava/lang/Boolean;

.field public emailDeliveryIndicators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/EmailDeliveryIndicators;",
            ">;"
        }
    .end annotation
.end field

.field public embed:Lcom/google/api/services/plusi/model/EmbedClientItem;

.field public enableTracing:Ljava/lang/Boolean;

.field public externalId:Ljava/lang/String;

.field public externalSites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public gadgetsData:Lcom/google/api/services/plusi/model/GadgetsData;

.field public hostDomain:Ljava/lang/String;

.field public isAlbumReshare:Ljava/lang/Boolean;

.field public isFullAlbumShare:Ljava/lang/Boolean;

.field public location:Lcom/google/api/services/plusi/model/Location;

.field public mediaJson:Ljava/lang/String;

.field public movePhotos:Ljava/lang/Boolean;

.field public photosShareData:Lcom/google/api/services/plusi/model/PhotoServiceShareActionData;

.field public renderContextLocation:Ljava/lang/String;

.field public resharedUpdateId:Ljava/lang/String;

.field public saveDefaultAcl:Ljava/lang/Boolean;

.field public saveSeenEmailConfirmationOob:Ljava/lang/Boolean;

.field public saveSeenFirstPostOob:Ljava/lang/Boolean;

.field public saveSeenUnderageExtendedSharingOob:Ljava/lang/Boolean;

.field public saveSeenUnderagePublicSharingOob:Ljava/lang/Boolean;

.field public saveSendImplicitInvites:Ljava/lang/Boolean;

.field public sendImplicitInvites:Ljava/lang/Boolean;

.field public sharingRoster:Lcom/google/api/services/plusi/model/SharingRoster;

.field public shouldSyncAcl:Ljava/lang/Boolean;

.field public squareStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/RequestsPostActivityRequestSquareStreamInfo;",
            ">;"
        }
    .end annotation
.end field

.field public streamSourceId:Ljava/lang/String;

.field public updateMetadata:Lcom/google/api/services/plusi/model/UpdateMetadata;

.field public updateSegments:Lcom/google/api/services/plusi/model/EditSegments;

.field public updateText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 183
    const-class v0, Lcom/google/api/services/plusi/model/RequestsPostActivityRequestSquareStreamInfo;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 270
    const-class v0, Lcom/google/api/services/plusi/model/EmailDeliveryIndicators;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 271
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
