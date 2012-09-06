.class public final Lcom/google/api/services/plusi/model/CityblockProtoPano;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "CityblockProtoPano.java"


# instance fields
.field public latitudeE6:Ljava/lang/Long;

.field public link:Lcom/google/api/services/plusi/model/PlacePageLink;

.field public longitudeE6:Ljava/lang/Long;

.field public panoId:Ljava/lang/String;

.field public pitchDeg:Ljava/lang/Double;

.field public thumbnailUrl:Ljava/lang/String;

.field public thumbnailUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public type:Ljava/lang/String;

.field public yawDeg:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
