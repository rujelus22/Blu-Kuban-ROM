.class public final Lcom/google/api/services/plusi/model/PlaceInfoJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "PlaceInfoJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/PlaceInfo;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/PlaceInfoJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/PlaceInfoJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/PlaceInfoJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/PlaceInfoJson;->INSTANCE:Lcom/google/api/services/plusi/model/PlaceInfoJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/PlaceInfo;

    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "timeZoneId"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "claimedGaiaId"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "timeZoneOffsetMin"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "isExact"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/google/api/services/plusi/model/PlaceInfoJson;->JSON_STRING:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "cid"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "featureId"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Lcom/google/api/services/plusi/model/LatLngJson;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "latlng"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "clusterId"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "longitudeE6"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "ownerStatus"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "signedClusterId"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "latitudeE6"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "gaiaIdForDisplay"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "lbcClaimedGaiaId"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/PlaceInfoJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/PlaceInfoJson;->INSTANCE:Lcom/google/api/services/plusi/model/PlaceInfoJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/PlaceInfo;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 45
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlaceInfo;->timeZoneId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlaceInfo;->claimedGaiaId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlaceInfo;->timeZoneOffsetMin:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlaceInfo;->isExact:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlaceInfo;->cid:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlaceInfo;->featureId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlaceInfo;->latlng:Lcom/google/api/services/plusi/model/LatLng;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlaceInfo;->clusterId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlaceInfo;->longitudeE6:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlaceInfo;->ownerStatus:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlaceInfo;->signedClusterId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlaceInfo;->latitudeE6:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlaceInfo;->gaiaIdForDisplay:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlaceInfo;->lbcClaimedGaiaId:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/PlaceInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/PlaceInfoJson;->getValues(Lcom/google/api/services/plusi/model/PlaceInfo;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/PlaceInfo;
    .registers 2

    .prologue
    .line 40
    new-instance v0, Lcom/google/api/services/plusi/model/PlaceInfo;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/PlaceInfo;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/PlaceInfoJson;->newInstance()Lcom/google/api/services/plusi/model/PlaceInfo;

    move-result-object v0

    return-object v0
.end method
