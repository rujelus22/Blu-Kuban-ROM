.class public final Lcom/google/api/services/plusi/model/GoogleReviewProtoJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "GoogleReviewProtoJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/GoogleReviewProto;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/GoogleReviewProtoJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/GoogleReviewProtoJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/GoogleReviewProtoJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/GoogleReviewProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/GoogleReviewProtoJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/GoogleReviewProto;

    const/16 v1, 0x27

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "languageCode"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/google/api/services/plusi/model/GoogleReviewProtoMetaAnnotationKeysJson;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "ownerResponseKeys"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lcom/google/api/services/plusi/model/MediaProtoThumbnailJson;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "photo"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "isOwner"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "aspectLiked"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "fullText"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-class v3, Lcom/google/api/services/plusi/model/PlacePageLinkJson;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "flagInappropriate"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-class v3, Lcom/google/api/services/plusi/model/GoogleReviewProtoMetaAnnotationKeysJson;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "metaAnnotationKeys"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-class v3, Lcom/google/api/services/plusi/model/AuthorProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "author"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-class v3, Lcom/google/api/services/plusi/model/MediaProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "media"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "snippet"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "businessCategoryId"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "status"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "businessTitle"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-class v3, Lcom/google/api/services/plusi/model/PriceProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "price"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-class v3, Lcom/google/api/services/plusi/model/ZagatAspectRatingsProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "zagatAspectRatings"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "publishDate"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "isBestEver"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "fingerprint"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "numStarsE3"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-class v3, Lcom/google/api/services/plusi/model/OwnerResponseProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "ownerResponse"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "businessCategory"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "title"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "aspectDisliked"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-class v3, Lcom/google/api/services/plusi/model/PlacePageLinkJson;

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "flagOwnerResponseInappropriate"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-class v3, Lcom/google/api/services/plusi/model/TimeProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "time"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-class v3, Lcom/google/api/services/plusi/model/PriceLevelsProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "priceLevel"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/GoogleReviewProtoJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/GoogleReviewProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/GoogleReviewProtoJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/GoogleReviewProto;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 58
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GoogleReviewProto;->languageCode:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GoogleReviewProto;->ownerResponseKeys:Lcom/google/api/services/plusi/model/GoogleReviewProtoMetaAnnotationKeys;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GoogleReviewProto;->photo:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GoogleReviewProto;->isOwner:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GoogleReviewProto;->aspectLiked:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GoogleReviewProto;->fullText:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GoogleReviewProto;->flagInappropriate:Lcom/google/api/services/plusi/model/PlacePageLink;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GoogleReviewProto;->metaAnnotationKeys:Lcom/google/api/services/plusi/model/GoogleReviewProtoMetaAnnotationKeys;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GoogleReviewProto;->author:Lcom/google/api/services/plusi/model/AuthorProto;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GoogleReviewProto;->media:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GoogleReviewProto;->snippet:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GoogleReviewProto;->businessCategoryId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GoogleReviewProto;->status:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GoogleReviewProto;->businessTitle:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GoogleReviewProto;->price:Lcom/google/api/services/plusi/model/PriceProto;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GoogleReviewProto;->zagatAspectRatings:Lcom/google/api/services/plusi/model/ZagatAspectRatingsProto;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GoogleReviewProto;->publishDate:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GoogleReviewProto;->isBestEver:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GoogleReviewProto;->fingerprint:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GoogleReviewProto;->numStarsE3:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GoogleReviewProto;->ownerResponse:Lcom/google/api/services/plusi/model/OwnerResponseProto;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GoogleReviewProto;->businessCategory:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GoogleReviewProto;->title:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GoogleReviewProto;->aspectDisliked:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GoogleReviewProto;->flagOwnerResponseInappropriate:Lcom/google/api/services/plusi/model/PlacePageLink;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GoogleReviewProto;->time:Lcom/google/api/services/plusi/model/TimeProto;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GoogleReviewProto;->priceLevel:Lcom/google/api/services/plusi/model/PriceLevelsProto;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/GoogleReviewProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/GoogleReviewProtoJson;->getValues(Lcom/google/api/services/plusi/model/GoogleReviewProto;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/GoogleReviewProto;
    .registers 2

    .prologue
    .line 53
    new-instance v0, Lcom/google/api/services/plusi/model/GoogleReviewProto;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/GoogleReviewProto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/GoogleReviewProtoJson;->newInstance()Lcom/google/api/services/plusi/model/GoogleReviewProto;

    move-result-object v0

    return-object v0
.end method
