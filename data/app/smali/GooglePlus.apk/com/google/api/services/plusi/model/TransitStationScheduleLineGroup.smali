.class public final Lcom/google/api/services/plusi/model/TransitStationScheduleLineGroup;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "TransitStationScheduleLineGroup.java"


# instance fields
.field public displayAsTrain:Ljava/lang/Boolean;

.field public groupHeader:Ljava/lang/String;

.field public line:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/TransitStationScheduleLine;",
            ">;"
        }
    .end annotation
.end field

.field public moreLinesAvailable:Ljava/lang/Boolean;

.field public vehicleTypeIcon:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-class v0, Lcom/google/api/services/plusi/model/TransitStationScheduleLine;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
