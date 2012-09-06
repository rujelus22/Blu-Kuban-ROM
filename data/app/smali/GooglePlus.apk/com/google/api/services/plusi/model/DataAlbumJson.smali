.class public final Lcom/google/api/services/plusi/model/DataAlbumJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "DataAlbumJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/DataAlbum;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/DataAlbumJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/DataAlbumJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/DataAlbumJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/DataAlbumJson;->INSTANCE:Lcom/google/api/services/plusi/model/DataAlbumJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/DataAlbum;

    const/16 v1, 0x25

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/plusi/model/PlusEventJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "plusEvent"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "numGeoPhotos"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "isReshareDisabled"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "deprecatedAudienceString"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "showVisibilityInspector"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "numNonGaiaRecipients"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Lcom/google/api/services/plusi/model/DataPhotoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "sample"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "namedShapeCount"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "albumType"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-class v3, Lcom/google/api/services/plusi/model/DataUserJson;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "owner"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "id"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "childId"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "eventId"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "unnamedShapeCount"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "title"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "showGeoInfo"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "provider"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "pwaManageUrl"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "description"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-class v3, Lcom/google/api/services/plusi/model/UpdateJson;

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "update"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "visibility"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "authkey"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "numGaiaRecipients"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-class v3, Lcom/google/api/services/plusi/model/PersonJson;

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "audienceMember"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "albumAcl"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "photoCount"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-class v3, Lcom/google/api/services/plusi/model/DataPhotoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "cover"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "downloadUrl"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "audience"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "numSoftDeletedPhotos"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "timestampSeconds"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/DataAlbumJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/DataAlbumJson;->INSTANCE:Lcom/google/api/services/plusi/model/DataAlbumJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/DataAlbum;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 62
    const/16 v0, 0x1f

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataAlbum;->plusEvent:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataAlbum;->numGeoPhotos:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataAlbum;->isReshareDisabled:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataAlbum;->deprecatedAudienceString:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataAlbum;->showVisibilityInspector:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataAlbum;->numNonGaiaRecipients:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataAlbum;->sample:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataAlbum;->namedShapeCount:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataAlbum;->albumType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataAlbum;->owner:Lcom/google/api/services/plusi/model/DataUser;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataAlbum;->id:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataAlbum;->childId:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataAlbum;->eventId:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataAlbum;->unnamedShapeCount:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataAlbum;->title:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataAlbum;->showGeoInfo:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataAlbum;->provider:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataAlbum;->pwaManageUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataAlbum;->description:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataAlbum;->update:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataAlbum;->visibility:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataAlbum;->authkey:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataAlbum;->numGaiaRecipients:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataAlbum;->audienceMember:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataAlbum;->albumAcl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataAlbum;->photoCount:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataAlbum;->cover:Lcom/google/api/services/plusi/model/DataPhoto;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataAlbum;->downloadUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataAlbum;->audience:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataAlbum;->numSoftDeletedPhotos:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataAlbum;->timestampSeconds:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/DataAlbum;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/DataAlbumJson;->getValues(Lcom/google/api/services/plusi/model/DataAlbum;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/DataAlbum;
    .registers 2

    .prologue
    .line 57
    new-instance v0, Lcom/google/api/services/plusi/model/DataAlbum;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/DataAlbum;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/DataAlbumJson;->newInstance()Lcom/google/api/services/plusi/model/DataAlbum;

    move-result-object v0

    return-object v0
.end method
