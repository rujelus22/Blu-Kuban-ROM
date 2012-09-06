.class public final Lcom/google/api/services/plusi/model/NearbyTransitProtoJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "NearbyTransitProtoJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/NearbyTransitProto;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/NearbyTransitProtoJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/NearbyTransitProtoJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/NearbyTransitProtoJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/NearbyTransitProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/NearbyTransitProtoJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/NearbyTransitProto;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/plusi/model/NearbyTransitProtoStationJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "station"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "startIndex"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "hasMoreStations"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "isStation"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/NearbyTransitProtoJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/NearbyTransitProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/NearbyTransitProtoJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/NearbyTransitProto;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/NearbyTransitProto;->station:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/NearbyTransitProto;->startIndex:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/NearbyTransitProto;->hasMoreStations:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/NearbyTransitProto;->isStation:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/NearbyTransitProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/NearbyTransitProtoJson;->getValues(Lcom/google/api/services/plusi/model/NearbyTransitProto;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/NearbyTransitProto;
    .registers 2

    .prologue
    .line 30
    new-instance v0, Lcom/google/api/services/plusi/model/NearbyTransitProto;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/NearbyTransitProto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/NearbyTransitProtoJson;->newInstance()Lcom/google/api/services/plusi/model/NearbyTransitProto;

    move-result-object v0

    return-object v0
.end method
