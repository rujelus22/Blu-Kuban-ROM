.class public final Lcom/google/api/services/plusi/model/ProviderBlockProto;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "ProviderBlockProto.java"


# instance fields
.field public aggregatedReviews:Lcom/google/api/services/plusi/model/AggregatedReviewsProto;

.field public award:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/AwardProto;",
            ">;"
        }
    .end annotation
.end field

.field public faviconUrl:Ljava/lang/String;

.field public hostName:Ljava/lang/String;

.field public originalIndex:Ljava/lang/Integer;

.field public realtimeUpdate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/RealtimeUpdateProto;",
            ">;"
        }
    .end annotation
.end field

.field public review:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/WebReviewProto;",
            ">;"
        }
    .end annotation
.end field

.field public title:Lcom/google/api/services/plusi/model/PlacePageLink;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    const-class v0, Lcom/google/api/services/plusi/model/WebReviewProto;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 77
    const-class v0, Lcom/google/api/services/plusi/model/AwardProto;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 117
    const-class v0, Lcom/google/api/services/plusi/model/RealtimeUpdateProto;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 118
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
