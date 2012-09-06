.class public final Lcom/google/api/services/plusi/model/SummaryDetailsProto;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "SummaryDetailsProto.java"


# instance fields
.field public aggregatedAttribution:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/PlacePageLink;",
            ">;"
        }
    .end annotation
.end field

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

.field public moreDetails:Lcom/google/api/services/plusi/model/PlacePageLink;

.field public title:Lcom/google/api/services/plusi/model/StoryTitle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    const-class v0, Lcom/google/api/services/plusi/model/DetailProto;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 74
    const-class v0, Lcom/google/api/services/plusi/model/PlacePageLink;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
