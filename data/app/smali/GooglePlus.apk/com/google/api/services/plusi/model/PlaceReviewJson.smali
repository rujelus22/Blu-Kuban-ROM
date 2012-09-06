.class public final Lcom/google/api/services/plusi/model/PlaceReviewJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "PlaceReviewJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/PlaceReview;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/PlaceReviewJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/PlaceReviewJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/PlaceReviewJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/PlaceReviewJson;->INSTANCE:Lcom/google/api/services/plusi/model/PlaceReviewJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/PlaceReview;

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "name"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "dateModifiedMilliseconds"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "url"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "price"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lcom/google/api/services/plusi/model/EmbedsPersonJson;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "author"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "reviewBody"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Lcom/google/api/services/plusi/model/RatingJson;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "reviewRating"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "dateModified"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-class v3, Lcom/google/api/services/plusi/model/EmbedClientItemJson;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "itemReviewed"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "description"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 32
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/PlaceReviewJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/PlaceReviewJson;->INSTANCE:Lcom/google/api/services/plusi/model/PlaceReviewJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/PlaceReview;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 41
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlaceReview;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlaceReview;->dateModifiedMilliseconds:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlaceReview;->url:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlaceReview;->price:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlaceReview;->author:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlaceReview;->reviewBody:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlaceReview;->reviewRating:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlaceReview;->dateModified:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlaceReview;->itemReviewed:Lcom/google/api/services/plusi/model/EmbedClientItem;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlaceReview;->description:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/PlaceReview;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/PlaceReviewJson;->getValues(Lcom/google/api/services/plusi/model/PlaceReview;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/PlaceReview;
    .registers 2

    .prologue
    .line 36
    new-instance v0, Lcom/google/api/services/plusi/model/PlaceReview;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/PlaceReview;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/PlaceReviewJson;->newInstance()Lcom/google/api/services/plusi/model/PlaceReview;

    move-result-object v0

    return-object v0
.end method
