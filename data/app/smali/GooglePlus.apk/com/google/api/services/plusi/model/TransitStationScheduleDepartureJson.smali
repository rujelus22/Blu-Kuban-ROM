.class public final Lcom/google/api/services/plusi/model/TransitStationScheduleDepartureJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "TransitStationScheduleDepartureJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/TransitStationScheduleDeparture;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/TransitStationScheduleDepartureJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/TransitStationScheduleDepartureJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/TransitStationScheduleDepartureJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/TransitStationScheduleDepartureJson;->INSTANCE:Lcom/google/api/services/plusi/model/TransitStationScheduleDepartureJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/TransitStationScheduleDeparture;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "realtimeStatus"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "interpolated"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/google/api/services/plusi/model/TransitStationScheduleDepartureJson;->JSON_STRING:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "timestamp"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "isNextDay"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "headway"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "time"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/TransitStationScheduleDepartureJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/TransitStationScheduleDepartureJson;->INSTANCE:Lcom/google/api/services/plusi/model/TransitStationScheduleDepartureJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/TransitStationScheduleDeparture;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/TransitStationScheduleDeparture;->realtimeStatus:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/TransitStationScheduleDeparture;->interpolated:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/TransitStationScheduleDeparture;->timestamp:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/TransitStationScheduleDeparture;->isNextDay:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/TransitStationScheduleDeparture;->headway:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/TransitStationScheduleDeparture;->time:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/TransitStationScheduleDeparture;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/TransitStationScheduleDepartureJson;->getValues(Lcom/google/api/services/plusi/model/TransitStationScheduleDeparture;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/TransitStationScheduleDeparture;
    .registers 2

    .prologue
    .line 32
    new-instance v0, Lcom/google/api/services/plusi/model/TransitStationScheduleDeparture;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/TransitStationScheduleDeparture;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/TransitStationScheduleDepartureJson;->newInstance()Lcom/google/api/services/plusi/model/TransitStationScheduleDeparture;

    move-result-object v0

    return-object v0
.end method
