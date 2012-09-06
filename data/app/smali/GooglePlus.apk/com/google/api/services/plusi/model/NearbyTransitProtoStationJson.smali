.class public final Lcom/google/api/services/plusi/model/NearbyTransitProtoStationJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "NearbyTransitProtoStationJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/NearbyTransitProtoStation;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/NearbyTransitProtoStationJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/NearbyTransitProtoStationJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/NearbyTransitProtoStationJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/NearbyTransitProtoStationJson;->INSTANCE:Lcom/google/api/services/plusi/model/NearbyTransitProtoStationJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/NearbyTransitProtoStation;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "distance"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/google/api/services/plusi/model/TransitStationScheduleLineGroupJson;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "lineGroup"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/google/api/services/plusi/model/NearbyTransitProtoStationJson;->JSON_STRING:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "latE6"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Lcom/google/api/services/plusi/model/PlacePageLinkJson;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "link"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "markerId"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/google/api/services/plusi/model/NearbyTransitProtoStationJson;->JSON_STRING:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "lngE6"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/NearbyTransitProtoStationJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/NearbyTransitProtoStationJson;->INSTANCE:Lcom/google/api/services/plusi/model/NearbyTransitProtoStationJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/NearbyTransitProtoStation;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/NearbyTransitProtoStation;->distance:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/NearbyTransitProtoStation;->lineGroup:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/NearbyTransitProtoStation;->latE6:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/NearbyTransitProtoStation;->link:Lcom/google/api/services/plusi/model/PlacePageLink;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/NearbyTransitProtoStation;->markerId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/NearbyTransitProtoStation;->lngE6:Ljava/lang/Long;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/NearbyTransitProtoStation;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/NearbyTransitProtoStationJson;->getValues(Lcom/google/api/services/plusi/model/NearbyTransitProtoStation;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/NearbyTransitProtoStation;
    .registers 2

    .prologue
    .line 32
    new-instance v0, Lcom/google/api/services/plusi/model/NearbyTransitProtoStation;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/NearbyTransitProtoStation;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/NearbyTransitProtoStationJson;->newInstance()Lcom/google/api/services/plusi/model/NearbyTransitProtoStation;

    move-result-object v0

    return-object v0
.end method
