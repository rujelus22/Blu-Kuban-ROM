.class public final Lcom/google/api/services/plusi/model/GoogleReviewsProtoJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "GoogleReviewsProtoJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/GoogleReviewsProto;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/GoogleReviewsProtoJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/GoogleReviewsProtoJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/GoogleReviewsProtoJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/GoogleReviewsProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/GoogleReviewsProtoJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/GoogleReviewsProto;

    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/plusi/model/AggregatedReviewsProtoJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "stats"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/google/api/services/plusi/model/ResultsRangeProtoJson;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "resultsRange"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lcom/google/api/services/plusi/model/StoryTitleJson;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "title"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Lcom/google/api/services/plusi/model/NavbarProtoJson;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "navbar"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-class v3, Lcom/google/api/services/plusi/model/GoogleReviewProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "review"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-class v3, Lcom/google/api/services/plusi/model/ReviewsDataProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "reviewData"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-class v3, Lcom/google/api/services/plusi/model/PlacePageLinkJson;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "moreReviewsLink"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/GoogleReviewsProtoJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/GoogleReviewsProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/GoogleReviewsProtoJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/GoogleReviewsProto;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 38
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GoogleReviewsProto;->stats:Lcom/google/api/services/plusi/model/AggregatedReviewsProto;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GoogleReviewsProto;->resultsRange:Lcom/google/api/services/plusi/model/ResultsRangeProto;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GoogleReviewsProto;->title:Lcom/google/api/services/plusi/model/StoryTitle;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GoogleReviewsProto;->navbar:Lcom/google/api/services/plusi/model/NavbarProto;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GoogleReviewsProto;->review:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GoogleReviewsProto;->reviewData:Lcom/google/api/services/plusi/model/ReviewsDataProto;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GoogleReviewsProto;->moreReviewsLink:Lcom/google/api/services/plusi/model/PlacePageLink;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/GoogleReviewsProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/GoogleReviewsProtoJson;->getValues(Lcom/google/api/services/plusi/model/GoogleReviewsProto;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/GoogleReviewsProto;
    .registers 2

    .prologue
    .line 33
    new-instance v0, Lcom/google/api/services/plusi/model/GoogleReviewsProto;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/GoogleReviewsProto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/GoogleReviewsProtoJson;->newInstance()Lcom/google/api/services/plusi/model/GoogleReviewsProto;

    move-result-object v0

    return-object v0
.end method
