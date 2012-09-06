.class public final Lcom/google/api/services/plusi/model/TransitStationScheduleTrip;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "TransitStationScheduleTrip.java"


# instance fields
.field public departure:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/TransitStationScheduleDeparture;",
            ">;"
        }
    .end annotation
.end field

.field public firstDeparture:Lcom/google/api/services/plusi/model/TransitStationScheduleDeparture;

.field public headsign:Ljava/lang/String;

.field public lastDeparture:Lcom/google/api/services/plusi/model/TransitStationScheduleDeparture;

.field public link:Lcom/google/api/services/plusi/model/PlacePageLink;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 68
    const-class v0, Lcom/google/api/services/plusi/model/TransitStationScheduleDeparture;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
