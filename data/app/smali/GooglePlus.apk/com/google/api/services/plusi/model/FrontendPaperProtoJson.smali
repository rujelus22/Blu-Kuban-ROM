.class public final Lcom/google/api/services/plusi/model/FrontendPaperProtoJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "FrontendPaperProtoJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/FrontendPaperProto;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/FrontendPaperProtoJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/FrontendPaperProtoJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/FrontendPaperProtoJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/FrontendPaperProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/FrontendPaperProtoJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/FrontendPaperProto;

    const/16 v1, 0x56

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/plusi/model/EditStatusProtoJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "editStatus"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/google/api/services/plusi/model/AttributeProtoJson;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "priceContinuous"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "ei"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Lcom/google/api/services/plusi/model/StaticMapProtoJson;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "staticMap"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Lcom/google/api/services/plusi/model/ProviderBlocksProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "providerBlocks"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-class v3, Lcom/google/api/services/plusi/model/PhoneProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "phone"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-class v3, Lcom/google/api/services/plusi/model/HotelPriceProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "hotelPrice"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-class v3, Lcom/google/api/services/plusi/model/JustificationsJson;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "justifications"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-class v3, Lcom/google/api/services/plusi/model/DescriptionJson;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "zagatEditorialReview"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-class v3, Lcom/google/api/services/plusi/model/OwnerUpdatesProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "ownerUpdates"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-class v3, Lcom/google/api/services/plusi/model/EditLinksProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "sesameEditLinks"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-class v3, Lcom/google/api/services/plusi/model/AttributesProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "menuUrls"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-class v3, Lcom/google/api/services/plusi/model/AttributeProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "hotelRatingStars"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-class v3, Lcom/google/api/services/plusi/model/CategoryProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "category"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-class v3, Lcom/google/api/services/plusi/model/KnownForTermsProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "knownForTerms"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-class v3, Lcom/google/api/services/plusi/model/TitleProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "title"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-class v3, Lcom/google/api/services/plusi/model/FrontendPaperProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "relatedPlaces"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-class v3, Lcom/google/api/services/plusi/model/PhotoVideoProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "photoVideo"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "ved"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-class v3, Lcom/google/api/services/plusi/model/NearbyTransitProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "nearbyTransit"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-class v3, Lcom/google/api/services/plusi/model/PlaceInfoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "placeInfo"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-class v3, Lcom/google/api/services/plusi/model/DetailsProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "details"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-class v3, Lcom/google/api/services/plusi/model/FrontendPaperProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "hierarchiesParent"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-class v3, Lcom/google/api/services/plusi/model/CityblockProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "cityblock"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-class v3, Lcom/google/api/services/plusi/model/StructuredAddressProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "structuredAddress"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-class v3, Lcom/google/api/services/plusi/model/GooglePlusSignupPromoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "googlePlusSignupPromo"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-class v3, Lcom/google/api/services/plusi/model/CirclePlaceActivityProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "userActivity"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-class v3, Lcom/google/api/services/plusi/model/AttributesProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "reservationUrls"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-class v3, Lcom/google/api/services/plusi/model/ListingAttributionProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "attribution"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-class v3, Lcom/google/api/services/plusi/model/LiveMapsProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "livemaps"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-class v3, Lcom/google/api/services/plusi/model/AttributeProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string v3, "price"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-class v3, Lcom/google/api/services/plusi/model/StarredItemProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string v3, "starredItem"

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-class v3, Lcom/google/api/services/plusi/model/FollowStatusProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "followStatus"

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-class v3, Lcom/google/api/services/plusi/model/PlacePageAddressProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x41

    const-string v3, "address"

    aput-object v3, v1, v2

    const/16 v2, 0x42

    const-class v3, Lcom/google/api/services/plusi/model/GoogleReviewsProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x43

    const-string v3, "googleReviews"

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-class v3, Lcom/google/api/services/plusi/model/ReviewsHeadlineProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x45

    const-string v3, "reviewsHeadline"

    aput-object v3, v1, v2

    const/16 v2, 0x46

    const-class v3, Lcom/google/api/services/plusi/model/HierarchiesChildrenProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x47

    const-string v3, "hierarchiesChildren"

    aput-object v3, v1, v2

    const/16 v2, 0x48

    const-class v3, Lcom/google/api/services/plusi/model/CirclePlaceActivityProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x49

    const-string v3, "circleActivity"

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    const-class v3, Lcom/google/api/services/plusi/model/AuthorityPageProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    const-string v3, "authorityPage"

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    const-class v3, Lcom/google/api/services/plusi/model/OffersProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    const-string v3, "offers"

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const-class v3, Lcom/google/api/services/plusi/model/DescriptionJson;

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    const-string v3, "ownersDescription"

    aput-object v3, v1, v2

    const/16 v2, 0x50

    const-class v3, Lcom/google/api/services/plusi/model/ZagatAspectRatingsProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x51

    const-string v3, "zagatAspectRatings"

    aput-object v3, v1, v2

    const/16 v2, 0x52

    const-class v3, Lcom/google/api/services/plusi/model/OpeningHoursProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x53

    const-string v3, "openingHours"

    aput-object v3, v1, v2

    const/16 v2, 0x54

    const-class v3, Lcom/google/api/services/plusi/model/CoverPhotoProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x55

    const-string v3, "coverPhoto"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/FrontendPaperProtoJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/FrontendPaperProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/FrontendPaperProtoJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/FrontendPaperProto;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 75
    const/16 v0, 0x2c

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->editStatus:Lcom/google/api/services/plusi/model/EditStatusProto;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->priceContinuous:Lcom/google/api/services/plusi/model/AttributeProto;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->ei:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->staticMap:Lcom/google/api/services/plusi/model/StaticMapProto;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->providerBlocks:Lcom/google/api/services/plusi/model/ProviderBlocksProto;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->phone:Lcom/google/api/services/plusi/model/PhoneProto;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->hotelPrice:Lcom/google/api/services/plusi/model/HotelPriceProto;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->justifications:Lcom/google/api/services/plusi/model/Justifications;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->zagatEditorialReview:Lcom/google/api/services/plusi/model/Description;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->ownerUpdates:Lcom/google/api/services/plusi/model/OwnerUpdatesProto;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->sesameEditLinks:Lcom/google/api/services/plusi/model/EditLinksProto;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->menuUrls:Lcom/google/api/services/plusi/model/AttributesProto;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->hotelRatingStars:Lcom/google/api/services/plusi/model/AttributeProto;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->category:Lcom/google/api/services/plusi/model/CategoryProto;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->knownForTerms:Lcom/google/api/services/plusi/model/KnownForTermsProto;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->title:Lcom/google/api/services/plusi/model/TitleProto;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->relatedPlaces:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->photoVideo:Lcom/google/api/services/plusi/model/PhotoVideoProto;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->ved:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->nearbyTransit:Lcom/google/api/services/plusi/model/NearbyTransitProto;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->placeInfo:Lcom/google/api/services/plusi/model/PlaceInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->details:Lcom/google/api/services/plusi/model/DetailsProto;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->hierarchiesParent:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->cityblock:Lcom/google/api/services/plusi/model/CityblockProto;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->structuredAddress:Lcom/google/api/services/plusi/model/StructuredAddressProto;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->googlePlusSignupPromo:Lcom/google/api/services/plusi/model/GooglePlusSignupPromo;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->userActivity:Lcom/google/api/services/plusi/model/CirclePlaceActivityProto;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->reservationUrls:Lcom/google/api/services/plusi/model/AttributesProto;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->attribution:Lcom/google/api/services/plusi/model/ListingAttributionProto;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->livemaps:Lcom/google/api/services/plusi/model/LiveMapsProto;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->price:Lcom/google/api/services/plusi/model/AttributeProto;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->starredItem:Lcom/google/api/services/plusi/model/StarredItemProto;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->followStatus:Lcom/google/api/services/plusi/model/FollowStatusProto;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->address:Lcom/google/api/services/plusi/model/PlacePageAddressProto;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->googleReviews:Lcom/google/api/services/plusi/model/GoogleReviewsProto;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->reviewsHeadline:Lcom/google/api/services/plusi/model/ReviewsHeadlineProto;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->hierarchiesChildren:Lcom/google/api/services/plusi/model/HierarchiesChildrenProto;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->circleActivity:Lcom/google/api/services/plusi/model/CirclePlaceActivityProto;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->authorityPage:Lcom/google/api/services/plusi/model/AuthorityPageProto;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->offers:Lcom/google/api/services/plusi/model/OffersProto;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->ownersDescription:Lcom/google/api/services/plusi/model/Description;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->zagatAspectRatings:Lcom/google/api/services/plusi/model/ZagatAspectRatingsProto;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->openingHours:Lcom/google/api/services/plusi/model/OpeningHoursProto;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->coverPhoto:Lcom/google/api/services/plusi/model/CoverPhotoProto;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/FrontendPaperProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/FrontendPaperProtoJson;->getValues(Lcom/google/api/services/plusi/model/FrontendPaperProto;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/FrontendPaperProto;
    .registers 2

    .prologue
    .line 70
    new-instance v0, Lcom/google/api/services/plusi/model/FrontendPaperProto;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/FrontendPaperProto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/FrontendPaperProtoJson;->newInstance()Lcom/google/api/services/plusi/model/FrontendPaperProto;

    move-result-object v0

    return-object v0
.end method
