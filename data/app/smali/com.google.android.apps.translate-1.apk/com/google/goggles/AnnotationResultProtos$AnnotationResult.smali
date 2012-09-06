.class public final Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AnnotationResultProtos.java"

# interfaces
.implements Lcom/google/goggles/AnnotationResultProtos$AnnotationResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/AnnotationResultProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnnotationResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;,
        Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;,
        Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformationOrBuilder;,
        Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;,
        Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformationOrBuilder;,
        Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;,
        Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformationOrBuilder;,
        Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;,
        Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformationOrBuilder;
    }
.end annotation


# static fields
.field public static final ANNOTATION_RESULT_FIELD_NUMBER:I = 0xef6c5f

.field public static final BOUNDING_BOX_FIELD_NUMBER:I = 0x1

.field public static final BOUNDING_BOX_REQUEST_ID_FIELD_NUMBER:I = 0xd

.field public static final CANONICAL_IMAGE_FIELD_NUMBER:I = 0x3

.field public static final CONTRIBUTION_INFO_FIELD_NUMBER:I = 0x17

.field public static final DIRECT_URL_FIELD_NUMBER:I = 0x14

.field public static final FACTS_FIELD_NUMBER:I = 0xf

.field public static final IS_AD_FIELD_NUMBER:I = 0x1a

.field public static final IS_WITHDRAWN_FIELD_NUMBER:I = 0x19

.field public static final LANGUAGE_FIELD_NUMBER:I = 0x6

.field public static final LAT_LNG_FIELD_NUMBER:I = 0x5

.field public static final LOCATION_TEXT_FIELD_NUMBER:I = 0x18

.field public static final MORE_LIKE_THIS_ACTION_FIELD_NUMBER:I = 0x1d

.field public static final MUSIC_INFO_FIELD_NUMBER:I = 0x1b

.field public static final PERSON_INFO_FIELD_NUMBER:I = 0x10

.field public static final PLACE_INFO_FIELD_NUMBER:I = 0x11

.field public static final PRODUCT_INFO_FIELD_NUMBER:I = 0x15

.field public static final RESULT_ID_FIELD_NUMBER:I = 0xc

.field public static final RESULT_URL_FIELD_NUMBER:I = 0xb

.field public static final SHARE_ACTION_FIELD_NUMBER:I = 0x1e

.field public static final SUBTITLE_FIELD_NUMBER:I = 0x8

.field public static final SUBTYPE_FIELD_NUMBER:I = 0xa

.field public static final TEXT_INFO_FIELD_NUMBER:I = 0x16

.field public static final TITLE_FIELD_NUMBER:I = 0x7

.field public static final TTS_DESCRIPTION_FIELD_NUMBER:I = 0x1c

.field public static final TYPE_FIELD_NUMBER:I = 0x9

.field public static final URLS_FIELD_NUMBER:I = 0x4

.field public static final URL_GROUPS_FIELD_NUMBER:I = 0xe

.field public static final WEBSEARCH_URL_FIELD_NUMBER:I = 0x13

.field public static final annotationResult:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/goggles/ResultProtos$Result;",
            "Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private boundingBoxRequestId_:Ljava/lang/Object;

.field private boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

.field private canonicalImage_:Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

.field private contributionInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

.field private directUrl_:Ljava/lang/Object;

.field private facts_:Lcom/google/goggles/FactsProtos$Facts;

.field private isAd_:Z

.field private isWithdrawn_:Z

.field private language_:Ljava/lang/Object;

.field private latLng_:Lcom/google/goggles/LatLngProtos$LatLng;

.field private locationText_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private moreLikeThisAction_:Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

.field private musicInfo_:Lcom/google/goggles/MusicInformationProtos$MusicInformation;

.field private personInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

.field private placeInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

.field private productInfo_:Lcom/google/goggles/ProductInformationProtos$ProductInformation;

.field private resultId_:Ljava/lang/Object;

.field private resultUrl_:Ljava/lang/Object;

.field private shareAction_:Lcom/google/goggles/ShareActionProtos$ShareAction;

.field private subtitle_:Ljava/lang/Object;

.field private subtype_:Ljava/lang/Object;

.field private textInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

.field private title_:Ljava/lang/Object;

.field private ttsDescription_:Ljava/lang/Object;

.field private type_:Ljava/lang/Object;

.field private urlGroups_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/UrlGroupProtos$UrlGroup;",
            ">;"
        }
    .end annotation
.end field

