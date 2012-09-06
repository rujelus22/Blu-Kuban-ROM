.class public final Lcom/google/api/services/plusi/model/StaticMapProtoJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "StaticMapProtoJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/StaticMapProto;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/StaticMapProtoJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/StaticMapProtoJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/StaticMapProtoJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/StaticMapProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/StaticMapProtoJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/StaticMapProto;

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/api/services/plusi/model/StaticMapProtoJson;->JSON_STRING:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "latitudeE6"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/google/api/services/plusi/model/StaticMapProtoImageJson;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "additionalMaps"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lcom/google/api/services/plusi/model/StaticMapProtoImageJson;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "image"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/google/api/services/plusi/model/StaticMapProtoJson;->JSON_STRING:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "longitudeE6"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "zoomLevel"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-class v3, Lcom/google/api/services/plusi/model/PlacePageLinkJson;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "link"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-class v3, Lcom/google/api/services/plusi/model/PlacePageLinkJson;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "directionsLink"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/StaticMapProtoJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/StaticMapProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/StaticMapProtoJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/StaticMapProto;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 38
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/StaticMapProto;->latitudeE6:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/StaticMapProto;->additionalMaps:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/StaticMapProto;->image:Lcom/google/api/services/plusi/model/StaticMapProtoImage;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/StaticMapProto;->longitudeE6:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/StaticMapProto;->zoomLevel:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/StaticMapProto;->link:Lcom/google/api/services/plusi/model/PlacePageLink;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/StaticMapProto;->directionsLink:Lcom/google/api/services/plusi/model/PlacePageLink;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/StaticMapProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/StaticMapProtoJson;->getValues(Lcom/google/api/services/plusi/model/StaticMapProto;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/StaticMapProto;
    .registers 2

    .prologue
    .line 33
    new-instance v0, Lcom/google/api/services/plusi/model/StaticMapProto;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/StaticMapProto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/StaticMapProtoJson;->newInstance()Lcom/google/api/services/plusi/model/StaticMapProto;

    move-result-object v0

    return-object v0
.end method
