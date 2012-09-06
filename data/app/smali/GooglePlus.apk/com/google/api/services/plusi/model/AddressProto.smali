.class public final Lcom/google/api/services/plusi/model/AddressProto;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "AddressProto.java"


# instance fields
.field public addressLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/AddressLinesProto;",
            ">;"
        }
    .end annotation
.end field

.field public component:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/AddressComponentProto;",
            ">;"
        }
    .end annotation
.end field

.field public crossStreet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/AddressComponentProto;",
            ">;"
        }
    .end annotation
.end field

.field public deprecatedRawTextDoNotUse:Ljava/lang/String;

.field public isMailing:Ljava/lang/Boolean;

.field public isPhysical:Ljava/lang/Boolean;

.field public koreanAddressMigration:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/AddressLinesProto;",
            ">;"
        }
    .end annotation
.end field

.field public unambiguouslyDesignatesFeature:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const-class v0, Lcom/google/api/services/plusi/model/AddressComponentProto;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 65
    const-class v0, Lcom/google/api/services/plusi/model/AddressLinesProto;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 100
    const-class v0, Lcom/google/api/services/plusi/model/AddressLinesProto;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 118
    const-class v0, Lcom/google/api/services/plusi/model/AddressComponentProto;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 119
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
