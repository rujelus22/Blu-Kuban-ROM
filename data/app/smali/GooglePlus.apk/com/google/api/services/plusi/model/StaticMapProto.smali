.class public final Lcom/google/api/services/plusi/model/StaticMapProto;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "StaticMapProto.java"


# instance fields
.field public additionalMaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/StaticMapProtoImage;",
            ">;"
        }
    .end annotation
.end field

.field public directionsLink:Lcom/google/api/services/plusi/model/PlacePageLink;

.field public image:Lcom/google/api/services/plusi/model/StaticMapProtoImage;

.field public latitudeE6:Ljava/lang/Long;

.field public link:Lcom/google/api/services/plusi/model/PlacePageLink;

.field public longitudeE6:Ljava/lang/Long;

.field public zoomLevel:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const-class v0, Lcom/google/api/services/plusi/model/StaticMapProtoImage;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
