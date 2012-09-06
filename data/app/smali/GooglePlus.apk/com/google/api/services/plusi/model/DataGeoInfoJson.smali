.class public final Lcom/google/api/services/plusi/model/DataGeoInfoJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "DataGeoInfoJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/DataGeoInfo;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/DataGeoInfoJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/DataGeoInfoJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/DataGeoInfoJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/DataGeoInfoJson;->INSTANCE:Lcom/google/api/services/plusi/model/DataGeoInfoJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/DataGeoInfo;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "altitude"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "longitude"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "longitudeSpan"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "latitude"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "latitudeSpan"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "fromExif"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/DataGeoInfoJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/DataGeoInfoJson;->INSTANCE:Lcom/google/api/services/plusi/model/DataGeoInfoJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/DataGeoInfo;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataGeoInfo;->altitude:Ljava/lang/Double;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataGeoInfo;->longitude:Ljava/lang/Double;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataGeoInfo;->longitudeSpan:Ljava/lang/Double;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataGeoInfo;->latitude:Ljava/lang/Double;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataGeoInfo;->latitudeSpan:Ljava/lang/Double;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataGeoInfo;->fromExif:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/DataGeoInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/DataGeoInfoJson;->getValues(Lcom/google/api/services/plusi/model/DataGeoInfo;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/DataGeoInfo;
    .registers 2

    .prologue
    .line 32
    new-instance v0, Lcom/google/api/services/plusi/model/DataGeoInfo;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/DataGeoInfo;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/DataGeoInfoJson;->newInstance()Lcom/google/api/services/plusi/model/DataGeoInfo;

    move-result-object v0

    return-object v0
.end method
