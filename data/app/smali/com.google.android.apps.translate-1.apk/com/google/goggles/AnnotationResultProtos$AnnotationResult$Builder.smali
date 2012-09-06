.class public final Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AnnotationResultProtos.java"

# interfaces
.implements Lcom/google/goggles/AnnotationResultProtos$AnnotationResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;",
        "Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;",
        ">;",
        "Lcom/google/goggles/AnnotationResultProtos$AnnotationResultOrBuilder;"
    }
.end annotation


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
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 3759
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 4329
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->title_:Ljava/lang/Object;

    .line 4365
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->subtitle_:Ljava/lang/Object;

    .line 4401
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->type_:Ljava/lang/Object;

    .line 4437
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->subtype_:Ljava/lang/Object;

    .line 4473
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->ttsDescription_:Ljava/lang/Object;

    .line 4509
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->resultUrl_:Ljava/lang/Object;

    .line 4545
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->directUrl_:Ljava/lang/Object;

    .line 4581
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getDefaultInstance()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 4624
    invoke-static {}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->getDefaultInstance()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->canonicalImage_:Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    .line 4667
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->urls_:Lcom/google/protobuf/LazyStringList;

    .line 4723
    invoke-static {}, Lcom/google/goggles/LatLngProtos$LatLng;->getDefaultInstance()Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->latLng_:Lcom/google/goggles/LatLngProtos$LatLng;

    .line 4766
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->locationText_:Ljava/lang/Object;

    .line 4802
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->language_:Ljava/lang/Object;

    .line 4838
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->urlGroups_:Ljava/util/List;

    .line 4927
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->websearchUrl_:Ljava/lang/Object;

    .line 4963
    invoke-static {}, Lcom/google/goggles/FactsProtos$Facts;->getDefaultInstance()Lcom/google/goggles/FactsProtos$Facts;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->facts_:Lcom/google/goggles/FactsProtos$Facts;

    .line 5006
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->personInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    .line 5049
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->placeInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    .line 5092
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getDefaultInstance()Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->productInfo_:Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    .line 5135
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->textInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    .line 5178
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->contributionInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    .line 5221
    invoke-static {}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getDefaultInstance()Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->musicInfo_:Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    .line 5306
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->resultId_:Ljava/lang/Object;

    .line 5342
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->boundingBoxRequestId_:Ljava/lang/Object;

    .line 5378
    invoke-static {}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->getDefaultInstance()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->moreLikeThisAction_:Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    .line 5421
    invoke-static {}, Lcom/google/goggles/ShareActionProtos$ShareAction;->getDefaultInstance()Lcom/google/goggles/ShareActionProtos$ShareAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->shareAction_:Lcom/google/goggles/ShareActionProtos$ShareAction;

    .line 3760
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->maybeForceBuilderInitialization()V

    .line 3761
    return-void
.end method

