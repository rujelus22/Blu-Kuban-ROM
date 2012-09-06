.class public final Lcom/google/api/services/plusi/model/GeoCoordinatesJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "GeoCoordinatesJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/GeoCoordinates;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/GeoCoordinatesJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/GeoCoordinatesJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/GeoCoordinatesJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/GeoCoordinatesJson;->INSTANCE:Lcom/google/api/services/plusi/model/GeoCoordinatesJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/GeoCoordinates;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "latitude"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "url"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "imageUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "name"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "longitude"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/GeoCoordinatesJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/GeoCoordinatesJson;->INSTANCE:Lcom/google/api/services/plusi/model/GeoCoordinatesJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/GeoCoordinates;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GeoCoordinates;->latitude:Ljava/lang/Double;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GeoCoordinates;->url:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GeoCoordinates;->imageUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GeoCoordinates;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GeoCoordinates;->longitude:Ljava/lang/Double;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/GeoCoordinates;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/GeoCoordinatesJson;->getValues(Lcom/google/api/services/plusi/model/GeoCoordinates;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/GeoCoordinates;
    .registers 2

    .prologue
    .line 31
    new-instance v0, Lcom/google/api/services/plusi/model/GeoCoordinates;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/GeoCoordinates;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/GeoCoordinatesJson;->newInstance()Lcom/google/api/services/plusi/model/GeoCoordinates;

    move-result-object v0

    return-object v0
.end method
