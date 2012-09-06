.class public final Lcom/google/api/services/plusi/model/OffersProto;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "OffersProto.java"


# instance fields
.field public desktopRedeemable:Ljava/lang/Integer;

.field public listingLoyaltyInfo:Lcom/google/api/services/plusi/model/ListingLoyaltyInfo;

.field public mobileRedeemable:Ljava/lang/Integer;

.field public moreLink:Lcom/google/api/services/plusi/model/PlacePageLink;

.field public navbar:Lcom/google/api/services/plusi/model/NavbarProto;

.field public offer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/PlacePageOffer;",
            ">;"
        }
    .end annotation
.end field

.field public resultsRange:Lcom/google/api/services/plusi/model/ResultsRangeProto;

.field public title:Lcom/google/api/services/plusi/model/StoryTitle;

.field public userLoyaltyInfo:Lcom/google/api/services/plusi/model/UserLoyaltyInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    const-class v0, Lcom/google/api/services/plusi/model/PlacePageOffer;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