.method static synthetic access$3600(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3754
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 1

    .prologue
    .line 3754
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->create()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3848
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->buildPartial()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v0

    .line 3849
    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 3850
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3853
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 1

    .prologue
    .line 3766
    new-instance v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    invoke-direct {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;-><init>()V

    return-object v0
.end method

.method private ensureUrlGroupsIsMutable()V
    .registers 3

    .prologue
    .line 4841
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-eq v0, v1, :cond_17

    .line 4842
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->urlGroups_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->urlGroups_:Ljava/util/List;

    .line 4843
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4845
    :cond_17
    return-void
.end method

.method private ensureUrlsIsMutable()V
    .registers 3

    .prologue
    .line 4669
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-eq v0, v1, :cond_17

    .line 4670
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->urls_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->urls_:Lcom/google/protobuf/LazyStringList;

    .line 4671
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4673
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 3764
    return-void
.end method


# virtual methods
.method public addAllUrlGroups(Ljava/lang/Iterable;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/goggles/UrlGroupProtos$UrlGroup;",
            ">;)",
            "Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;"
        }
    .end annotation

    .prologue
    .line 4908
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->ensureUrlGroupsIsMutable()V

    .line 4909
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->urlGroups_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4911
    return-object p0
.end method

.method public addAllUrls(Ljava/lang/Iterable;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4705
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->ensureUrlsIsMutable()V

    .line 4706
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->urls_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4708
    return-object p0
.end method

.method public addUrlGroups(ILcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 4901
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->ensureUrlGroupsIsMutable()V

    .line 4902
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->urlGroups_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->build()Lcom/google/goggles/UrlGroupProtos$UrlGroup;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4904
    return-object p0
.end method

.method public addUrlGroups(ILcom/google/goggles/UrlGroupProtos$UrlGroup;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 4884
    if-nez p2, :cond_8

    .line 4885
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4887
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->ensureUrlGroupsIsMutable()V

    .line 4888
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->urlGroups_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4890
    return-object p0
.end method

.method public addUrlGroups(Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 4
    .parameter

    .prologue
    .line 4894
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->ensureUrlGroupsIsMutable()V

    .line 4895
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->urlGroups_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->build()Lcom/google/goggles/UrlGroupProtos$UrlGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4897
    return-object p0
.end method

.method public addUrlGroups(Lcom/google/goggles/UrlGroupProtos$UrlGroup;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 3
    .parameter

    .prologue
    .line 4874
    if-nez p1, :cond_8

    .line 4875
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4877
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->ensureUrlGroupsIsMutable()V

    .line 4878
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->urlGroups_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4880
    return-object p0
.end method

.method public addUrls(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4695
    if-nez p1, :cond_8

    .line 4696
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4698
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->ensureUrlsIsMutable()V

    .line 4699
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->urls_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 4701
    return-object p0
.end method

.method addUrls(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 4717
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->ensureUrlsIsMutable()V

    .line 4718
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->urls_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 4720
    return-void
.end method

.method public build()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;
    .registers 3

    .prologue
    .line 3839
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->buildPartial()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v0

    .line 3840
    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 3841
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 3843
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3754
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->build()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;
    .registers 11

    .prologue
    const/high16 v9, 0x8

    const/high16 v8, 0x4

    const/high16 v7, 0x2

    const/high16 v6, 0x1

    const v5, 0x8000

    .line 3857
    new-instance v1, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;-><init>(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;Lcom/google/goggles/AnnotationResultProtos$1;)V

    .line 3858
    iget v2, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 3859
    const/4 v0, 0x0

    .line 3860
    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1a

    .line 3861
    const/4 v0, 0x1

    .line 3863
    :cond_1a
    iget-object v3, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->title_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->title_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->access$3902(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3864
    and-int/lit8 v3, v2, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_26

    .line 3865
    or-int/lit8 v0, v0, 0x2

    .line 3867
    :cond_26
    iget-object v3, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->subtitle_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->subtitle_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->access$4002(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3868
    and-int/lit8 v3, v2, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_32

    .line 3869
    or-int/lit8 v0, v0, 0x4

    .line 3871
    :cond_32
    iget-object v3, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->type_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->type_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->access$4102(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3872
    and-int/lit8 v3, v2, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3f

    .line 3873
    or-int/lit8 v0, v0, 0x8

    .line 3875
    :cond_3f
    iget-object v3, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->subtype_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->subtype_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->access$4202(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3876
    and-int/lit8 v3, v2, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4c

    .line 3877
    or-int/lit8 v0, v0, 0x10

    .line 3879
    :cond_4c
    iget-object v3, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->ttsDescription_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->ttsDescription_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->access$4302(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3880
    and-int/lit8 v3, v2, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_59

    .line 3881
    or-int/lit8 v0, v0, 0x20

    .line 3883
    :cond_59
    iget-object v3, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->resultUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->resultUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->access$4402(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3884
    and-int/lit8 v3, v2, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_66

    .line 3885
    or-int/lit8 v0, v0, 0x40

    .line 3887
    :cond_66
    iget-object v3, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->directUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->directUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->access$4502(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3888
    and-int/lit16 v3, v2, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_73

    .line 3889
    or-int/lit16 v0, v0, 0x80

    .line 3891
    :cond_73
    iget-object v3, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    invoke-static {v1, v3}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->access$4602(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 3892
    and-int/lit16 v3, v2, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_80

    .line 3893
    or-int/lit16 v0, v0, 0x100

    .line 3895
    :cond_80
    iget-object v3, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->canonicalImage_:Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->canonicalImage_:Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;
    invoke-static {v1, v3}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->access$4702(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    .line 3896
    iget v3, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9c

    .line 3897
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->urls_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->urls_:Lcom/google/protobuf/LazyStringList;

    .line 3899
    iget v3, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x201

    iput v3, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 3901
    :cond_9c
    iget-object v3, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->urls_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->urls_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->access$4802(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 3902
    and-int/lit16 v3, v2, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a9

    .line 3903
    or-int/lit16 v0, v0, 0x200

    .line 3905
    :cond_a9
    iget-object v3, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->latLng_:Lcom/google/goggles/LatLngProtos$LatLng;

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->latLng_:Lcom/google/goggles/LatLngProtos$LatLng;
    invoke-static {v1, v3}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->access$4902(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Lcom/google/goggles/LatLngProtos$LatLng;)Lcom/google/goggles/LatLngProtos$LatLng;

    .line 3906
    and-int/lit16 v3, v2, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b6

    .line 3907
    or-int/lit16 v0, v0, 0x400

    .line 3909
    :cond_b6
    iget-object v3, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->locationText_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->locationText_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->access$5002(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3910
    and-int/lit16 v3, v2, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c3

    .line 3911
    or-int/lit16 v0, v0, 0x800

    .line 3913
    :cond_c3
    iget-object v3, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->language_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->language_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->access$5102(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3914
    iget v3, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_de

    .line 3915
    iget-object v3, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->urlGroups_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->urlGroups_:Ljava/util/List;

    .line 3916
    iget v3, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x2001

    iput v3, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 3918
    :cond_de
    iget-object v3, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->urlGroups_:Ljava/util/List;

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->urlGroups_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->access$5202(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Ljava/util/List;)Ljava/util/List;

    .line 3919
    and-int/lit16 v3, v2, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_eb

    .line 3920
    or-int/lit16 v0, v0, 0x1000

    .line 3922
    :cond_eb
    iget-object v3, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->websearchUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->websearchUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->access$5302(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3923
    and-int v3, v2, v5

    if-ne v3, v5, :cond_f6

    .line 3924
    or-int/lit16 v0, v0, 0x2000

    .line 3926
    :cond_f6
    iget-object v3, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->facts_:Lcom/google/goggles/FactsProtos$Facts;

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->facts_:Lcom/google/goggles/FactsProtos$Facts;
    invoke-static {v1, v3}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->access$5402(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Lcom/google/goggles/FactsProtos$Facts;)Lcom/google/goggles/FactsProtos$Facts;

    .line 3927
    and-int v3, v2, v6

    if-ne v3, v6, :cond_101

    .line 3928
    or-int/lit16 v0, v0, 0x4000

    .line 3930
    :cond_101
    iget-object v3, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->personInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->personInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;
    invoke-static {v1, v3}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->access$5502(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    .line 3931
    and-int v3, v2, v7

    if-ne v3, v7, :cond_10b

    .line 3932
    or-int/2addr v0, v5

    .line 3934
    :cond_10b
    iget-object v3, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->placeInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->placeInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;
    invoke-static {v1, v3}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->access$5602(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    .line 3935
    and-int v3, v2, v8

    if-ne v3, v8, :cond_115

    .line 3936
    or-int/2addr v0, v6

    .line 3938
    :cond_115
    iget-object v3, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->productInfo_:Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->productInfo_:Lcom/google/goggles/ProductInformationProtos$ProductInformation;
    invoke-static {v1, v3}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->access$5702(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Lcom/google/goggles/ProductInformationProtos$ProductInformation;)Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    .line 3939
    and-int v3, v2, v9

    if-ne v3, v9, :cond_11f

    .line 3940
    or-int/2addr v0, v7

    .line 3942
    :cond_11f
    iget-object v3, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->textInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->textInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;
    invoke-static {v1, v3}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->access$5802(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    .line 3943
    const/high16 v3, 0x10

    and-int/2addr v3, v2

    const/high16 v4, 0x10

    if-ne v3, v4, :cond_12c

    .line 3944
    or-int/2addr v0, v8

    .line 3946
    :cond_12c
    iget-object v3, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->contributionInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->contributionInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;
    invoke-static {v1, v3}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->access$5902(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    .line 3947
    const/high16 v3, 0x20

    and-int/2addr v3, v2

    const/high16 v4, 0x20

    if-ne v3, v4, :cond_139

    .line 3948
    or-int/2addr v0, v9

    .line 3950
    :cond_139
    iget-object v3, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->musicInfo_:Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->musicInfo_:Lcom/google/goggles/MusicInformationProtos$MusicInformation;
    invoke-static {v1, v3}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->access$6002(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Lcom/google/goggles/MusicInformationProtos$MusicInformation;)Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    .line 3951
    const/high16 v3, 0x40

    and-int/2addr v3, v2

    const/high16 v4, 0x40

    if-ne v3, v4, :cond_148

    .line 3952
    const/high16 v3, 0x10

    or-int/2addr v0, v3

    .line 3954
    :cond_148
    iget-boolean v3, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->isWithdrawn_:Z

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->isWithdrawn_:Z
    invoke-static {v1, v3}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->access$6102(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Z)Z

    .line 3955
    const/high16 v3, 0x80

    and-int/2addr v3, v2

    const/high16 v4, 0x80

    if-ne v3, v4, :cond_157

    .line 3956
    const/high16 v3, 0x20

    or-int/2addr v0, v3

    .line 3958
    :cond_157
    iget-boolean v3, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->isAd_:Z

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->isAd_:Z
    invoke-static {v1, v3}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->access$6202(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Z)Z

    .line 3959
    const/high16 v3, 0x100

    and-int/2addr v3, v2

    const/high16 v4, 0x100

    if-ne v3, v4, :cond_166

    .line 3960
    const/high16 v3, 0x40

    or-int/2addr v0, v3

    .line 3962
    :cond_166
    iget-object v3, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->resultId_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->resultId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->access$6302(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3963
    const/high16 v3, 0x200

    and-int/2addr v3, v2

    const/high16 v4, 0x200

    if-ne v3, v4, :cond_175

    .line 3964
    const/high16 v3, 0x80

    or-int/2addr v0, v3

    .line 3966
    :cond_175
    iget-object v3, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->boundingBoxRequestId_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->boundingBoxRequestId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->access$6402(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3967
    const/high16 v3, 0x400

    and-int/2addr v3, v2

    const/high16 v4, 0x400

    if-ne v3, v4, :cond_184

    .line 3968
    const/high16 v3, 0x100

    or-int/2addr v0, v3

    .line 3970
    :cond_184
    iget-object v3, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->moreLikeThisAction_:Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->moreLikeThisAction_:Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;
    invoke-static {v1, v3}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->access$6502(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;)Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    .line 3971
    const/high16 v3, 0x800

    and-int/2addr v2, v3

    const/high16 v3, 0x800

    if-ne v2, v3, :cond_193

    .line 3972
    const/high16 v2, 0x200

    or-int/2addr v0, v2

    .line 3974
    :cond_193
    iget-object v2, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->shareAction_:Lcom/google/goggles/ShareActionProtos$ShareAction;

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->shareAction_:Lcom/google/goggles/ShareActionProtos$ShareAction;
    invoke-static {v1, v2}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->access$6602(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Lcom/google/goggles/ShareActionProtos$ShareAction;)Lcom/google/goggles/ShareActionProtos$ShareAction;

    .line 3975
    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->bitField0_:I
    invoke-static {v1, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->access$6702(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;I)I

    .line 3976
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3754
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->buildPartial()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3770
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 3771
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->title_:Ljava/lang/Object;

    .line 3772
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 3773
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->subtitle_:Ljava/lang/Object;

    .line 3774
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 3775
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->type_:Ljava/lang/Object;

    .line 3776
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 3777
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->subtype_:Ljava/lang/Object;

    .line 3778
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 3779
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->ttsDescription_:Ljava/lang/Object;

    .line 3780
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 3781
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->resultUrl_:Ljava/lang/Object;

    .line 3782
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 3783
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->directUrl_:Ljava/lang/Object;

    .line 3784
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 3785
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getDefaultInstance()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 3786
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 3787
    invoke-static {}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->getDefaultInstance()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->canonicalImage_:Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    .line 3788
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 3789
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->urls_:Lcom/google/protobuf/LazyStringList;

    .line 3790
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 3791
    invoke-static {}, Lcom/google/goggles/LatLngProtos$LatLng;->getDefaultInstance()Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->latLng_:Lcom/google/goggles/LatLngProtos$LatLng;

    .line 3792
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 3793
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->locationText_:Ljava/lang/Object;

    .line 3794
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 3795
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->language_:Ljava/lang/Object;

    .line 3796
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 3797
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->urlGroups_:Ljava/util/List;

    .line 3798
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 3799
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->websearchUrl_:Ljava/lang/Object;

    .line 3800
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 3801
    invoke-static {}, Lcom/google/goggles/FactsProtos$Facts;->getDefaultInstance()Lcom/google/goggles/FactsProtos$Facts;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->facts_:Lcom/google/goggles/FactsProtos$Facts;

    .line 3802
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 3803
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->personInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    .line 3804
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 3805
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->placeInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    .line 3806
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 3807
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getDefaultInstance()Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->productInfo_:Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    .line 3808
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 3809
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->textInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    .line 3810
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 3811
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->contributionInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    .line 3812
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 3813
    invoke-static {}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getDefaultInstance()Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->musicInfo_:Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    .line 3814
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 3815
    iput-boolean v2, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->isWithdrawn_:Z

    .line 3816
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 3817
    iput-boolean v2, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->isAd_:Z

    .line 3818
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 3819
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->resultId_:Ljava/lang/Object;

    .line 3820
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 3821
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->boundingBoxRequestId_:Ljava/lang/Object;

    .line 3822
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 3823
    invoke-static {}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->getDefaultInstance()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->moreLikeThisAction_:Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    .line 3824
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 3825
    invoke-static {}, Lcom/google/goggles/ShareActionProtos$ShareAction;->getDefaultInstance()Lcom/google/goggles/ShareActionProtos$ShareAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->shareAction_:Lcom/google/goggles/ShareActionProtos$ShareAction;

    .line 3826
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 3827
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3754
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->clear()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3754
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->clear()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBoundingBox()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 2

    .prologue
    .line 4617
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getDefaultInstance()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 4619
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4620
    return-object p0
.end method

.method public clearBoundingBoxRequestId()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 3

    .prologue
    .line 5366
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 5367
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getBoundingBoxRequestId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->boundingBoxRequestId_:Ljava/lang/Object;

    .line 5369
    return-object p0
.end method

.method public clearCanonicalImage()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 2

    .prologue
    .line 4660
    invoke-static {}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->getDefaultInstance()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->canonicalImage_:Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    .line 4662
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4663
    return-object p0
.end method

.method public clearContributionInfo()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 3

    .prologue
    .line 5214
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->contributionInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    .line 5216
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 5217
    return-object p0
.end method

.method public clearDirectUrl()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 2

    .prologue
    .line 4569
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4570
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getDirectUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->directUrl_:Ljava/lang/Object;

    .line 4572
    return-object p0
.end method

.method public clearFacts()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 3

    .prologue
    .line 4999
    invoke-static {}, Lcom/google/goggles/FactsProtos$Facts;->getDefaultInstance()Lcom/google/goggles/FactsProtos$Facts;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->facts_:Lcom/google/goggles/FactsProtos$Facts;

    .line 5001
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 5002
    return-object p0
.end method

.method public clearIsAd()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 3

    .prologue
    .line 5299
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 5300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->isAd_:Z

    .line 5302
    return-object p0
.end method

.method public clearIsWithdrawn()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 3

    .prologue
    .line 5278
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 5279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->isWithdrawn_:Z

    .line 5281
    return-object p0
.end method

.method public clearLanguage()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 2

    .prologue
    .line 4826
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4827
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->language_:Ljava/lang/Object;

    .line 4829
    return-object p0
.end method

.method public clearLatLng()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 2

    .prologue
    .line 4759
    invoke-static {}, Lcom/google/goggles/LatLngProtos$LatLng;->getDefaultInstance()Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->latLng_:Lcom/google/goggles/LatLngProtos$LatLng;

    .line 4761
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4762
    return-object p0
.end method

.method public clearLocationText()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 2

    .prologue
    .line 4790
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4791
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getLocationText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->locationText_:Ljava/lang/Object;

    .line 4793
    return-object p0
.end method

.method public clearMoreLikeThisAction()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 3

    .prologue
    .line 5414
    invoke-static {}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->getDefaultInstance()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->moreLikeThisAction_:Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    .line 5416
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 5417
    return-object p0
.end method

.method public clearMusicInfo()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 3

    .prologue
    .line 5257
    invoke-static {}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getDefaultInstance()Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->musicInfo_:Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    .line 5259
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 5260
    return-object p0
.end method

.method public clearPersonInfo()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 3

    .prologue
    .line 5042
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->personInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    .line 5044
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 5045
    return-object p0
.end method

.method public clearPlaceInfo()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 3

    .prologue
    .line 5085
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->placeInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    .line 5087
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 5088
    return-object p0
.end method

.method public clearProductInfo()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 3

    .prologue
    .line 5128
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getDefaultInstance()Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->productInfo_:Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    .line 5130
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 5131
    return-object p0
.end method

.method public clearResultId()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 3

    .prologue
    .line 5330
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 5331
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getResultId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->resultId_:Ljava/lang/Object;

    .line 5333
    return-object p0
.end method

.method public clearResultUrl()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 2

    .prologue
    .line 4533
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4534
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getResultUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->resultUrl_:Ljava/lang/Object;

    .line 4536
    return-object p0
.end method

.method public clearShareAction()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 3

    .prologue
    .line 5457
    invoke-static {}, Lcom/google/goggles/ShareActionProtos$ShareAction;->getDefaultInstance()Lcom/google/goggles/ShareActionProtos$ShareAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->shareAction_:Lcom/google/goggles/ShareActionProtos$ShareAction;

    .line 5459
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 5460
    return-object p0
.end method

.method public clearSubtitle()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 2

    .prologue
    .line 4389
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4390
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getSubtitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->subtitle_:Ljava/lang/Object;

    .line 4392
    return-object p0
.end method

.method public clearSubtype()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 2

    .prologue
    .line 4461
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4462
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getSubtype()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->subtype_:Ljava/lang/Object;

    .line 4464
    return-object p0
.end method

.method public clearTextInfo()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 3

    .prologue
    .line 5171
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->textInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    .line 5173
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 5174
    return-object p0
.end method

.method public clearTitle()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 2

    .prologue
    .line 4353
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4354
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->title_:Ljava/lang/Object;

    .line 4356
    return-object p0
.end method

.method public clearTtsDescription()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 2

    .prologue
    .line 4497
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4498
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getTtsDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->ttsDescription_:Ljava/lang/Object;

    .line 4500
    return-object p0
.end method

.method public clearType()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 2

    .prologue
    .line 4425
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4426
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->type_:Ljava/lang/Object;

    .line 4428
    return-object p0
.end method

.method public clearUrlGroups()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 2

    .prologue
    .line 4914
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->urlGroups_:Ljava/util/List;

    .line 4915
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4917
    return-object p0
.end method

.method public clearUrls()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4711
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->urls_:Lcom/google/protobuf/LazyStringList;

    .line 4712
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4714
    return-object p0
.end method

.method public clearWebsearchUrl()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 2

    .prologue
    .line 4951
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4952
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getWebsearchUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->websearchUrl_:Ljava/lang/Object;

    .line 4954
    return-object p0
.end method

.method public clone()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 3

    .prologue
    .line 3831
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->create()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->buildPartial()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->mergeFrom(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 3754
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->clone()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3754
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->clone()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3754
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->clone()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 3754
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->clone()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBoundingBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 2

    .prologue
    .line 4586
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    return-object v0
.end method

.method public getBoundingBoxRequestId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 5347
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->boundingBoxRequestId_:Ljava/lang/Object;

    .line 5348
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 5349
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5350
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->boundingBoxRequestId_:Ljava/lang/Object;

    .line 5353
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getCanonicalImage()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;
    .registers 2

    .prologue
    .line 4629
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->canonicalImage_:Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    return-object v0
.end method

.method public getContributionInfo()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;
    .registers 2

    .prologue
    .line 5183
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->contributionInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;
    .registers 2

    .prologue
    .line 3835
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 3754
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->getDefaultInstanceForType()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3754
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->getDefaultInstanceForType()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v0

    return-object v0
.end method

.method public getDirectUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 4550
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->directUrl_:Ljava/lang/Object;

    .line 4551
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 4552
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4553
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->directUrl_:Ljava/lang/Object;

    .line 4556
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getFacts()Lcom/google/goggles/FactsProtos$Facts;
    .registers 2

    .prologue
    .line 4968
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->facts_:Lcom/google/goggles/FactsProtos$Facts;

    return-object v0
.end method

.method public getIsAd()Z
    .registers 2

    .prologue
    .line 5290
    iget-boolean v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->isAd_:Z

    return v0
.end method

.method public getIsWithdrawn()Z
    .registers 2

    .prologue
    .line 5269
    iget-boolean v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->isWithdrawn_:Z

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 4807
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->language_:Ljava/lang/Object;

    .line 4808
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 4809
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4810
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->language_:Ljava/lang/Object;

    .line 4813
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getLatLng()Lcom/google/goggles/LatLngProtos$LatLng;
    .registers 2

    .prologue
    .line 4728
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->latLng_:Lcom/google/goggles/LatLngProtos$LatLng;

    return-object v0
.end method

.method public getLocationText()Ljava/lang/String;
    .registers 3

    .prologue
    .line 4771
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->locationText_:Ljava/lang/Object;

    .line 4772
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 4773
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4774
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->locationText_:Ljava/lang/Object;

    .line 4777
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getMoreLikeThisAction()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;
    .registers 2

    .prologue
    .line 5383
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->moreLikeThisAction_:Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    return-object v0
.end method

.method public getMusicInfo()Lcom/google/goggles/MusicInformationProtos$MusicInformation;
    .registers 2

    .prologue
    .line 5226
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->musicInfo_:Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    return-object v0
.end method

.method public getPersonInfo()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;
    .registers 2

    .prologue
    .line 5011
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->personInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    return-object v0
.end method

.method public getPlaceInfo()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;
    .registers 2

    .prologue
    .line 5054
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->placeInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    return-object v0
.end method

.method public getProductInfo()Lcom/google/goggles/ProductInformationProtos$ProductInformation;
    .registers 2

    .prologue
    .line 5097
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->productInfo_:Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    return-object v0
.end method

.method public getResultId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 5311
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->resultId_:Ljava/lang/Object;

    .line 5312
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 5313
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5314
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->resultId_:Ljava/lang/Object;

    .line 5317
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getResultUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 4514
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->resultUrl_:Ljava/lang/Object;

    .line 4515
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 4516
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4517
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->resultUrl_:Ljava/lang/Object;

    .line 4520
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getShareAction()Lcom/google/goggles/ShareActionProtos$ShareAction;
    .registers 2

    .prologue
    .line 5426
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->shareAction_:Lcom/google/goggles/ShareActionProtos$ShareAction;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .registers 3

    .prologue
    .line 4370
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->subtitle_:Ljava/lang/Object;

    .line 4371
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 4372
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4373
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->subtitle_:Ljava/lang/Object;

    .line 4376
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getSubtype()Ljava/lang/String;
    .registers 3

    .prologue
    .line 4442
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->subtype_:Ljava/lang/Object;

    .line 4443
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 4444
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4445
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->subtype_:Ljava/lang/Object;

    .line 4448
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getTextInfo()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;
    .registers 2

    .prologue
    .line 5140
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->textInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3

    .prologue
    .line 4334
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->title_:Ljava/lang/Object;

    .line 4335
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 4336
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4337
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->title_:Ljava/lang/Object;

    .line 4340
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getTtsDescription()Ljava/lang/String;
    .registers 3

    .prologue
    .line 4478
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->ttsDescription_:Ljava/lang/Object;

    .line 4479
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 4480
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4481
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->ttsDescription_:Ljava/lang/Object;

    .line 4484
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getType()Ljava/lang/String;
    .registers 3

    .prologue
    .line 4406
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->type_:Ljava/lang/Object;

    .line 4407
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 4408
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4409
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->type_:Ljava/lang/Object;

    .line 4412
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getUrlGroups(I)Lcom/google/goggles/UrlGroupProtos$UrlGroup;
    .registers 3
    .parameter

    .prologue
    .line 4854
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->urlGroups_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/UrlGroupProtos$UrlGroup;

    return-object v0
.end method

.method public getUrlGroupsCount()I
    .registers 2

    .prologue
    .line 4851
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->urlGroups_:Ljava/util/List;

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
    .line 4848
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->urlGroups_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUrls(I)Ljava/lang/String;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4682
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->urls_:Lcom/google/protobuf/LazyStringList;

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
    .line 4679
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->urls_:Lcom/google/protobuf/LazyStringList;

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
    .line 4676
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->urls_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWebsearchUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 4932
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->websearchUrl_:Ljava/lang/Object;

    .line 4933
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 4934
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4935
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->websearchUrl_:Ljava/lang/Object;

    .line 4938
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public hasBoundingBox()Z
    .registers 3

    .prologue
    .line 4583
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

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
    const/high16 v1, 0x200

    .line 5344
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

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
    .line 4626
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

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
    const/high16 v1, 0x10

    .line 5180
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

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
    .line 4547
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

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
    const v1, 0x8000

    .line 4965
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/2addr v0, v1

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
    const/high16 v1, 0x80

    .line 5287
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

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
    const/high16 v1, 0x40

    .line 5266
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

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
    .line 4804
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

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

.method public hasLatLng()Z
    .registers 3

    .prologue
    .line 4725
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

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

.method public hasLocationText()Z
    .registers 3

    .prologue
    .line 4768
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

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

.method public hasMoreLikeThisAction()Z
    .registers 3

    .prologue
    const/high16 v1, 0x400

    .line 5380
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

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
    const/high16 v1, 0x20

    .line 5223
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

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
    const/high16 v1, 0x1

    .line 5008
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasPlaceInfo()Z
    .registers 3

    .prologue
    const/high16 v1, 0x2

    .line 5051
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasProductInfo()Z
    .registers 3

    .prologue
    const/high16 v1, 0x4

    .line 5094
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

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
    const/high16 v1, 0x100

    .line 5308
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

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
    .line 4511
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

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
    const/high16 v1, 0x800

    .line 5423
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

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
    .line 4367
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

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
    .line 4439
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

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
    const/high16 v1, 0x8

    .line 5137
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

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

    .line 4331
    iget v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

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
    .line 4475
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

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
    .line 4403
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

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
    .line 4929
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 4083
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->hasBoundingBox()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4084
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->getBoundingBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    .line 4113
    :cond_11
    :goto_11
    return v1

    .line 4089
    :cond_12
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->hasCanonicalImage()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 4090
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->getCanonicalImage()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4095
    :cond_22
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->hasLatLng()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 4096
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->getLatLng()Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/LatLngProtos$LatLng;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_32
    move v0, v1

    .line 4101
    :goto_33
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->getUrlGroupsCount()I

    move-result v2

    if-ge v0, v2, :cond_46

    .line 4102
    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->getUrlGroups(I)Lcom/google/goggles/UrlGroupProtos$UrlGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 4101
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 4107
    :cond_46
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->hasTextInfo()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 4108
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->getTextInfo()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4113
    :cond_56
    const/4 v1, 0x1

    goto :goto_11
.end method

.method public mergeBoundingBox(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 4
    .parameter

    .prologue
    .line 4605
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getDefaultInstance()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 4607
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    invoke-static {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->newBuilder(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->mergeFrom(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->buildPartial()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 4613
    :goto_20
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4614
    return-object p0

    .line 4610
    :cond_27
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    goto :goto_20
.end method

.method public mergeCanonicalImage(Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 4
    .parameter

    .prologue
    .line 4648
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->canonicalImage_:Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    invoke-static {}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->getDefaultInstance()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 4650
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->canonicalImage_:Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    invoke-static {v0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->newBuilder(Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->mergeFrom(Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->buildPartial()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->canonicalImage_:Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    .line 4656
    :goto_20
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4657
    return-object p0

    .line 4653
    :cond_27
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->canonicalImage_:Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    goto :goto_20
.end method

.method public mergeContributionInfo(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 5
    .parameter

    .prologue
    const/high16 v2, 0x10

    .line 5202
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->contributionInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 5204
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->contributionInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->newBuilder(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->mergeFrom(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->buildPartial()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->contributionInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    .line 5210
    :goto_1f
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 5211
    return-object p0

    .line 5207
    :cond_25
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->contributionInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    goto :goto_1f
.end method

.method public mergeFacts(Lcom/google/goggles/FactsProtos$Facts;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 5
    .parameter

    .prologue
    const v2, 0x8000

    .line 4987
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_26

    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->facts_:Lcom/google/goggles/FactsProtos$Facts;

    invoke-static {}, Lcom/google/goggles/FactsProtos$Facts;->getDefaultInstance()Lcom/google/goggles/FactsProtos$Facts;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 4989
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->facts_:Lcom/google/goggles/FactsProtos$Facts;

    invoke-static {v0}, Lcom/google/goggles/FactsProtos$Facts;->newBuilder(Lcom/google/goggles/FactsProtos$Facts;)Lcom/google/goggles/FactsProtos$Facts$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/FactsProtos$Facts$Builder;->mergeFrom(Lcom/google/goggles/FactsProtos$Facts;)Lcom/google/goggles/FactsProtos$Facts$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->buildPartial()Lcom/google/goggles/FactsProtos$Facts;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->facts_:Lcom/google/goggles/FactsProtos$Facts;

    .line 4995
    :goto_20
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4996
    return-object p0

    .line 4992
    :cond_26
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->facts_:Lcom/google/goggles/FactsProtos$Facts;

    goto :goto_20
.end method

.method public mergeFrom(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 4
    .parameter

    .prologue
    .line 3980
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 4079
    :cond_6
    :goto_6
    return-object p0

    .line 3981
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3982
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->setTitle(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    .line 3984
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasSubtitle()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3985
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getSubtitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->setSubtitle(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    .line 3987
    :cond_21
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasType()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 3988
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->setType(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    .line 3990
    :cond_2e
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasSubtype()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 3991
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getSubtype()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->setSubtype(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    .line 3993
    :cond_3b
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasTtsDescription()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 3994
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getTtsDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->setTtsDescription(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    .line 3996
    :cond_48
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasResultUrl()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 3997
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getResultUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->setResultUrl(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    .line 3999
    :cond_55
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasDirectUrl()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 4000
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getDirectUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->setDirectUrl(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    .line 4002
    :cond_62
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasBoundingBox()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 4003
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getBoundingBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->mergeBoundingBox(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    .line 4005
    :cond_6f
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasCanonicalImage()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 4006
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getCanonicalImage()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->mergeCanonicalImage(Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    .line 4008
    :cond_7c
    #getter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->urls_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->access$4800(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9a

    .line 4009
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->urls_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_197

    .line 4010
    #getter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->urls_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->access$4800(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->urls_:Lcom/google/protobuf/LazyStringList;

    .line 4011
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4018
    :cond_9a
    :goto_9a
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasLatLng()Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 4019
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getLatLng()Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->mergeLatLng(Lcom/google/goggles/LatLngProtos$LatLng;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    .line 4021
    :cond_a7
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasLocationText()Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 4022
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getLocationText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->setLocationText(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    .line 4024
    :cond_b4
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasLanguage()Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 4025
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    .line 4027
    :cond_c1
    #getter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->urlGroups_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->access$5200(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_df

    .line 4028
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->urlGroups_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a5

    .line 4029
    #getter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->urlGroups_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->access$5200(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->urlGroups_:Ljava/util/List;

    .line 4030
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4037
    :cond_df
    :goto_df
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasWebsearchUrl()Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 4038
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getWebsearchUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->setWebsearchUrl(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    .line 4040
    :cond_ec
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasFacts()Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 4041
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getFacts()Lcom/google/goggles/FactsProtos$Facts;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->mergeFacts(Lcom/google/goggles/FactsProtos$Facts;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    .line 4043
    :cond_f9
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasPersonInfo()Z

    move-result v0

    if-eqz v0, :cond_106

    .line 4044
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getPersonInfo()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->mergePersonInfo(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    .line 4046
    :cond_106
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasPlaceInfo()Z

    move-result v0

    if-eqz v0, :cond_113

    .line 4047
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getPlaceInfo()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->mergePlaceInfo(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    .line 4049
    :cond_113
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasProductInfo()Z

    move-result v0

    if-eqz v0, :cond_120

    .line 4050
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getProductInfo()Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->mergeProductInfo(Lcom/google/goggles/ProductInformationProtos$ProductInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    .line 4052
    :cond_120
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasTextInfo()Z

    move-result v0

    if-eqz v0, :cond_12d

    .line 4053
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getTextInfo()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->mergeTextInfo(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    .line 4055
    :cond_12d
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasContributionInfo()Z

    move-result v0

    if-eqz v0, :cond_13a

    .line 4056
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getContributionInfo()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->mergeContributionInfo(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    .line 4058
    :cond_13a
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasMusicInfo()Z

    move-result v0

    if-eqz v0, :cond_147

    .line 4059
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getMusicInfo()Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->mergeMusicInfo(Lcom/google/goggles/MusicInformationProtos$MusicInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    .line 4061
    :cond_147
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasIsWithdrawn()Z

    move-result v0

    if-eqz v0, :cond_154

    .line 4062
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getIsWithdrawn()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->setIsWithdrawn(Z)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    .line 4064
    :cond_154
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasIsAd()Z

    move-result v0

    if-eqz v0, :cond_161

    .line 4065
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getIsAd()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->setIsAd(Z)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    .line 4067
    :cond_161
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasResultId()Z

    move-result v0

    if-eqz v0, :cond_16e

    .line 4068
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getResultId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->setResultId(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    .line 4070
    :cond_16e
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasBoundingBoxRequestId()Z

    move-result v0

    if-eqz v0, :cond_17b

    .line 4071
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getBoundingBoxRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->setBoundingBoxRequestId(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    .line 4073
    :cond_17b
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasMoreLikeThisAction()Z

    move-result v0

    if-eqz v0, :cond_188

    .line 4074
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getMoreLikeThisAction()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->mergeMoreLikeThisAction(Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    .line 4076
    :cond_188
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasShareAction()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4077
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getShareAction()Lcom/google/goggles/ShareActionProtos$ShareAction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->mergeShareAction(Lcom/google/goggles/ShareActionProtos$ShareAction;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    goto/16 :goto_6

    .line 4013
    :cond_197
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->ensureUrlsIsMutable()V

    .line 4014
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->urls_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->urls_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->access$4800(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_9a

    .line 4032
    :cond_1a5
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->ensureUrlGroupsIsMutable()V

    .line 4033
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->urlGroups_:Ljava/util/List;

    #getter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->urlGroups_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->access$5200(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_df
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4121
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 4122
    sparse-switch v0, :sswitch_data_24c

    .line 4127
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4129
    :sswitch_d
    return-object p0

    .line 4134
    :sswitch_e
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->newBuilder()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    .line 4135
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->hasBoundingBox()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 4136
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->getBoundingBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->mergeFrom(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    .line 4138
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4139
    invoke-virtual {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->buildPartial()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->setBoundingBox(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    goto :goto_0

    .line 4143
    :sswitch_2a
    invoke-static {}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->newBuilder()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    move-result-object v0

    .line 4144
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->hasCanonicalImage()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 4145
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->getCanonicalImage()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->mergeFrom(Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    .line 4147
    :cond_3b
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4148
    invoke-virtual {v0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->buildPartial()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->setCanonicalImage(Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    goto :goto_0

    .line 4152
    :sswitch_46
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->ensureUrlsIsMutable()V

    .line 4153
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->urls_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 4157
    :sswitch_53
    invoke-static {}, Lcom/google/goggles/LatLngProtos$LatLng;->newBuilder()Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    move-result-object v0

    .line 4158
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->hasLatLng()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 4159
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->getLatLng()Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->mergeFrom(Lcom/google/goggles/LatLngProtos$LatLng;)Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    .line 4161
    :cond_64
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4162
    invoke-virtual {v0}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->buildPartial()Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->setLatLng(Lcom/google/goggles/LatLngProtos$LatLng;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    goto :goto_0

    .line 4166
    :sswitch_6f
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4167
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->language_:Ljava/lang/Object;

    goto :goto_0

    .line 4171
    :sswitch_7c
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4172
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->title_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4176
    :sswitch_8a
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4177
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->subtitle_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4181
    :sswitch_98
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4182
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->type_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4186
    :sswitch_a6
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4187
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->subtype_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4191
    :sswitch_b4
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4192
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->resultUrl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4196
    :sswitch_c2
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const/high16 v1, 0x100

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4197
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->resultId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4201
    :sswitch_d1
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const/high16 v1, 0x200

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4202
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->boundingBoxRequestId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4206
    :sswitch_e0
    invoke-static {}, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->newBuilder()Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;

    move-result-object v0

    .line 4207
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4208
    invoke-virtual {v0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->buildPartial()Lcom/google/goggles/UrlGroupProtos$UrlGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->addUrlGroups(Lcom/google/goggles/UrlGroupProtos$UrlGroup;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    goto/16 :goto_0

    .line 4212
    :sswitch_f0
    invoke-static {}, Lcom/google/goggles/FactsProtos$Facts;->newBuilder()Lcom/google/goggles/FactsProtos$Facts$Builder;

    move-result-object v0

    .line 4213
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->hasFacts()Z

    move-result v1

    if-eqz v1, :cond_101

    .line 4214
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->getFacts()Lcom/google/goggles/FactsProtos$Facts;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/FactsProtos$Facts$Builder;->mergeFrom(Lcom/google/goggles/FactsProtos$Facts;)Lcom/google/goggles/FactsProtos$Facts$Builder;

    .line 4216
    :cond_101
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4217
    invoke-virtual {v0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->buildPartial()Lcom/google/goggles/FactsProtos$Facts;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->setFacts(Lcom/google/goggles/FactsProtos$Facts;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    goto/16 :goto_0

    .line 4221
    :sswitch_10d
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    move-result-object v0

    .line 4222
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->hasPersonInfo()Z

    move-result v1

    if-eqz v1, :cond_11e

    .line 4223
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->getPersonInfo()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->mergeFrom(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    .line 4225
    :cond_11e
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4226
    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->buildPartial()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->setPersonInfo(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    goto/16 :goto_0

    .line 4230
    :sswitch_12a
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;

    move-result-object v0

    .line 4231
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->hasPlaceInfo()Z

    move-result v1

    if-eqz v1, :cond_13b

    .line 4232
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->getPlaceInfo()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->mergeFrom(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;

    .line 4234
    :cond_13b
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4235
    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->buildPartial()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->setPlaceInfo(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    goto/16 :goto_0

    .line 4239
    :sswitch_147
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4240
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->websearchUrl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4244
    :sswitch_155
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4245
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->directUrl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4249
    :sswitch_163
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->newBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    move-result-object v0

    .line 4250
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->hasProductInfo()Z

    move-result v1

    if-eqz v1, :cond_174

    .line 4251
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->getProductInfo()Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->mergeFrom(Lcom/google/goggles/ProductInformationProtos$ProductInformation;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    .line 4253
    :cond_174
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4254
    invoke-virtual {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->buildPartial()Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->setProductInfo(Lcom/google/goggles/ProductInformationProtos$ProductInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    goto/16 :goto_0

    .line 4258
    :sswitch_180
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

    move-result-object v0

    .line 4259
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->hasTextInfo()Z

    move-result v1

    if-eqz v1, :cond_191

    .line 4260
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->getTextInfo()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->mergeFrom(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

    .line 4262
    :cond_191
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4263
    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->buildPartial()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->setTextInfo(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    goto/16 :goto_0

    .line 4267
    :sswitch_19d
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    move-result-object v0

    .line 4268
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->hasContributionInfo()Z

    move-result v1

    if-eqz v1, :cond_1ae

    .line 4269
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->getContributionInfo()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->mergeFrom(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    .line 4271
    :cond_1ae
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4272
    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->buildPartial()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->setContributionInfo(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    goto/16 :goto_0

    .line 4276
    :sswitch_1ba
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4277
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->locationText_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4281
    :sswitch_1c8
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const/high16 v1, 0x40

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4282
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->isWithdrawn_:Z

    goto/16 :goto_0

    .line 4286
    :sswitch_1d7
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const/high16 v1, 0x80

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4287
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->isAd_:Z

    goto/16 :goto_0

    .line 4291
    :sswitch_1e6
    invoke-static {}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->newBuilder()Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    move-result-object v0

    .line 4292
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->hasMusicInfo()Z

    move-result v1

    if-eqz v1, :cond_1f7

    .line 4293
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->getMusicInfo()Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->mergeFrom(Lcom/google/goggles/MusicInformationProtos$MusicInformation;)Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    .line 4295
    :cond_1f7
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4296
    invoke-virtual {v0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->buildPartial()Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->setMusicInfo(Lcom/google/goggles/MusicInformationProtos$MusicInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    goto/16 :goto_0

    .line 4300
    :sswitch_203
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4301
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->ttsDescription_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4305
    :sswitch_211
    invoke-static {}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->newBuilder()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    move-result-object v0

    .line 4306
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->hasMoreLikeThisAction()Z

    move-result v1

    if-eqz v1, :cond_222

    .line 4307
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->getMoreLikeThisAction()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->mergeFrom(Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;)Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    .line 4309
    :cond_222
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4310
    invoke-virtual {v0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->buildPartial()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->setMoreLikeThisAction(Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    goto/16 :goto_0

    .line 4314
    :sswitch_22e
    invoke-static {}, Lcom/google/goggles/ShareActionProtos$ShareAction;->newBuilder()Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;

    move-result-object v0

    .line 4315
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->hasShareAction()Z

    move-result v1

    if-eqz v1, :cond_23f

    .line 4316
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->getShareAction()Lcom/google/goggles/ShareActionProtos$ShareAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->mergeFrom(Lcom/google/goggles/ShareActionProtos$ShareAction;)Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;

    .line 4318
    :cond_23f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4319
    invoke-virtual {v0}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->buildPartial()Lcom/google/goggles/ShareActionProtos$ShareAction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->setShareAction(Lcom/google/goggles/ShareActionProtos$ShareAction;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    goto/16 :goto_0

    .line 4122
    nop

    :sswitch_data_24c
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x1a -> :sswitch_2a
        0x22 -> :sswitch_46
        0x2a -> :sswitch_53
        0x32 -> :sswitch_6f
        0x3a -> :sswitch_7c
        0x42 -> :sswitch_8a
        0x4a -> :sswitch_98
        0x52 -> :sswitch_a6
        0x5a -> :sswitch_b4
        0x62 -> :sswitch_c2
        0x6a -> :sswitch_d1
        0x72 -> :sswitch_e0
        0x7a -> :sswitch_f0
        0x82 -> :sswitch_10d
        0x8a -> :sswitch_12a
        0x9a -> :sswitch_147
        0xa2 -> :sswitch_155
        0xaa -> :sswitch_163
        0xb2 -> :sswitch_180
        0xba -> :sswitch_19d
        0xc2 -> :sswitch_1ba
        0xc8 -> :sswitch_1c8
        0xd0 -> :sswitch_1d7
        0xda -> :sswitch_1e6
        0xe2 -> :sswitch_203
        0xea -> :sswitch_211
        0xf2 -> :sswitch_22e
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3754
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 3754
    check-cast p1, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    invoke-virtual {p0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->mergeFrom(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3754
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeLatLng(Lcom/google/goggles/LatLngProtos$LatLng;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 4
    .parameter

    .prologue
    .line 4747
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->latLng_:Lcom/google/goggles/LatLngProtos$LatLng;

    invoke-static {}, Lcom/google/goggles/LatLngProtos$LatLng;->getDefaultInstance()Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 4749
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->latLng_:Lcom/google/goggles/LatLngProtos$LatLng;

    invoke-static {v0}, Lcom/google/goggles/LatLngProtos$LatLng;->newBuilder(Lcom/google/goggles/LatLngProtos$LatLng;)Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->mergeFrom(Lcom/google/goggles/LatLngProtos$LatLng;)Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->buildPartial()Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->latLng_:Lcom/google/goggles/LatLngProtos$LatLng;

    .line 4755
    :goto_20
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4756
    return-object p0

    .line 4752
    :cond_27
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->latLng_:Lcom/google/goggles/LatLngProtos$LatLng;

    goto :goto_20
.end method

.method public mergeMoreLikeThisAction(Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 5
    .parameter

    .prologue
    const/high16 v2, 0x400

    .line 5402
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->moreLikeThisAction_:Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    invoke-static {}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->getDefaultInstance()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 5404
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->moreLikeThisAction_:Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    invoke-static {v0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->newBuilder(Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;)Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->mergeFrom(Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;)Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->buildPartial()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->moreLikeThisAction_:Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    .line 5410
    :goto_1f
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 5411
    return-object p0

    .line 5407
    :cond_25
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->moreLikeThisAction_:Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    goto :goto_1f
.end method

.method public mergeMusicInfo(Lcom/google/goggles/MusicInformationProtos$MusicInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 5
    .parameter

    .prologue
    const/high16 v2, 0x20

    .line 5245
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->musicInfo_:Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    invoke-static {}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->getDefaultInstance()Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 5247
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->musicInfo_:Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    invoke-static {v0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation;->newBuilder(Lcom/google/goggles/MusicInformationProtos$MusicInformation;)Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->mergeFrom(Lcom/google/goggles/MusicInformationProtos$MusicInformation;)Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->buildPartial()Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->musicInfo_:Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    .line 5253
    :goto_1f
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 5254
    return-object p0

    .line 5250
    :cond_25
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->musicInfo_:Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    goto :goto_1f
.end method

.method public mergePersonInfo(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 5
    .parameter

    .prologue
    const/high16 v2, 0x1

    .line 5030
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->personInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 5032
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->personInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->newBuilder(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->mergeFrom(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->buildPartial()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->personInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    .line 5038
    :goto_1f
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 5039
    return-object p0

    .line 5035
    :cond_25
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->personInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    goto :goto_1f
.end method

.method public mergePlaceInfo(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 5
    .parameter

    .prologue
    const/high16 v2, 0x2

    .line 5073
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->placeInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 5075
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->placeInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->newBuilder(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->mergeFrom(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->buildPartial()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->placeInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    .line 5081
    :goto_1f
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 5082
    return-object p0

    .line 5078
    :cond_25
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->placeInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    goto :goto_1f
.end method

.method public mergeProductInfo(Lcom/google/goggles/ProductInformationProtos$ProductInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 5
    .parameter

    .prologue
    const/high16 v2, 0x4

    .line 5116
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->productInfo_:Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getDefaultInstance()Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 5118
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->productInfo_:Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    invoke-static {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->newBuilder(Lcom/google/goggles/ProductInformationProtos$ProductInformation;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->mergeFrom(Lcom/google/goggles/ProductInformationProtos$ProductInformation;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->buildPartial()Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->productInfo_:Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    .line 5124
    :goto_1f
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 5125
    return-object p0

    .line 5121
    :cond_25
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->productInfo_:Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    goto :goto_1f
.end method

.method public mergeShareAction(Lcom/google/goggles/ShareActionProtos$ShareAction;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 5
    .parameter

    .prologue
    const/high16 v2, 0x800

    .line 5445
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->shareAction_:Lcom/google/goggles/ShareActionProtos$ShareAction;

    invoke-static {}, Lcom/google/goggles/ShareActionProtos$ShareAction;->getDefaultInstance()Lcom/google/goggles/ShareActionProtos$ShareAction;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 5447
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->shareAction_:Lcom/google/goggles/ShareActionProtos$ShareAction;

    invoke-static {v0}, Lcom/google/goggles/ShareActionProtos$ShareAction;->newBuilder(Lcom/google/goggles/ShareActionProtos$ShareAction;)Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->mergeFrom(Lcom/google/goggles/ShareActionProtos$ShareAction;)Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->buildPartial()Lcom/google/goggles/ShareActionProtos$ShareAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->shareAction_:Lcom/google/goggles/ShareActionProtos$ShareAction;

    .line 5453
    :goto_1f
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 5454
    return-object p0

    .line 5450
    :cond_25
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->shareAction_:Lcom/google/goggles/ShareActionProtos$ShareAction;

    goto :goto_1f
.end method

.method public mergeTextInfo(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 5
    .parameter

    .prologue
    const/high16 v2, 0x8

    .line 5159
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->textInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 5161
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->textInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->newBuilder(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->mergeFrom(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->buildPartial()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->textInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    .line 5167
    :goto_1f
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 5168
    return-object p0

    .line 5164
    :cond_25
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->textInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    goto :goto_1f
.end method

.method public removeUrlGroups(I)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 3
    .parameter

    .prologue
    .line 4920
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->ensureUrlGroupsIsMutable()V

    .line 4921
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->urlGroups_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4923
    return-object p0
.end method

.method public setBoundingBox(Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 3
    .parameter

    .prologue
    .line 4599
    invoke-virtual {p1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->build()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 4601
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4602
    return-object p0
.end method

.method public setBoundingBox(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 3
    .parameter

    .prologue
    .line 4589
    if-nez p1, :cond_8

    .line 4590
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4592
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 4594
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4595
    return-object p0
.end method

.method public setBoundingBoxRequestId(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 4
    .parameter

    .prologue
    .line 5357
    if-nez p1, :cond_8

    .line 5358
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5360
    :cond_8
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const/high16 v1, 0x200

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 5361
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->boundingBoxRequestId_:Ljava/lang/Object;

    .line 5363
    return-object p0
.end method

.method setBoundingBoxRequestId(Lcom/google/protobuf/ByteString;)V
    .registers 4
    .parameter

    .prologue
    .line 5372
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const/high16 v1, 0x200

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 5373
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->boundingBoxRequestId_:Ljava/lang/Object;

    .line 5375
    return-void
.end method

.method public setCanonicalImage(Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 3
    .parameter

    .prologue
    .line 4642
    invoke-virtual {p1}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->build()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->canonicalImage_:Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    .line 4644
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4645
    return-object p0
.end method

.method public setCanonicalImage(Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 3
    .parameter

    .prologue
    .line 4632
    if-nez p1, :cond_8

    .line 4633
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4635
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->canonicalImage_:Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    .line 4637
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4638
    return-object p0
.end method

.method public setContributionInfo(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 4
    .parameter

    .prologue
    .line 5196
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->build()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->contributionInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    .line 5198
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 5199
    return-object p0
.end method

.method public setContributionInfo(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 4
    .parameter

    .prologue
    .line 5186
    if-nez p1, :cond_8

    .line 5187
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5189
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->contributionInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    .line 5191
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 5192
    return-object p0
.end method

.method public setDirectUrl(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 3
    .parameter

    .prologue
    .line 4560
    if-nez p1, :cond_8

    .line 4561
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4563
    :cond_8
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4564
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->directUrl_:Ljava/lang/Object;

    .line 4566
    return-object p0
.end method

.method setDirectUrl(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 4575
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4576
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->directUrl_:Ljava/lang/Object;

    .line 4578
    return-void
.end method

.method public setFacts(Lcom/google/goggles/FactsProtos$Facts$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 4
    .parameter

    .prologue
    .line 4981
    invoke-virtual {p1}, Lcom/google/goggles/FactsProtos$Facts$Builder;->build()Lcom/google/goggles/FactsProtos$Facts;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->facts_:Lcom/google/goggles/FactsProtos$Facts;

    .line 4983
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4984
    return-object p0
.end method

.method public setFacts(Lcom/google/goggles/FactsProtos$Facts;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 4
    .parameter

    .prologue
    .line 4971
    if-nez p1, :cond_8

    .line 4972
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4974
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->facts_:Lcom/google/goggles/FactsProtos$Facts;

    .line 4976
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4977
    return-object p0
.end method

.method public setIsAd(Z)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 4
    .parameter

    .prologue
    .line 5293
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const/high16 v1, 0x80

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 5294
    iput-boolean p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->isAd_:Z

    .line 5296
    return-object p0
.end method

.method public setIsWithdrawn(Z)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 4
    .parameter

    .prologue
    .line 5272
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const/high16 v1, 0x40

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 5273
    iput-boolean p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->isWithdrawn_:Z

    .line 5275
    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 3
    .parameter

    .prologue
    .line 4817
    if-nez p1, :cond_8

    .line 4818
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4820
    :cond_8
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4821
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->language_:Ljava/lang/Object;

    .line 4823
    return-object p0
.end method

.method setLanguage(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 4832
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4833
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->language_:Ljava/lang/Object;

    .line 4835
    return-void
.end method

.method public setLatLng(Lcom/google/goggles/LatLngProtos$LatLng$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 3
    .parameter

    .prologue
    .line 4741
    invoke-virtual {p1}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->build()Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->latLng_:Lcom/google/goggles/LatLngProtos$LatLng;

    .line 4743
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4744
    return-object p0
.end method

.method public setLatLng(Lcom/google/goggles/LatLngProtos$LatLng;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 3
    .parameter

    .prologue
    .line 4731
    if-nez p1, :cond_8

    .line 4732
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4734
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->latLng_:Lcom/google/goggles/LatLngProtos$LatLng;

    .line 4736
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4737
    return-object p0
.end method

.method public setLocationText(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 3
    .parameter

    .prologue
    .line 4781
    if-nez p1, :cond_8

    .line 4782
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4784
    :cond_8
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4785
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->locationText_:Ljava/lang/Object;

    .line 4787
    return-object p0
.end method

.method setLocationText(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 4796
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4797
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->locationText_:Ljava/lang/Object;

    .line 4799
    return-void
.end method

.method public setMoreLikeThisAction(Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 4
    .parameter

    .prologue
    .line 5396
    invoke-virtual {p1}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->build()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->moreLikeThisAction_:Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    .line 5398
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const/high16 v1, 0x400

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 5399
    return-object p0
.end method

.method public setMoreLikeThisAction(Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 4
    .parameter

    .prologue
    .line 5386
    if-nez p1, :cond_8

    .line 5387
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5389
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->moreLikeThisAction_:Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    .line 5391
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const/high16 v1, 0x400

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 5392
    return-object p0
.end method

.method public setMusicInfo(Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 4
    .parameter

    .prologue
    .line 5239
    invoke-virtual {p1}, Lcom/google/goggles/MusicInformationProtos$MusicInformation$Builder;->build()Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->musicInfo_:Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    .line 5241
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 5242
    return-object p0
.end method

.method public setMusicInfo(Lcom/google/goggles/MusicInformationProtos$MusicInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 4
    .parameter

    .prologue
    .line 5229
    if-nez p1, :cond_8

    .line 5230
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5232
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->musicInfo_:Lcom/google/goggles/MusicInformationProtos$MusicInformation;

    .line 5234
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 5235
    return-object p0
.end method

.method public setPersonInfo(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 4
    .parameter

    .prologue
    .line 5024
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->build()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->personInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    .line 5026
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 5027
    return-object p0
.end method

.method public setPersonInfo(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 4
    .parameter

    .prologue
    .line 5014
    if-nez p1, :cond_8

    .line 5015
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5017
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->personInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    .line 5019
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 5020
    return-object p0
.end method

.method public setPlaceInfo(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 4
    .parameter

    .prologue
    .line 5067
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->build()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->placeInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    .line 5069
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 5070
    return-object p0
.end method

.method public setPlaceInfo(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 4
    .parameter

    .prologue
    .line 5057
    if-nez p1, :cond_8

    .line 5058
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5060
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->placeInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    .line 5062
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 5063
    return-object p0
.end method

.method public setProductInfo(Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 4
    .parameter

    .prologue
    .line 5110
    invoke-virtual {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->build()Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->productInfo_:Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    .line 5112
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 5113
    return-object p0
.end method

.method public setProductInfo(Lcom/google/goggles/ProductInformationProtos$ProductInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 4
    .parameter

    .prologue
    .line 5100
    if-nez p1, :cond_8

    .line 5101
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5103
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->productInfo_:Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    .line 5105
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 5106
    return-object p0
.end method

.method public setResultId(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 4
    .parameter

    .prologue
    .line 5321
    if-nez p1, :cond_8

    .line 5322
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5324
    :cond_8
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const/high16 v1, 0x100

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 5325
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->resultId_:Ljava/lang/Object;

    .line 5327
    return-object p0
.end method

.method setResultId(Lcom/google/protobuf/ByteString;)V
    .registers 4
    .parameter

    .prologue
    .line 5336
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const/high16 v1, 0x100

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 5337
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->resultId_:Ljava/lang/Object;

    .line 5339
    return-void
.end method

.method public setResultUrl(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 3
    .parameter

    .prologue
    .line 4524
    if-nez p1, :cond_8

    .line 4525
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4527
    :cond_8
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4528
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->resultUrl_:Ljava/lang/Object;

    .line 4530
    return-object p0
.end method

.method setResultUrl(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 4539
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4540
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->resultUrl_:Ljava/lang/Object;

    .line 4542
    return-void
.end method

.method public setShareAction(Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 4
    .parameter

    .prologue
    .line 5439
    invoke-virtual {p1}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->build()Lcom/google/goggles/ShareActionProtos$ShareAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->shareAction_:Lcom/google/goggles/ShareActionProtos$ShareAction;

    .line 5441
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const/high16 v1, 0x800

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 5442
    return-object p0
.end method

.method public setShareAction(Lcom/google/goggles/ShareActionProtos$ShareAction;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 4
    .parameter

    .prologue
    .line 5429
    if-nez p1, :cond_8

    .line 5430
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5432
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->shareAction_:Lcom/google/goggles/ShareActionProtos$ShareAction;

    .line 5434
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const/high16 v1, 0x800

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 5435
    return-object p0
.end method

.method public setSubtitle(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 3
    .parameter

    .prologue
    .line 4380
    if-nez p1, :cond_8

    .line 4381
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4383
    :cond_8
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4384
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->subtitle_:Ljava/lang/Object;

    .line 4386
    return-object p0
.end method

.method setSubtitle(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 4395
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4396
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->subtitle_:Ljava/lang/Object;

    .line 4398
    return-void
.end method

.method public setSubtype(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 3
    .parameter

    .prologue
    .line 4452
    if-nez p1, :cond_8

    .line 4453
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4455
    :cond_8
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4456
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->subtype_:Ljava/lang/Object;

    .line 4458
    return-object p0
.end method

.method setSubtype(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 4467
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4468
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->subtype_:Ljava/lang/Object;

    .line 4470
    return-void
.end method

.method public setTextInfo(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 4
    .parameter

    .prologue
    .line 5153
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->build()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->textInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    .line 5155
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 5156
    return-object p0
.end method

.method public setTextInfo(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 4
    .parameter

    .prologue
    .line 5143
    if-nez p1, :cond_8

    .line 5144
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5146
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->textInfo_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    .line 5148
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 5149
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 3
    .parameter

    .prologue
    .line 4344
    if-nez p1, :cond_8

    .line 4345
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4347
    :cond_8
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4348
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->title_:Ljava/lang/Object;

    .line 4350
    return-object p0
.end method

.method setTitle(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 4359
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4360
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->title_:Ljava/lang/Object;

    .line 4362
    return-void
.end method

.method public setTtsDescription(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 3
    .parameter

    .prologue
    .line 4488
    if-nez p1, :cond_8

    .line 4489
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4491
    :cond_8
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4492
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->ttsDescription_:Ljava/lang/Object;

    .line 4494
    return-object p0
.end method

.method setTtsDescription(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 4503
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4504
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->ttsDescription_:Ljava/lang/Object;

    .line 4506
    return-void
.end method

.method public setType(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 3
    .parameter

    .prologue
    .line 4416
    if-nez p1, :cond_8

    .line 4417
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4419
    :cond_8
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4420
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->type_:Ljava/lang/Object;

    .line 4422
    return-object p0
.end method

.method setType(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 4431
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4432
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->type_:Ljava/lang/Object;

    .line 4434
    return-void
.end method

.method public setUrlGroups(ILcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 4868
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->ensureUrlGroupsIsMutable()V

    .line 4869
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->urlGroups_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->build()Lcom/google/goggles/UrlGroupProtos$UrlGroup;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4871
    return-object p0
.end method

.method public setUrlGroups(ILcom/google/goggles/UrlGroupProtos$UrlGroup;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 4858
    if-nez p2, :cond_8

    .line 4859
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4861
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->ensureUrlGroupsIsMutable()V

    .line 4862
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->urlGroups_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4864
    return-object p0
.end method

.method public setUrls(ILjava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4686
    if-nez p2, :cond_8

    .line 4687
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4689
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->ensureUrlsIsMutable()V

    .line 4690
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->urls_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4692
    return-object p0
.end method

.method public setWebsearchUrl(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;
    .registers 3
    .parameter

    .prologue
    .line 4942
    if-nez p1, :cond_8

    .line 4943
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4945
    :cond_8
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4946
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->websearchUrl_:Ljava/lang/Object;

    .line 4948
    return-object p0
.end method

.method setWebsearchUrl(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 4957
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->bitField0_:I

    .line 4958
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$Builder;->websearchUrl_:Ljava/lang/Object;

    .line 4960
    return-void
.end method
