.class public final Lcom/google/api/services/plusi/model/PlaceJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "PlaceJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/Place;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/PlaceJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/PlaceJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/PlaceJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/PlaceJson;->INSTANCE:Lcom/google/api/services/plusi/model/PlaceJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/Place;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "referenceId"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "description"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "url"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "imageUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "mapUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "clusterId"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Lcom/google/api/services/plusi/model/EmbedsPostalAddressJson;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "address"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-class v3, Lcom/google/api/services/plusi/model/GeoCoordinatesJson;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "geo"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "ownerObfuscatedId"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "name"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 32
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/PlaceJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/PlaceJson;->INSTANCE:Lcom/google/api/services/plusi/model/PlaceJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/Place;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 41
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Place;->referenceId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Place;->description:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Place;->url:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Place;->imageUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Place;->mapUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Place;->clusterId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Place;->address:Lcom/google/api/services/plusi/model/EmbedsPostalAddress;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Place;->geo:Lcom/google/api/services/plusi/model/GeoCoordinates;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Place;->ownerObfuscatedId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Place;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/Place;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/PlaceJson;->getValues(Lcom/google/api/services/plusi/model/Place;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/Place;
    .registers 2

    .prologue
    .line 36
    new-instance v0, Lcom/google/api/services/plusi/model/Place;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/Place;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/PlaceJson;->newInstance()Lcom/google/api/services/plusi/model/Place;

    move-result-object v0

    return-object v0
.end method
