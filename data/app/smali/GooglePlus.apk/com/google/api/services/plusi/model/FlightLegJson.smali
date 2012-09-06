.class public final Lcom/google/api/services/plusi/model/FlightLegJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "FlightLegJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/FlightLeg;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/FlightLegJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/FlightLegJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/FlightLegJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/FlightLegJson;->INSTANCE:Lcom/google/api/services/plusi/model/FlightLegJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/FlightLeg;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "arrivalAirportCode"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "departureAirportCode"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "flightNumber"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "departureTimestring"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "confirmationCode"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "arrivalTimestring"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "carrierCode"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "departureCityName"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "arrivalCityName"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "carrierName"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 32
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/FlightLegJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/FlightLegJson;->INSTANCE:Lcom/google/api/services/plusi/model/FlightLegJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/FlightLeg;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 41
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FlightLeg;->arrivalAirportCode:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FlightLeg;->departureAirportCode:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FlightLeg;->flightNumber:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FlightLeg;->departureTimestring:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FlightLeg;->confirmationCode:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FlightLeg;->arrivalTimestring:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FlightLeg;->carrierCode:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FlightLeg;->departureCityName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FlightLeg;->arrivalCityName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FlightLeg;->carrierName:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/FlightLeg;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/FlightLegJson;->getValues(Lcom/google/api/services/plusi/model/FlightLeg;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/FlightLeg;
    .registers 2

    .prologue
    .line 36
    new-instance v0, Lcom/google/api/services/plusi/model/FlightLeg;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/FlightLeg;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/FlightLegJson;->newInstance()Lcom/google/api/services/plusi/model/FlightLeg;

    move-result-object v0

    return-object v0
.end method
