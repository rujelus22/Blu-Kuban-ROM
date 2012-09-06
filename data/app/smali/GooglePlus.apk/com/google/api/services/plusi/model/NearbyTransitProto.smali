.class public final Lcom/google/api/services/plusi/model/NearbyTransitProto;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "NearbyTransitProto.java"


# instance fields
.field public hasMoreStations:Ljava/lang/Boolean;

.field public isStation:Ljava/lang/Boolean;

.field public startIndex:Ljava/lang/Integer;

.field public station:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/NearbyTransitProtoStation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-class v0, Lcom/google/api/services/plusi/model/NearbyTransitProtoStation;

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