.field private urls_:Lcom/google/protobuf/LazyStringList;

.field private websearchUrl_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 5467
    new-instance v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->defaultInstance:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    .line 5468
    sget-object v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->defaultInstance:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    invoke-direct {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->initFields()V

    .line 5476
    invoke-static {}, Lcom/google/goggles/ResultProtos$Result;->getDefaultInstance()Lcom/google/goggles/ResultProtos$Result;

    move-result-object v0

    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v1

    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0xef6c5f

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->annotationResult:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 135
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3418
    iput-byte v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->memoizedIsInitialized:B

    .line 3546
    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->memoizedSerializedSize:I

    .line 136
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;Lcom/google/goggles/AnnotationResultProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;-><init>(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 137
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3418
    iput-byte v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->memoizedIsInitialized:B

    .line 3546
    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->memoizedSerializedSize:I

    .line 137
    return-void
.end method

.method static synthetic access$3902(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4002(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->subtitle_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4102(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->type_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4202(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->subtype_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4302(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->ttsDescription_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4402(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->resultUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4502(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->directUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4602(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    return-object p1
.end method

.method static synthetic access$4702(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->canonicalImage_:Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->urls_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->urls_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$4902(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Lcom/google/goggles/LatLngProtos$LatLng;)Lcom/google/goggles/LatLngProtos$LatLng;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->latLng_:Lcom/google/goggles/LatLngProtos$LatLng;

    return-object p1
.end method

.method static synthetic access$5002(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->locationText_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5102(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->language_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5200(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->urlGroups_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->urlGroups_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5302(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->websearchUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5402(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Lcom/google/goggles/FactsProtos$Facts;)Lcom/google/goggles/FactsProtos$Facts;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->facts_:Lcom/google/goggles/FactsProtos$Facts;

    return-object p1
.end method

.method static synthetic access$5502(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->personInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    return-object p1
.end method

.method static synthetic access$5602(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->placeInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    return-object p1
.end method

.method static synthetic access$5702(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Lcom/google/goggles/ProductInformationProtos$ProductInformation;)Lcom/google/goggles/ProductInformationProtos$ProductInformation;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->productInfo_:Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    return-object p1
.end method

.method static synthetic access$5802(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->textInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    return-object p1
.end method

.method static synthetic access$5902(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->contributionInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    return-object p1
.end method

.method static synthetic access$6002(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Lcom/google/goggles/MusicInformationProtos$MusicInformation;)Lcom/google/goggles/MusicInformationProtos$MusicInformation;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->musicInfo_:Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    return-object p1
.end method

.method static synthetic access$6102(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->isWithdrawn_:Z

    return p1
.end method

.method static synthetic access$6202(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->isAd_:Z

    return p1
.end method

.method static synthetic access$6302(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->resultId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6402(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->boundingBoxRequestId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6502(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;)Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->moreLikeThisAction_:Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    return-object p1
.end method

.method static synthetic access$6602(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Lcom/google/goggles/ShareActionProtos$ShareAction;)Lcom/google/goggles/ShareActionProtos$ShareAction;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->shareAction_:Lcom/google/goggles/ShareActionProtos$ShareAction;

    return-object p1
.end method

.method static synthetic access$6702(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 130
    iput p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    return p1
.end method

.method private getBoundingBoxRequestIdBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 3357
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->boundingBoxRequestId_:Ljava/lang/Object;

    .line 3358
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3359
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3361
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->boundingBoxRequestId_:Ljava/lang/Object;

    .line 3364
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method public static getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;
    .registers 1

    .prologue
    .line 141
    sget-object v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->defaultInstance:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    return-object v0
.end method

.method private getDirectUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 3042
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->directUrl_:Ljava/lang/Object;

    .line 3043
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3044
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3046
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->directUrl_:Ljava/lang/Object;

    .line 3049
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getLanguageBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 3150
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->language_:Ljava/lang/Object;

    .line 3151
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3152
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3154
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->language_:Ljava/lang/Object;

    .line 3157
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getLocationTextBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 3118
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->locationText_:Ljava/lang/Object;

    .line 3119
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3120
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3122
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->locationText_:Ljava/lang/Object;

    .line 3125
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getResultIdBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 3325
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->resultId_:Ljava/lang/Object;

    .line 3326
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3327
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3329
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->resultId_:Ljava/lang/Object;

    .line 3332
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getResultUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 3010
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->resultUrl_:Ljava/lang/Object;

    .line 3011
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3012
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3014
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->resultUrl_:Ljava/lang/Object;

    .line 3017
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getSubtitleBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 2882
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->subtitle_:Ljava/lang/Object;

    .line 2883
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2884
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2886
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->subtitle_:Ljava/lang/Object;

    .line 2889
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getSubtypeBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 2946
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->subtype_:Ljava/lang/Object;

    .line 2947
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2948
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2950
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->subtype_:Ljava/lang/Object;

    .line 2953
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getTitleBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 2850
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->title_:Ljava/lang/Object;

    .line 2851
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2852
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2854
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->title_:Ljava/lang/Object;

    .line 2857
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getTtsDescriptionBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 2978
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->ttsDescription_:Ljava/lang/Object;

    .line 2979
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2980
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2982
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->ttsDescription_:Ljava/lang/Object;

    .line 2985
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getTypeBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 2914
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->type_:Ljava/lang/Object;

    .line 2915
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2916
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2918
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->type_:Ljava/lang/Object;

    .line 2921
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getWebsearchUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 3203
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->websearchUrl_:Ljava/lang/Object;

    .line 3204
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3205
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3207
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->websearchUrl_:Ljava/lang/Object;

    .line 3210
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 3389
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->title_:Ljava/lang/Object;

    .line 3390
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->subtitle_:Ljava/lang/Object;

    .line 3391
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->type_:Ljava/lang/Object;

    .line 3392
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->subtype_:Ljava/lang/Object;

    .line 3393
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->ttsDescription_:Ljava/lang/Object;

    .line 3394
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->resultUrl_:Ljava/lang/Object;

    .line 3395
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->directUrl_:Ljava/lang/Object;

    .line 3396
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getDefaultInstance()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 3397
    invoke-static {}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->getDefaultInstance()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->canonicalImage_:Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    .line 3398
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->urls_:Lcom/google/protobuf/LazyStringList;

    .line 3399
    invoke-static {}, Lcom/google/goggles/LatLngProtos$LatLng;->getDefaultInstance()Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->latLng_:Lcom/google/goggles/LatLngProtos$LatLng;

    .line 3400
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->locationText_:Ljava/lang/Object;

    .line 3401
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->language_:Ljava/lang/Object;

    .line 3402
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->urlGroups_:Ljava/util/List;

    .line 3403
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->websearchUrl_:Ljava/lang/Object;

    .line 3404
    invoke-static {}, Lcom/google/goggles/FactsProtos$Facts;->getDefaultInstance()Lcom/google/goggles/FactsProtos$Facts;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->facts_:Lcom/google/goggles/FactsProtos$Facts;

    .line 3405
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->personInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    .line 3406
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->placeInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    .line 3407
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getDefaultInstance()Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->productInfo_:Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    .line 3408
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->textInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    .line 3409
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->contributionInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    .line 3410
    invoke-static {}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getDefaultInstance()Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->musicInfo_:Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    .line 3411
    iput-boolean v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->isWithdrawn_:Z

    .line 3412
    iput-boolean v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->isAd_:Z

    .line 3413
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->resultId_:Ljava/lang/Object;

    .line 3414
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->boundingBoxRequestId_:Ljava/lang/Object;

    .line 3415
    invoke-static {}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->getDefaultInstance()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->moreLikeThisAction_:Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    .line 3416
    invoke-static {}, Lcom/google/goggles/ShareActionProtos$ShareAction;->getDefaultInstance()Lcom/google/goggles/ShareActionProtos$ShareAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->shareAction_:Lcom/google/goggles/ShareActionProtos$ShareAction;

    .line 3417
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 1

    .prologue
    .line 3747
    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->create()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->access$3700()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 2
    .parameter

    .prologue
    .line 3750
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->mergeFrom(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3716
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    move-result-object v0

    .line 3717
    invoke-virtual {v0, p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3718
    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->access$3600(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v0

    .line 3720
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3727
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    move-result-object v0

    .line 3728
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3729
    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->access$3600(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v0

    .line 3731
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3683
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->access$3600(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3689
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->access$3600(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3737
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->access$3600(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3743
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->access$3600(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3705
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->access$3600(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3711
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->access$3600(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3694
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->access$3600(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3700
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->access$3600(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBoundingBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 2

    .prologue
    .line 3060
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    return-object v0
.end method

.method public getBoundingBoxRequestId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3343
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->boundingBoxRequestId_:Ljava/lang/Object;

    .line 3344
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 3345
    check-cast v0, Ljava/lang/String;

    .line 3353
    :goto_8
    return-object v0

    .line 3347
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3349
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3350
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3351
    iput-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->boundingBoxRequestId_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 3353
    goto :goto_8
.end method

.method public getCanonicalImage()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;
    .registers 2

    .prologue
    .line 3070
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->canonicalImage_:Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    return-object v0
.end method

.method public getContributionInfo()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;
    .registers 2

    .prologue
    .line 3271
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->contributionInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;
    .registers 2

    .prologue
    .line 145
    sget-object v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->defaultInstance:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getDefaultInstanceForType()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v0

    return-object v0
.end method

.method public getDirectUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3028
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->directUrl_:Ljava/lang/Object;

    .line 3029
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 3030
    check-cast v0, Ljava/lang/String;

    .line 3038
    :goto_8
    return-object v0

    .line 3032
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3034
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3035
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3036
    iput-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->directUrl_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 3038
    goto :goto_8
.end method

.method public getFacts()Lcom/google/goggles/FactsProtos$Facts;
    .registers 2

    .prologue
    .line 3221
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->facts_:Lcom/google/goggles/FactsProtos$Facts;

    return-object v0
.end method

.method public getIsAd()Z
    .registers 2

    .prologue
    .line 3301
    iget-boolean v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->isAd_:Z

    return v0
.end method

.method public getIsWithdrawn()Z
    .registers 2

    .prologue
    .line 3291
    iget-boolean v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->isWithdrawn_:Z

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3136
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->language_:Ljava/lang/Object;

    .line 3137
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 3138
    check-cast v0, Ljava/lang/String;

    .line 3146
    :goto_8
    return-object v0

    .line 3140
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3142
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3143
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3144
    iput-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->language_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 3146
    goto :goto_8
.end method

.method public getLatLng()Lcom/google/goggles/LatLngProtos$LatLng;
    .registers 2

    .prologue
    .line 3094
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->latLng_:Lcom/google/goggles/LatLngProtos$LatLng;

    return-object v0
.end method

.method public getLocationText()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3104
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->locationText_:Ljava/lang/Object;

    .line 3105
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 3106
    check-cast v0, Ljava/lang/String;

    .line 3114
    :goto_8
    return-object v0

    .line 3108
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3110
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3111
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3112
    iput-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->locationText_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 3114
    goto :goto_8
.end method

.method public getMoreLikeThisAction()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;
    .registers 2

    .prologue
    .line 3375
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->moreLikeThisAction_:Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    return-object v0
.end method

.method public getMusicInfo()Lcom/google/goggles/MusicInformationProtos$MusicInformation;
    .registers 2

    .prologue
    .line 3281
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->musicInfo_:Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    return-object v0
.end method

.method public getPersonInfo()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;
    .registers 2

    .prologue
    .line 3231
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->personInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    return-object v0
.end method

.method public getPlaceInfo()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;
    .registers 2

    .prologue
    .line 3241
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->placeInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    return-object v0
.end method

.method public getProductInfo()Lcom/google/goggles/ProductInformationProtos$ProductInformation;
    .registers 2

    .prologue
    .line 3251
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->productInfo_:Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    return-object v0
.end method

.method public getResultId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3311
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->resultId_:Ljava/lang/Object;

    .line 3312
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 3313
    check-cast v0, Ljava/lang/String;

    .line 3321
    :goto_8
    return-object v0

    .line 3315
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3317
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3318
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3319
    iput-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->resultId_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 3321
    goto :goto_8
.end method

.method public getResultUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2996
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->resultUrl_:Ljava/lang/Object;

    .line 2997
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 2998
    check-cast v0, Ljava/lang/String;

    .line 3006
    :goto_8
    return-object v0

    .line 3000
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3002
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3003
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3004
    iput-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->resultUrl_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 3006
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 10

    .prologue
    const v8, 0x8000

    const/16 v7, 0x10

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 3548
    iget v2, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->memoizedSerializedSize:I

    .line 3549
    const/4 v0, -0x1

    if-eq v2, v0, :cond_f

    .line 3670
    :goto_e
    return v2

    .line 3552
    :cond_f
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v2, 0x80

    if-ne v0, v2, :cond_21a

    .line 3553
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    invoke-static {v5, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v1

    .line 3556
    :goto_1e
    iget v2, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_2e

    .line 3557
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->canonicalImage_:Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2e
    move v2, v1

    move v3, v1

    .line 3562
    :goto_30
    iget-object v4, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->urls_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v2, v4, :cond_46

    .line 3563
    iget-object v4, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->urls_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v2}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v3, v4

    .line 3562
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 3566
    :cond_46
    add-int/2addr v0, v3

    .line 3567
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getUrlsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 3569
    iget v2, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_62

    .line 3570
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->latLng_:Lcom/google/goggles/LatLngProtos$LatLng;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3573
    :cond_62
    iget v2, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_74

    .line 3574
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3577
    :cond_74
    iget v2, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v5, :cond_84

    .line 3578
    const/4 v2, 0x7

    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3581
    :cond_84
    iget v2, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_94

    .line 3582
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getSubtitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3585
    :cond_94
    iget v2, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_a6

    .line 3586
    const/16 v2, 0x9

    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3589
    :cond_a6
    iget v2, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_b7

    .line 3590
    const/16 v2, 0xa

    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getSubtypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3593
    :cond_b7
    iget v2, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_ca

    .line 3594
    const/16 v2, 0xb

    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getResultUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3597
    :cond_ca
    iget v2, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    const/high16 v3, 0x40

    and-int/2addr v2, v3

    const/high16 v3, 0x40

    if-ne v2, v3, :cond_de

    .line 3598
    const/16 v2, 0xc

    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getResultIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3601
    :cond_de
    iget v2, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    const/high16 v3, 0x80

    and-int/2addr v2, v3

    const/high16 v3, 0x80

    if-ne v2, v3, :cond_f2

    .line 3602
    const/16 v2, 0xd

    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getBoundingBoxRequestIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_f2
    move v2, v0

    .line 3605
    :goto_f3
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->urlGroups_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_10e

    .line 3606
    const/16 v3, 0xe

    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->urlGroups_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    .line 3605
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_f3

    .line 3609
    :cond_10e
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_11f

    .line 3610
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->facts_:Lcom/google/goggles/FactsProtos$Facts;

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 3613
    :cond_11f
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_12e

    .line 3614
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->personInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    invoke-static {v7, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 3617
    :cond_12e
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/2addr v0, v8

    if-ne v0, v8, :cond_13c

    .line 3618
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->placeInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 3621
    :cond_13c
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_14f

    .line 3622
    const/16 v0, 0x13

    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getWebsearchUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    .line 3625
    :cond_14f
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_162

    .line 3626
    const/16 v0, 0x14

    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getDirectUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    .line 3629
    :cond_162
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    const/high16 v1, 0x1

    if-ne v0, v1, :cond_174

    .line 3630
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->productInfo_:Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 3633
    :cond_174
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    const/high16 v1, 0x2

    and-int/2addr v0, v1

    const/high16 v1, 0x2

    if-ne v0, v1, :cond_186

    .line 3634
    const/16 v0, 0x16

    iget-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->textInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 3637
    :cond_186
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    const/high16 v1, 0x4

    and-int/2addr v0, v1

    const/high16 v1, 0x4

    if-ne v0, v1, :cond_198

    .line 3638
    const/16 v0, 0x17

    iget-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->contributionInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 3641
    :cond_198
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_1ab

    .line 3642
    const/16 v0, 0x18

    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getLocationTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    .line 3645
    :cond_1ab
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    const/high16 v1, 0x10

    if-ne v0, v1, :cond_1bd

    .line 3646
    const/16 v0, 0x19

    iget-boolean v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->isWithdrawn_:Z

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 3649
    :cond_1bd
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    const/high16 v1, 0x20

    and-int/2addr v0, v1

    const/high16 v1, 0x20

    if-ne v0, v1, :cond_1cf

    .line 3650
    const/16 v0, 0x1a

    iget-boolean v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->isAd_:Z

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 3653
    :cond_1cf
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    const/high16 v1, 0x8

    and-int/2addr v0, v1

    const/high16 v1, 0x8

    if-ne v0, v1, :cond_1e1

    .line 3654
    const/16 v0, 0x1b

    iget-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->musicInfo_:Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 3657
    :cond_1e1
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-ne v0, v7, :cond_1f2

    .line 3658
    const/16 v0, 0x1c

    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getTtsDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    .line 3661
    :cond_1f2
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    const/high16 v1, 0x100

    and-int/2addr v0, v1

    const/high16 v1, 0x100

    if-ne v0, v1, :cond_204

    .line 3662
    const/16 v0, 0x1d

    iget-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->moreLikeThisAction_:Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 3665
    :cond_204
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    const/high16 v1, 0x200

    and-int/2addr v0, v1

    const/high16 v1, 0x200

    if-ne v0, v1, :cond_216

    .line 3666
    const/16 v0, 0x1e

    iget-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->shareAction_:Lcom/google/goggles/ShareActionProtos$ShareAction;

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 3669
    :cond_216
    iput v2, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->memoizedSerializedSize:I

    goto/16 :goto_e

    :cond_21a
    move v0, v1

    goto/16 :goto_1e
.end method

.method public getShareAction()Lcom/google/goggles/ShareActionProtos$ShareAction;
    .registers 2

    .prologue
    .line 3385
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->shareAction_:Lcom/google/goggles/ShareActionProtos$ShareAction;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2868
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->subtitle_:Ljava/lang/Object;

    .line 2869
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 2870
    check-cast v0, Ljava/lang/String;

    .line 2878
    :goto_8
    return-object v0

    .line 2872
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2874
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2875
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2876
    iput-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->subtitle_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 2878
    goto :goto_8
.end method

.method public getSubtype()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2932
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->subtype_:Ljava/lang/Object;

    .line 2933
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 2934
    check-cast v0, Ljava/lang/String;

    .line 2942
    :goto_8
    return-object v0

    .line 2936
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2938
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2939
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2940
    iput-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->subtype_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 2942
    goto :goto_8
.end method

.method public getTextInfo()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;
    .registers 2

    .prologue
    .line 3261
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->textInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2836
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->title_:Ljava/lang/Object;

    .line 2837
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 2838
    check-cast v0, Ljava/lang/String;

    .line 2846
    :goto_8
    return-object v0

    .line 2840
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2842
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2843
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2844
    iput-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->title_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 2846
    goto :goto_8
.end method

.method public getTtsDescription()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2964
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->ttsDescription_:Ljava/lang/Object;

    .line 2965
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 2966
    check-cast v0, Ljava/lang/String;

    .line 2974
    :goto_8
    return-object v0

    .line 2968
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2970
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2971
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2972
    iput-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->ttsDescription_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 2974
    goto :goto_8
.end method

.method public getType()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2900
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->type_:Ljava/lang/Object;

    .line 2901
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 2902
    check-cast v0, Ljava/lang/String;

    .line 2910
    :goto_8
    return-object v0

    .line 2904
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2906
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2907
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2908
    iput-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->type_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 2910
    goto :goto_8
.end method

.method public getUrlGroups(I)Lcom/google/goggles/UrlGroupProtos$UrlGroup;
    .registers 3
    .parameter

    .prologue
    .line 3175
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->urlGroups_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/UrlGroupProtos$UrlGroup;

    return-object v0
.end method

.method public getUrlGroupsCount()I
    .registers 2

    .prologue
    .line 3172
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->urlGroups_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUrlGroupsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/UrlGroupProtos$UrlGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3165
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->urlGroups_:Ljava/util/List;

    return-object v0
.end method

.method public getUrlGroupsOrBuilder(I)Lcom/google/goggles/UrlGroupProtos$UrlGroupOrBuilder;
    .registers 3
    .parameter

    .prologue
    .line 3179
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->urlGroups_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/UrlGroupProtos$UrlGroupOrBuilder;

    return-object v0
.end method

.method public getUrlGroupsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/goggles/UrlGroupProtos$UrlGroupOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3169
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->urlGroups_:Ljava/util/List;

    return-object v0
.end method

.method public getUrls(I)Ljava/lang/String;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3084
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->urls_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUrlsCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3081
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->urls_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getUrlsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3078
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->urls_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getWebsearchUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3189
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->websearchUrl_:Ljava/lang/Object;

    .line 3190
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 3191
    check-cast v0, Ljava/lang/String;

    .line 3199
    :goto_8
    return-object v0

    .line 3193
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3195
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3196
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3197
    iput-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->websearchUrl_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 3199
    goto :goto_8
.end method

.method public hasBoundingBox()Z
    .registers 3

    .prologue
    .line 3057
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasBoundingBoxRequestId()Z
    .registers 3

    .prologue
    const/high16 v1, 0x80

    .line 3340
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasCanonicalImage()Z
    .registers 3

    .prologue
    .line 3067
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasContributionInfo()Z
    .registers 3

    .prologue
    const/high16 v1, 0x4

    .line 3268
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasDirectUrl()Z
    .registers 3

    .prologue
    .line 3025
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasFacts()Z
    .registers 3

    .prologue
    .line 3218
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasIsAd()Z
    .registers 3

    .prologue
    const/high16 v1, 0x20

    .line 3298
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasIsWithdrawn()Z
    .registers 3

    .prologue
    const/high16 v1, 0x10

    .line 3288
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasLanguage()Z
    .registers 3

    .prologue
    .line 3133
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasLatLng()Z
    .registers 3

    .prologue
    .line 3091
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasLocationText()Z
    .registers 3

    .prologue
    .line 3101
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasMoreLikeThisAction()Z
    .registers 3

    .prologue
    const/high16 v1, 0x100

    .line 3372
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasMusicInfo()Z
    .registers 3

    .prologue
    const/high16 v1, 0x8

    .line 3278
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasPersonInfo()Z
    .registers 3

    .prologue
    .line 3228
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasPlaceInfo()Z
    .registers 3

    .prologue
    const v1, 0x8000

    .line 3238
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasProductInfo()Z
    .registers 3

    .prologue
    const/high16 v1, 0x1

    .line 3248
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasResultId()Z
    .registers 3

    .prologue
    const/high16 v1, 0x40

    .line 3308
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasResultUrl()Z
    .registers 3

    .prologue
    .line 2993
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasShareAction()Z
    .registers 3

    .prologue
    const/high16 v1, 0x200

    .line 3382
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasSubtitle()Z
    .registers 3

    .prologue
    .line 2865
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasSubtype()Z
    .registers 3

    .prologue
    .line 2929
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasTextInfo()Z
    .registers 3

    .prologue
    const/high16 v1, 0x2

    .line 3258
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasTitle()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2833
    iget v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasTtsDescription()Z
    .registers 3

    .prologue
    .line 2961
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasType()Z
    .registers 3

    .prologue
    .line 2897
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasWebsearchUrl()Z
    .registers 3

    .prologue
    .line 3186
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3420
    iget-byte v2, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->memoizedIsInitialized:B

    .line 3421
    const/4 v3, -0x1

    if-eq v2, v3, :cond_d

    if-ne v2, v0, :cond_b

    :goto_9
    move v1, v0

    .line 3454
    :goto_a
    return v1

    :cond_b
    move v0, v1

    .line 3421
    goto :goto_9

    .line 3423
    :cond_d
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasBoundingBox()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 3424
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getBoundingBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_20

    .line 3425
    iput-byte v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->memoizedIsInitialized:B

    goto :goto_a

    .line 3429
    :cond_20
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasCanonicalImage()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 3430
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getCanonicalImage()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_33

    .line 3431
    iput-byte v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->memoizedIsInitialized:B

    goto :goto_a

    .line 3435
    :cond_33
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasLatLng()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 3436
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getLatLng()Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/LatLngProtos$LatLng;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_46

    .line 3437
    iput-byte v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->memoizedIsInitialized:B

    goto :goto_a

    :cond_46
    move v2, v1

    .line 3441
    :goto_47
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getUrlGroupsCount()I

    move-result v3

    if-ge v2, v3, :cond_5d

    .line 3442
    invoke-virtual {p0, v2}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getUrlGroups(I)Lcom/google/goggles/UrlGroupProtos$UrlGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_5a

    .line 3443
    iput-byte v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->memoizedIsInitialized:B

    goto :goto_a

    .line 3441
    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 3447
    :cond_5d
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasTextInfo()Z

    move-result v2

    if-eqz v2, :cond_70

    .line 3448
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getTextInfo()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_70

    .line 3449
    iput-byte v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->memoizedIsInitialized:B

    goto :goto_a

    .line 3453
    :cond_70
    iput-byte v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->memoizedIsInitialized:B

    move v1, v0

    .line 3454
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 2

    .prologue
    .line 3748
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->newBuilderForType()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 2

    .prologue
    .line 3752
    invoke-static {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->newBuilder(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->toBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 3677
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x10

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 3459
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getSerializedSize()I

    .line 3460
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v2, 0x80

    if-ne v0, v2, :cond_17

    .line 3461
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3463
    :cond_17
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v2, 0x100

    if-ne v0, v2, :cond_25

    .line 3464
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->canonicalImage_:Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_25
    move v0, v1

    .line 3466
    :goto_26
    iget-object v2, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->urls_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3a

    .line 3467
    iget-object v2, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->urls_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3466
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 3469
    :cond_3a
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v2, 0x200

    if-ne v0, v2, :cond_48

    .line 3470
    const/4 v0, 0x5

    iget-object v2, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->latLng_:Lcom/google/goggles/LatLngProtos$LatLng;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3472
    :cond_48
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v2, 0x800

    if-ne v0, v2, :cond_58

    .line 3473
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3475
    :cond_58
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_66

    .line 3476
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3478
    :cond_66
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_74

    .line 3479
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getSubtitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3481
    :cond_74
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_83

    .line 3482
    const/16 v0, 0x9

    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3484
    :cond_83
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v5, :cond_92

    .line 3485
    const/16 v0, 0xa

    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getSubtypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3487
    :cond_92
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v2, 0x20

    if-ne v0, v2, :cond_a3

    .line 3488
    const/16 v0, 0xb

    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getResultUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3490
    :cond_a3
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    const/high16 v2, 0x40

    and-int/2addr v0, v2

    const/high16 v2, 0x40

    if-ne v0, v2, :cond_b5

    .line 3491
    const/16 v0, 0xc

    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getResultIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3493
    :cond_b5
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    const/high16 v2, 0x80

    and-int/2addr v0, v2

    const/high16 v2, 0x80

    if-ne v0, v2, :cond_c7

    .line 3494
    const/16 v0, 0xd

    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getBoundingBoxRequestIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3496
    :cond_c7
    :goto_c7
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->urlGroups_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_df

    .line 3497
    const/16 v2, 0xe

    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->urlGroups_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3496
    add-int/lit8 v1, v1, 0x1

    goto :goto_c7

    .line 3499
    :cond_df
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_ee

    .line 3500
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->facts_:Lcom/google/goggles/FactsProtos$Facts;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3502
    :cond_ee
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_fb

    .line 3503
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->personInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    invoke-virtual {p1, v6, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3505
    :cond_fb
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    const v1, 0x8000

    if-ne v0, v1, :cond_10d

    .line 3506
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->placeInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3508
    :cond_10d
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_11e

    .line 3509
    const/16 v0, 0x13

    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getWebsearchUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3511
    :cond_11e
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_12f

    .line 3512
    const/16 v0, 0x14

    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getDirectUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3514
    :cond_12f
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    const/high16 v1, 0x1

    if-ne v0, v1, :cond_13f

    .line 3515
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->productInfo_:Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3517
    :cond_13f
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    const/high16 v1, 0x2

    and-int/2addr v0, v1

    const/high16 v1, 0x2

    if-ne v0, v1, :cond_14f

    .line 3518
    const/16 v0, 0x16

    iget-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->textInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3520
    :cond_14f
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    const/high16 v1, 0x4

    and-int/2addr v0, v1

    const/high16 v1, 0x4

    if-ne v0, v1, :cond_15f

    .line 3521
    const/16 v0, 0x17

    iget-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->contributionInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3523
    :cond_15f
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_170

    .line 3524
    const/16 v0, 0x18

    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getLocationTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3526
    :cond_170
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    const/high16 v1, 0x10

    if-ne v0, v1, :cond_180

    .line 3527
    const/16 v0, 0x19

    iget-boolean v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->isWithdrawn_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 3529
    :cond_180
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    const/high16 v1, 0x20

    and-int/2addr v0, v1

    const/high16 v1, 0x20

    if-ne v0, v1, :cond_190

    .line 3530
    const/16 v0, 0x1a

    iget-boolean v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->isAd_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 3532
    :cond_190
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    const/high16 v1, 0x8

    and-int/2addr v0, v1

    const/high16 v1, 0x8

    if-ne v0, v1, :cond_1a0

    .line 3533
    const/16 v0, 0x1b

    iget-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->musicInfo_:Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3535
    :cond_1a0
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-ne v0, v6, :cond_1af

    .line 3536
    const/16 v0, 0x1c

    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getTtsDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3538
    :cond_1af
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    const/high16 v1, 0x100

    and-int/2addr v0, v1

    const/high16 v1, 0x100

    if-ne v0, v1, :cond_1bf

    .line 3539
    const/16 v0, 0x1d

    iget-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->moreLikeThisAction_:Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3541
    :cond_1bf
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I

    const/high16 v1, 0x200

    and-int/2addr v0, v1

    const/high16 v1, 0x200

    if-ne v0, v1, :cond_1cf

    .line 3542
    const/16 v0, 0x1e

    iget-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->shareAction_:Lcom/google/goggles/ShareActionProtos$ShareAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3544
    :cond_1cf
    return-void
.end method
