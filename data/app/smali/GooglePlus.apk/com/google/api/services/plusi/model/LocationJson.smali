.class public final Lcom/google/api/services/plusi/model/LocationJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "LocationJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/Location;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/LocationJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/LocationJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/LocationJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/LocationJson;->INSTANCE:Lcom/google/api/services/plusi/model/LocationJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/Location;

    const/16 v1, 0x11

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "latitudeE7"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "mapsPageUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "mapThumbUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "language"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lcom/google/api/services/plusi/model/LocationFeatureIdJson;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "featureId"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "longitudeE7"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "mapUrl"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "clusterId"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "longitude"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "placePageUrl"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "seenIncludeLocation"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "isAddressOnly"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "locationTag"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "precisionMeters"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "latitude"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "bestAddress"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/LocationJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/LocationJson;->INSTANCE:Lcom/google/api/services/plusi/model/LocationJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/Location;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 47
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Location;->latitudeE7:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Location;->mapsPageUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Location;->mapThumbUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Location;->language:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Location;->featureId:Lcom/google/api/services/plusi/model/LocationFeatureId;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Location;->longitudeE7:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Location;->mapUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Location;->clusterId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Location;->longitude:Ljava/lang/Float;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Location;->placePageUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Location;->seenIncludeLocation:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Location;->isAddressOnly:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Location;->locationTag:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Location;->precisionMeters:Ljava/lang/Double;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Location;->latitude:Ljava/lang/Float;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Location;->bestAddress:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/Location;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/LocationJson;->getValues(Lcom/google/api/services/plusi/model/Location;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/Location;
    .registers 2

    .prologue
    .line 42
    new-instance v0, Lcom/google/api/services/plusi/model/Location;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/Location;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/LocationJson;->newInstance()Lcom/google/api/services/plusi/model/Location;

    move-result-object v0

    return-object v0
.end method
