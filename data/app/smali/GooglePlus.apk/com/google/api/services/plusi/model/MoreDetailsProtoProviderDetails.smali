.class public final Lcom/google/api/services/plusi/model/MoreDetailsProtoProviderDetails;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "MoreDetailsProtoProviderDetails.java"


# instance fields
.field public detail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/DetailProto;",
            ">;"
        }
    .end annotation
.end field

.field public providerAttribution:Lcom/google/api/services/plusi/model/PlacePageLink;

.field public providerTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const-class v0, Lcom/google/api/services/plusi/model/DetailProto;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
