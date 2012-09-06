.class public final Lcom/google/api/services/plusi/model/ProductReviewJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "ProductReviewJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/ProductReview;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/ProductReviewJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/ProductReviewJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/ProductReviewJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/ProductReviewJson;->INSTANCE:Lcom/google/api/services/plusi/model/ProductReviewJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/ProductReview;

    const/16 v1, 0xf

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "bestRatingAsInt"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "productPrice"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "description"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lcom/google/api/services/plusi/model/EmbedsPersonJson;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "author"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "url"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "imageUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "ratingValueAsInt"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "displayUrl"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-class v3, Lcom/google/api/services/plusi/model/RatingJson;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "reviewRating"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "authorReviewPageUrl"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "productName"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "reviewTruncated"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "name"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/ProductReviewJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/ProductReviewJson;->INSTANCE:Lcom/google/api/services/plusi/model/ProductReviewJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/ProductReview;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 44
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ProductReview;->bestRatingAsInt:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ProductReview;->productPrice:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ProductReview;->description:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ProductReview;->author:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ProductReview;->url:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ProductReview;->imageUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ProductReview;->ratingValueAsInt:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ProductReview;->displayUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ProductReview;->reviewRating:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ProductReview;->authorReviewPageUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ProductReview;->productName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ProductReview;->reviewTruncated:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ProductReview;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/ProductReview;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/ProductReviewJson;->getValues(Lcom/google/api/services/plusi/model/ProductReview;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/ProductReview;
    .registers 2

    .prologue
    .line 39
    new-instance v0, Lcom/google/api/services/plusi/model/ProductReview;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/ProductReview;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/ProductReviewJson;->newInstance()Lcom/google/api/services/plusi/model/ProductReview;

    move-result-object v0

    return-object v0
.end method
