.class public final Lcom/google/api/services/plusi/model/TransitStationScheduleLine;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "TransitStationScheduleLine.java"


# instance fields
.field public destinations:Ljava/lang/String;

.field public lineId:Ljava/lang/String;

.field public lineSnippet:Lcom/google/api/services/plusi/model/LineSnippet;

.field public link:Lcom/google/api/services/plusi/model/PlacePageLink;

.field public trip:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/TransitStationScheduleTrip;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    const-class v0, Lcom/google/api/services/plusi/model/TransitStationScheduleTrip;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
