.class public final Lcom/google/api/services/plusi/model/TransitStationScheduleLineGroupJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "TransitStationScheduleLineGroupJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/TransitStationScheduleLineGroup;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/TransitStationScheduleLineGroupJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/TransitStationScheduleLineGroupJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/TransitStationScheduleLineGroupJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/TransitStationScheduleLineGroupJson;->INSTANCE:Lcom/google/api/services/plusi/model/TransitStationScheduleLineGroupJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/TransitStationScheduleLineGroup;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/plusi/model/TransitStationScheduleLineJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "line"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "moreLinesAvailable"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "vehicleTypeIcon"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "groupHeader"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "displayAsTrain"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/TransitStationScheduleLineGroupJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/TransitStationScheduleLineGroupJson;->INSTANCE:Lcom/google/api/services/plusi/model/TransitStationScheduleLineGroupJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/TransitStationScheduleLineGroup;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/TransitStationScheduleLineGroup;->line:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/TransitStationScheduleLineGroup;->moreLinesAvailable:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/TransitStationScheduleLineGroup;->vehicleTypeIcon:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/TransitStationScheduleLineGroup;->groupHeader:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/TransitStationScheduleLineGroup;->displayAsTrain:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/TransitStationScheduleLineGroup;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/TransitStationScheduleLineGroupJson;->getValues(Lcom/google/api/services/plusi/model/TransitStationScheduleLineGroup;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/TransitStationScheduleLineGroup;
    .registers 2

    .prologue
    .line 31
    new-instance v0, Lcom/google/api/services/plusi/model/TransitStationScheduleLineGroup;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/TransitStationScheduleLineGroup;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/TransitStationScheduleLineGroupJson;->newInstance()Lcom/google/api/services/plusi/model/TransitStationScheduleLineGroup;

    move-result-object v0

    return-object v0
.end method
