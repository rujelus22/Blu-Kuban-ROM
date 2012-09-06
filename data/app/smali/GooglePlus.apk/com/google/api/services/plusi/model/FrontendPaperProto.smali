.class public final Lcom/google/api/services/plusi/model/FrontendPaperProto;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "FrontendPaperProto.java"


# instance fields
.field public address:Lcom/google/api/services/plusi/model/PlacePageAddressProto;

.field public attribution:Lcom/google/api/services/plusi/model/ListingAttributionProto;

.field public authorityPage:Lcom/google/api/services/plusi/model/AuthorityPageProto;

.field public category:Lcom/google/api/services/plusi/model/CategoryProto;

.field public circleActivity:Lcom/google/api/services/plusi/model/CirclePlaceActivityProto;

.field public cityblock:Lcom/google/api/services/plusi/model/CityblockProto;

.field public coverPhoto:Lcom/google/api/services/plusi/model/CoverPhotoProto;

.field public details:Lcom/google/api/services/plusi/model/DetailsProto;

.field public editStatus:Lcom/google/api/services/plusi/model/EditStatusProto;

.field public ei:Ljava/lang/String;

.field public followStatus:Lcom/google/api/services/plusi/model/FollowStatusProto;

.field public googlePlusSignupPromo:Lcom/google/api/services/plusi/model/GooglePlusSignupPromo;

.field public googleReviews:Lcom/google/api/services/plusi/model/GoogleReviewsProto;

.field public hierarchiesChildren:Lcom/google/api/services/plusi/model/HierarchiesChildrenProto;

.field public hierarchiesParent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/FrontendPaperProto;",
            ">;"
        }
    .end annotation
.end field

.field public hotelPrice:Lcom/google/api/services/plusi/model/HotelPriceProto;

.field public hotelRatingStars:Lcom/google/api/services/plusi/model/AttributeProto;

.field public justifications:Lcom/google/api/services/plusi/model/Justifications;

.field public knownForTerms:Lcom/google/api/services/plusi/model/KnownForTermsProto;

.field public livemaps:Lcom/google/api/services/plusi/model/LiveMapsProto;

.field public menuUrls:Lcom/google/api/services/plusi/model/AttributesProto;

.field public nearbyTransit:Lcom/google/api/services/plusi/model/NearbyTransitProto;

.field public offers:Lcom/google/api/services/plusi/model/OffersProto;

.field public openingHours:Lcom/google/api/services/plusi/model/OpeningHoursProto;

.field public ownerUpdates:Lcom/google/api/services/plusi/model/OwnerUpdatesProto;

.field public ownersDescription:Lcom/google/api/services/plusi/model/Description;

.field public phone:Lcom/google/api/services/plusi/model/PhoneProto;

.field public photoVideo:Lcom/google/api/services/plusi/model/PhotoVideoProto;

.field public placeInfo:Lcom/google/api/services/plusi/model/PlaceInfo;

.field public price:Lcom/google/api/services/plusi/model/AttributeProto;

.field public priceContinuous:Lcom/google/api/services/plusi/model/AttributeProto;

.field public providerBlocks:Lcom/google/api/services/plusi/model/ProviderBlocksProto;

.field public relatedPlaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/FrontendPaperProto;",
            ">;"
        }
    .end annotation
.end field

.field public reservationUrls:Lcom/google/api/services/plusi/model/AttributesProto;

.field public reviewsHeadline:Lcom/google/api/services/plusi/model/ReviewsHeadlineProto;

.field public sesameEditLinks:Lcom/google/api/services/plusi/model/EditLinksProto;

.field public starredItem:Lcom/google/api/services/plusi/model/StarredItemProto;

.field public staticMap:Lcom/google/api/services/plusi/model/StaticMapProto;

.field public structuredAddress:Lcom/google/api/services/plusi/model/StructuredAddressProto;

.field public title:Lcom/google/api/services/plusi/model/TitleProto;

.field public userActivity:Lcom/google/api/services/plusi/model/CirclePlaceActivityProto;

.field public ved:Ljava/lang/String;

.field public zagatAspectRatings:Lcom/google/api/services/plusi/model/ZagatAspectRatingsProto;

.field public zagatEditorialReview:Lcom/google/api/services/plusi/model/Description;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 171
    const-class v0, Lcom/google/api/services/plusi/model/FrontendPaperProto;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 223
    const-class v0, Lcom/google/api/services/plusi/model/FrontendPaperProto;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 224
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
