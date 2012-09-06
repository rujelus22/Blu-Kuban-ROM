.class public final Lcom/google/api/services/plusi/model/DataPhotoJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "DataPhotoJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/DataPhoto;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/DataPhotoJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/DataPhotoJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/DataPhotoJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/DataPhotoJson;->INSTANCE:Lcom/google/api/services/plusi/model/DataPhotoJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/DataPhoto;

    const/16 v1, 0x3c

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/plusi/model/DataCommentJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "comment"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/google/api/services/plusi/model/PlusEventJson;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "plusEvent"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "copyrightViolation"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "reportAbuseToken"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "timestampSeconds"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Lcom/google/api/services/plusi/model/DataShapeJson;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "shape"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "isPanorama"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-class v3, Lcom/google/api/services/plusi/model/DataVideoJson;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "video"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-class v3, Lcom/google/api/services/plusi/model/DataUserJson;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "owner"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "id"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-class v3, Lcom/google/api/services/plusi/model/DataAlbumJson;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "album"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "title"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "totalComments"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "viewerCanPlusOne"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "countryAwareTakenDown"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "softDeleteAppealStatus"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-class v3, Lcom/google/api/services/plusi/model/DataImageJson;

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "unfiltered"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "provider"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    sget-object v3, Lcom/google/api/services/plusi/model/DataPhotoJson;->JSON_KEY:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "public"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "plusiPublic"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "uploadTimestampSeconds"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "description"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "isYoutubeVideo"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    sget-object v3, Lcom/google/api/services/plusi/model/DataPhotoJson;->JSON_STRING:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "viewCount"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "viewerCanTag"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-class v3, Lcom/google/api/services/plusi/model/DataExifInfoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "exifInfo"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "softDeleted"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-class v3, Lcom/google/api/services/plusi/model/UpdateJson;

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "update"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-class v3, Lcom/google/api/services/plusi/model/DataHistogramJson;

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "histogram"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    sget-object v3, Lcom/google/api/services/plusi/model/DataPhotoJson;->JSON_STRING:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "fileSize"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "viewerCanComment"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-class v3, Lcom/google/api/services/plusi/model/DataGeoInfoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "geoInfo"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "pixyFilter"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "geoLocation"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    sget-object v3, Lcom/google/api/services/plusi/model/DataPhotoJson;->JSON_STRING:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "totalLikes"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-class v3, Lcom/google/api/services/plusi/model/DataImageJson;

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "thumbnail"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "caption"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "pageUrl"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-class v3, Lcom/google/api/services/plusi/model/DataPlusOneJson;

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "plusOne"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-class v3, Lcom/google/api/services/plusi/model/DataImageJson;

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "original"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-class v3, Lcom/google/api/services/plusi/model/DataSafeMobileUrlJson;

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string v3, "safeMobileUrl"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/DataPhotoJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/DataPhotoJson;->INSTANCE:Lcom/google/api/services/plusi/model/DataPhotoJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/DataPhoto;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 71
    const/16 v0, 0x28

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhoto;->comment:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhoto;->plusEvent:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhoto;->copyrightViolation:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhoto;->reportAbuseToken:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhoto;->timestampSeconds:Ljava/lang/Double;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhoto;->shape:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhoto;->isPanorama:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhoto;->video:Lcom/google/api/services/plusi/model/DataVideo;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhoto;->owner:Lcom/google/api/services/plusi/model/DataUser;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhoto;->id:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhoto;->album:Lcom/google/api/services/plusi/model/DataAlbum;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhoto;->title:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhoto;->totalComments:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhoto;->viewerCanPlusOne:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhoto;->countryAwareTakenDown:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhoto;->softDeleteAppealStatus:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhoto;->unfiltered:Lcom/google/api/services/plusi/model/DataImage;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhoto;->provider:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhoto;->plusiPublic:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhoto;->uploadTimestampSeconds:Ljava/lang/Double;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhoto;->description:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhoto;->isYoutubeVideo:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhoto;->viewCount:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhoto;->viewerCanTag:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhoto;->exifInfo:Lcom/google/api/services/plusi/model/DataExifInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhoto;->softDeleted:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhoto;->update:Lcom/google/api/services/plusi/model/Update;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhoto;->histogram:Lcom/google/api/services/plusi/model/DataHistogram;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhoto;->fileSize:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhoto;->viewerCanComment:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhoto;->geoInfo:Lcom/google/api/services/plusi/model/DataGeoInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhoto;->pixyFilter:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhoto;->geoLocation:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhoto;->totalLikes:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhoto;->thumbnail:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhoto;->caption:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhoto;->pageUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhoto;->plusOne:Lcom/google/api/services/plusi/model/DataPlusOne;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhoto;->original:Lcom/google/api/services/plusi/model/DataImage;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhoto;->safeMobileUrl:Lcom/google/api/services/plusi/model/DataSafeMobileUrl;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/DataPhoto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/DataPhotoJson;->getValues(Lcom/google/api/services/plusi/model/DataPhoto;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/DataPhoto;
    .registers 2

    .prologue
    .line 66
    new-instance v0, Lcom/google/api/services/plusi/model/DataPhoto;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/DataPhoto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/DataPhotoJson;->newInstance()Lcom/google/api/services/plusi/model/DataPhoto;

    move-result-object v0

    return-object v0
.end method
