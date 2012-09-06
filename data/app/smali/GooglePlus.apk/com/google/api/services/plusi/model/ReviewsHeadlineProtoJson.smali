.class public final Lcom/google/api/services/plusi/model/ReviewsHeadlineProtoJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "ReviewsHeadlineProtoJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/ReviewsHeadlineProto;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/ReviewsHeadlineProtoJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/ReviewsHeadlineProtoJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/ReviewsHeadlineProtoJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/ReviewsHeadlineProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/ReviewsHeadlineProtoJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/ReviewsHeadlineProto;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "userRatingE3"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/google/api/services/plusi/model/AggregatedReviewsProtoJson;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "aggregatedReviews"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lcom/google/api/services/plusi/model/PlacePageLinkJson;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "moreLink"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 25
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/ReviewsHeadlineProtoJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/ReviewsHeadlineProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/ReviewsHeadlineProtoJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/ReviewsHeadlineProto;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ReviewsHeadlineProto;->userRatingE3:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ReviewsHeadlineProto;->aggregatedReviews:Lcom/google/api/services/plusi/model/AggregatedReviewsProto;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ReviewsHeadlineProto;->moreLink:Lcom/google/api/services/plusi/model/PlacePageLink;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/ReviewsHeadlineProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/ReviewsHeadlineProtoJson;->getValues(Lcom/google/api/services/plusi/model/ReviewsHeadlineProto;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/ReviewsHeadlineProto;
    .registers 2

    .prologue
    .line 29
    new-instance v0, Lcom/google/api/services/plusi/model/ReviewsHeadlineProto;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/ReviewsHeadlineProto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/ReviewsHeadlineProtoJson;->newInstance()Lcom/google/api/services/plusi/model/ReviewsHeadlineProto;

    move-result-object v0

    return-object v0
.end method
