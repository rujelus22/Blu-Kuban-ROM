.class public final Lcom/google/api/services/plusi/model/PriceLevelsProto;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "PriceLevelsProto.java"


# instance fields
.field public labelDisplay:Ljava/lang/String;

.field public priceLevel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/PriceLevelProto;",
            ">;"
        }
    .end annotation
.end field

.field public ratedValueId:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const-class v0, Lcom/google/api/services/plusi/model/PriceLevelProto;

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
