.class public final Lcom/google/api/services/plusi/model/CityblockProtoPanoJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "CityblockProtoPanoJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/CityblockProtoPano;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/CityblockProtoPanoJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/CityblockProtoPanoJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/CityblockProtoPanoJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/CityblockProtoPanoJson;->INSTANCE:Lcom/google/api/services/plusi/model/CityblockProtoPanoJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/CityblockProtoPano;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "panoId"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "latitudeE6"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "yawDeg"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "thumbnailUrls"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "longitudeE6"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Lcom/google/api/services/plusi/model/PlacePageLinkJson;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "link"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "pitchDeg"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "thumbnailUrl"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "type"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/CityblockProtoPanoJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/CityblockProtoPanoJson;->INSTANCE:Lcom/google/api/services/plusi/model/CityblockProtoPanoJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/CityblockProtoPano;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 40
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/CityblockProtoPano;->panoId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/CityblockProtoPano;->latitudeE6:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/CityblockProtoPano;->yawDeg:Ljava/lang/Double;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/CityblockProtoPano;->thumbnailUrls:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/CityblockProtoPano;->longitudeE6:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/CityblockProtoPano;->link:Lcom/google/api/services/plusi/model/PlacePageLink;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/CityblockProtoPano;->pitchDeg:Ljava/lang/Double;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/CityblockProtoPano;->thumbnailUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/CityblockProtoPano;->type:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/CityblockProtoPano;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/CityblockProtoPanoJson;->getValues(Lcom/google/api/services/plusi/model/CityblockProtoPano;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/CityblockProtoPano;
    .registers 2

    .prologue
    .line 35
    new-instance v0, Lcom/google/api/services/plusi/model/CityblockProtoPano;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/CityblockProtoPano;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/CityblockProtoPanoJson;->newInstance()Lcom/google/api/services/plusi/model/CityblockProtoPano;

    move-result-object v0

    return-object v0
.end method
