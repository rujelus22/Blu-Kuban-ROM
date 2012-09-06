.class public final Lcom/google/api/services/plusi/model/GoogleReviewProto;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "GoogleReviewProto.java"


# instance fields
.field public aspectDisliked:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public aspectLiked:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public author:Lcom/google/api/services/plusi/model/AuthorProto;

.field public businessCategory:Ljava/lang/String;

.field public businessCategoryId:Ljava/lang/String;

.field public businessTitle:Ljava/lang/String;

.field public fingerprint:Ljava/lang/String;

.field public flagInappropriate:Lcom/google/api/services/plusi/model/PlacePageLink;

.field public flagOwnerResponseInappropriate:Lcom/google/api/services/plusi/model/PlacePageLink;

.field public fullText:Ljava/lang/String;

.field public isBestEver:Ljava/lang/Boolean;

.field public isOwner:Ljava/lang/Boolean;

.field public languageCode:Ljava/lang/String;

.field public media:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/MediaProto;",
            ">;"
        }
    .end annotation
.end field

.field public metaAnnotationKeys:Lcom/google/api/services/plusi/model/GoogleReviewProtoMetaAnnotationKeys;

.field public numStarsE3:Ljava/lang/Integer;

.field public ownerResponse:Lcom/google/api/services/plusi/model/OwnerResponseProto;

.field public ownerResponseKeys:Lcom/google/api/services/plusi/model/GoogleReviewProtoMetaAnnotationKeys;

.field public photo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/MediaProtoThumbnail;",
            ">;"
        }
    .end annotation
.end field

.field public price:Lcom/google/api/services/plusi/model/PriceProto;

.field public priceLevel:Lcom/google/api/services/plusi/model/PriceLevelsProto;

.field public publishDate:Ljava/lang/String;

.field public snippet:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public time:Lcom/google/api/services/plusi/model/TimeProto;

.field public title:Ljava/lang/String;

.field public zagatAspectRatings:Lcom/google/api/services/plusi/model/ZagatAspectRatingsProto;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    const-class v0, Lcom/google/api/services/plusi/model/MediaProtoThumbnail;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 118
    const-class v0, Lcom/google/api/services/plusi/model/MediaProto;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 119
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
