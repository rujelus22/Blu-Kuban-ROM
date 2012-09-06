.class public final Lcom/google/api/services/plusi/model/GoogleReviewsProto;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "GoogleReviewsProto.java"


# instance fields
.field public moreReviewsLink:Lcom/google/api/services/plusi/model/PlacePageLink;

.field public navbar:Lcom/google/api/services/plusi/model/NavbarProto;

.field public resultsRange:Lcom/google/api/services/plusi/model/ResultsRangeProto;

.field public review:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/GoogleReviewProto;",
            ">;"
        }
    .end annotation
.end field

.field public reviewData:Lcom/google/api/services/plusi/model/ReviewsDataProto;

.field public stats:Lcom/google/api/services/plusi/model/AggregatedReviewsProto;

.field public title:Lcom/google/api/services/plusi/model/StoryTitle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 75
    const-class v0, Lcom/google/api/services/plusi/model/GoogleReviewProto;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 76
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
