.class public final Lcom/google/api/services/plusi/model/TravelEvent;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "TravelEvent.java"


# instance fields
.field public description:Ljava/lang/String;

.field public flight:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/FlightLeg;",
            ">;"
        }
    .end annotation
.end field

.field public imageUrl:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const-class v0, Lcom/google/api/services/plusi/model/FlightLeg;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
