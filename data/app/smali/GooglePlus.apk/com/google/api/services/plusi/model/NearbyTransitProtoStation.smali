.class public final Lcom/google/api/services/plusi/model/NearbyTransitProtoStation;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "NearbyTransitProtoStation.java"


# instance fields
.field public distance:Ljava/lang/String;

.field public latE6:Ljava/lang/Long;

.field public lineGroup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/TransitStationScheduleLineGroup;",
            ">;"
        }
    .end annotation
.end field

.field public link:Lcom/google/api/services/plusi/model/PlacePageLink;

.field public lngE6:Ljava/lang/Long;

.field public markerId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const-class v0, Lcom/google/api/services/plusi/model/TransitStationScheduleLineGroup;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
