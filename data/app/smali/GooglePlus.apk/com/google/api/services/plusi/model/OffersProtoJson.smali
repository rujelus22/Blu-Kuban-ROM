.class public final Lcom/google/api/services/plusi/model/OffersProtoJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "OffersProtoJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/OffersProto;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/OffersProtoJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/OffersProtoJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/OffersProtoJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/OffersProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/OffersProtoJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/OffersProto;

    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/plusi/model/ResultsRangeProtoJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "resultsRange"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/google/api/services/plusi/model/PlacePageOfferJson;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "offer"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lcom/google/api/services/plusi/model/NavbarProtoJson;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "navbar"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Lcom/google/api/services/plusi/model/StoryTitleJson;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "title"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-class v3, Lcom/google/api/services/plusi/model/UserLoyaltyInfoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "userLoyaltyInfo"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "desktopRedeemable"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-class v3, Lcom/google/api/services/plusi/model/ListingLoyaltyInfoJson;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "listingLoyaltyInfo"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "mobileRedeemable"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-class v3, Lcom/google/api/services/plusi/model/PlacePageLinkJson;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "moreLink"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/OffersProtoJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/OffersProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/OffersProtoJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/OffersProto;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 40
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/OffersProto;->resultsRange:Lcom/google/api/services/plusi/model/ResultsRangeProto;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/OffersProto;->offer:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/OffersProto;->navbar:Lcom/google/api/services/plusi/model/NavbarProto;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/OffersProto;->title:Lcom/google/api/services/plusi/model/StoryTitle;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/OffersProto;->userLoyaltyInfo:Lcom/google/api/services/plusi/model/UserLoyaltyInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/OffersProto;->desktopRedeemable:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/OffersProto;->listingLoyaltyInfo:Lcom/google/api/services/plusi/model/ListingLoyaltyInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/OffersProto;->mobileRedeemable:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/OffersProto;->moreLink:Lcom/google/api/services/plusi/model/PlacePageLink;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/OffersProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/OffersProtoJson;->getValues(Lcom/google/api/services/plusi/model/OffersProto;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/OffersProto;
    .registers 2

    .prologue
    .line 35
    new-instance v0, Lcom/google/api/services/plusi/model/OffersProto;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/OffersProto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/OffersProtoJson;->newInstance()Lcom/google/api/services/plusi/model/OffersProto;

    move-result-object v0

    return-object v0
.end method
