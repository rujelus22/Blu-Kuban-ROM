.class public final Lcom/google/api/services/plusi/model/PlacePageOfferJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "PlacePageOfferJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/PlacePageOffer;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/PlacePageOfferJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/PlacePageOfferJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/PlacePageOfferJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/PlacePageOfferJson;->INSTANCE:Lcom/google/api/services/plusi/model/PlacePageOfferJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/PlacePageOffer;

    const/16 v1, 0x14

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/plusi/model/DateJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "startDate"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/google/api/services/plusi/model/DateJson;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "endDate"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "imageUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "offerSummary"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "redemptionAvailability"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "requiredClientCapabilities"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-class v3, Lcom/google/api/services/plusi/model/DateJson;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "expiryDate"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "source"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-class v3, Lcom/google/api/services/plusi/model/PlacePageLinkJson;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "link"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "details"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "loyaltyTier"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "isRelevant"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "fullTitle"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "detailsSnippet"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "type"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "id"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/PlacePageOfferJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/PlacePageOfferJson;->INSTANCE:Lcom/google/api/services/plusi/model/PlacePageOfferJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/PlacePageOffer;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 47
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlacePageOffer;->startDate:Lcom/google/api/services/plusi/model/Date;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlacePageOffer;->endDate:Lcom/google/api/services/plusi/model/Date;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlacePageOffer;->imageUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlacePageOffer;->offerSummary:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlacePageOffer;->redemptionAvailability:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlacePageOffer;->requiredClientCapabilities:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlacePageOffer;->expiryDate:Lcom/google/api/services/plusi/model/Date;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlacePageOffer;->source:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlacePageOffer;->link:Lcom/google/api/services/plusi/model/PlacePageLink;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlacePageOffer;->details:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlacePageOffer;->loyaltyTier:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlacePageOffer;->isRelevant:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlacePageOffer;->fullTitle:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlacePageOffer;->detailsSnippet:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlacePageOffer;->type:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlacePageOffer;->id:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/PlacePageOffer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/PlacePageOfferJson;->getValues(Lcom/google/api/services/plusi/model/PlacePageOffer;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/PlacePageOffer;
    .registers 2

    .prologue
    .line 42
    new-instance v0, Lcom/google/api/services/plusi/model/PlacePageOffer;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/PlacePageOffer;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/PlacePageOfferJson;->newInstance()Lcom/google/api/services/plusi/model/PlacePageOffer;

    move-result-object v0

    return-object v0
.end method
