.class public final Lcom/google/api/services/plusi/model/AddressComponentProto;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "AddressComponentProto.java"


# instance fields
.field public featureId:Lcom/google/api/services/plusi/model/FeatureIdProto;

.field public featureType:Ljava/lang/Integer;

.field public parsedName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/NameProto;",
            ">;"
        }
    .end annotation
.end field

.field public range:Lcom/google/api/services/plusi/model/AddressRangeProto;

.field public type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 88
    const-class v0, Lcom/google/api/services/plusi/model/NameProto;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 89
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
