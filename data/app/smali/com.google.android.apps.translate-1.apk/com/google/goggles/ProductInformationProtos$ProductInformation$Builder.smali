.class public final Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ProductInformationProtos.java"

# interfaces
.implements Lcom/google/goggles/ProductInformationProtos$ProductInformationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/ProductInformationProtos$ProductInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/ProductInformationProtos$ProductInformation;",
        "Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;",
        ">;",
        "Lcom/google/goggles/ProductInformationProtos$ProductInformationOrBuilder;"
    }
.end annotation


# instance fields
.field private author_:Ljava/lang/Object;

.field private bitField0_:I

.field private brand_:Ljava/lang/Object;

.field private catalogUrl_:Ljava/lang/Object;

.field private categories_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/RestrictsProtos$Category;",
            ">;"
        }
    .end annotation
.end field

.field private cid_:Ljava/lang/Object;

.field private clusterId_:Ljava/lang/Object;

.field private gender_:Lcom/google/goggles/RestrictsProtos$Restricts$Gender;

.field private isbn_:Ljava/lang/Object;

.field private numReviews_:I

.field private offers_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;",
            ">;"
        }
    .end annotation
.end field

.field private prices_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;",
            ">;"
        }
    .end annotation
.end field

.field private publicationYear_:Ljava/lang/Object;

.field private publisher_:Ljava/lang/Object;

.field private starRating_:F


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1807
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2158
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->prices_:Ljava/util/List;

    .line 2247
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->author_:Ljava/lang/Object;

    .line 2283
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->publisher_:Ljava/lang/Object;

    .line 2319
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->publicationYear_:Ljava/lang/Object;

    .line 2355
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->isbn_:Ljava/lang/Object;

    .line 2391
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->cid_:Ljava/lang/Object;

    .line 2427
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->offers_:Ljava/util/List;

    .line 2516
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->brand_:Ljava/lang/Object;

    .line 2552
    sget-object v0, Lcom/google/goggles/RestrictsProtos$Restricts$Gender;->WOMEN:Lcom/google/goggles/RestrictsProtos$Restricts$Gender;

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->gender_:Lcom/google/goggles/RestrictsProtos$Restricts$Gender;

    .line 2576
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->clusterId_:Ljava/lang/Object;

    .line 2612
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->categories_:Ljava/util/List;

    .line 2701
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->catalogUrl_:Ljava/lang/Object;

    .line 1808
    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->maybeForceBuilderInitialization()V

    .line 1809
    return-void
.end method

.method static synthetic access$1600(Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;)Lcom/google/goggles/ProductInformationProtos$ProductInformation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1802
    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->buildParsed()Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 1

    .prologue
    .line 1802
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->create()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/ProductInformationProtos$ProductInformation;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1868
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->buildPartial()Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v0

    .line 1869
    invoke-virtual {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1870
    invoke-static {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1873
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 1

    .prologue
    .line 1814
    new-instance v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    invoke-direct {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;-><init>()V

    return-object v0
.end method

.method private ensureCategoriesIsMutable()V
    .registers 3

    .prologue
    .line 2615
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_17

    .line 2616
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->categories_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->categories_:Ljava/util/List;

    .line 2617
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2619
    :cond_17
    return-void
.end method

.method private ensureOffersIsMutable()V
    .registers 3

    .prologue
    .line 2430
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-eq v0, v1, :cond_17

    .line 2431
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->offers_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->offers_:Ljava/util/List;

    .line 2432
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2434
    :cond_17
    return-void
.end method

.method private ensurePricesIsMutable()V
    .registers 3

    .prologue
    .line 2161
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 2162
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->prices_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->prices_:Ljava/util/List;

    .line 2163
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2165
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1812
    return-void
.end method


# virtual methods
.method public addAllCategories(Ljava/lang/Iterable;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/goggles/RestrictsProtos$Category;",
            ">;)",
            "Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;"
        }
    .end annotation

    .prologue
    .line 2682
    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->ensureCategoriesIsMutable()V

    .line 2683
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->categories_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2685
    return-object p0
.end method

.method public addAllOffers(Ljava/lang/Iterable;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;",
            ">;)",
            "Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;"
        }
    .end annotation

    .prologue
    .line 2497
    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->ensureOffersIsMutable()V

    .line 2498
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->offers_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2500
    return-object p0
.end method

.method public addAllPrices(Ljava/lang/Iterable;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;",
            ">;)",
            "Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;"
        }
    .end annotation

    .prologue
    .line 2228
    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->ensurePricesIsMutable()V

    .line 2229
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->prices_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2231
    return-object p0
.end method

.method public addCategories(ILcom/google/goggles/RestrictsProtos$Category$Builder;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 2675
    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->ensureCategoriesIsMutable()V

    .line 2676
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->categories_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->build()Lcom/google/goggles/RestrictsProtos$Category;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2678
    return-object p0
.end method

.method public addCategories(ILcom/google/goggles/RestrictsProtos$Category;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2658
    if-nez p2, :cond_8

    .line 2659
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2661
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->ensureCategoriesIsMutable()V

    .line 2662
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->categories_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2664
    return-object p0
.end method

.method public addCategories(Lcom/google/goggles/RestrictsProtos$Category$Builder;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 4
    .parameter

    .prologue
    .line 2668
    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->ensureCategoriesIsMutable()V

    .line 2669
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->categories_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->build()Lcom/google/goggles/RestrictsProtos$Category;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2671
    return-object p0
.end method

.method public addCategories(Lcom/google/goggles/RestrictsProtos$Category;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2648
    if-nez p1, :cond_8

    .line 2649
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2651
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->ensureCategoriesIsMutable()V

    .line 2652
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->categories_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2654
    return-object p0
.end method

.method public addOffers(ILcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 2490
    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->ensureOffersIsMutable()V

    .line 2491
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->offers_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->build()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2493
    return-object p0
.end method

.method public addOffers(ILcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2473
    if-nez p2, :cond_8

    .line 2474
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2476
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->ensureOffersIsMutable()V

    .line 2477
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->offers_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2479
    return-object p0
.end method

.method public addOffers(Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 4
    .parameter

    .prologue
    .line 2483
    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->ensureOffersIsMutable()V

    .line 2484
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->offers_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->build()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2486
    return-object p0
.end method

.method public addOffers(Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2463
    if-nez p1, :cond_8

    .line 2464
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2466
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->ensureOffersIsMutable()V

    .line 2467
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->offers_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2469
    return-object p0
.end method

.method public addPrices(ILcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 2221
    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->ensurePricesIsMutable()V

    .line 2222
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->prices_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->build()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2224
    return-object p0
.end method

.method public addPrices(ILcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2204
    if-nez p2, :cond_8

    .line 2205
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2207
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->ensurePricesIsMutable()V

    .line 2208
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->prices_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2210
    return-object p0
.end method

.method public addPrices(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 4
    .parameter

    .prologue
    .line 2214
    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->ensurePricesIsMutable()V

    .line 2215
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->prices_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->build()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2217
    return-object p0
.end method

.method public addPrices(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2194
    if-nez p1, :cond_8

    .line 2195
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2197
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->ensurePricesIsMutable()V

    .line 2198
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->prices_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2200
    return-object p0
.end method

.method public build()Lcom/google/goggles/ProductInformationProtos$ProductInformation;
    .registers 3

    .prologue
    .line 1859
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->buildPartial()Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v0

    .line 1860
    invoke-virtual {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1861
    invoke-static {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1863
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1802
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->build()Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/ProductInformationProtos$ProductInformation;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 1877
    new-instance v2, Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;-><init>(Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;Lcom/google/goggles/ProductInformationProtos$1;)V

    .line 1878
    iget v3, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 1879
    const/4 v1, 0x0

    .line 1880
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_e8

    .line 1883
    :goto_e
    iget v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->starRating_:F

    #setter for: Lcom/google/goggles/ProductInformationProtos$ProductInformation;->starRating_:F
    invoke-static {v2, v1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->access$1902(Lcom/google/goggles/ProductInformationProtos$ProductInformation;F)F

    .line 1884
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    .line 1885
    or-int/lit8 v0, v0, 0x2

    .line 1887
    :cond_1a
    iget v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->numReviews_:I

    #setter for: Lcom/google/goggles/ProductInformationProtos$ProductInformation;->numReviews_:I
    invoke-static {v2, v1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->access$2002(Lcom/google/goggles/ProductInformationProtos$ProductInformation;I)I

    .line 1888
    iget v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_34

    .line 1889
    iget-object v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->prices_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->prices_:Ljava/util/List;

    .line 1890
    iget v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 1892
    :cond_34
    iget-object v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->prices_:Ljava/util/List;

    #setter for: Lcom/google/goggles/ProductInformationProtos$ProductInformation;->prices_:Ljava/util/List;
    invoke-static {v2, v1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->access$2102(Lcom/google/goggles/ProductInformationProtos$ProductInformation;Ljava/util/List;)Ljava/util/List;

    .line 1893
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_41

    .line 1894
    or-int/lit8 v0, v0, 0x4

    .line 1896
    :cond_41
    iget-object v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->author_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/ProductInformationProtos$ProductInformation;->author_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->access$2202(Lcom/google/goggles/ProductInformationProtos$ProductInformation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1897
    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_4e

    .line 1898
    or-int/lit8 v0, v0, 0x8

    .line 1900
    :cond_4e
    iget-object v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->publisher_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/ProductInformationProtos$ProductInformation;->publisher_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->access$2302(Lcom/google/goggles/ProductInformationProtos$ProductInformation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1901
    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_5b

    .line 1902
    or-int/lit8 v0, v0, 0x10

    .line 1904
    :cond_5b
    iget-object v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->publicationYear_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/ProductInformationProtos$ProductInformation;->publicationYear_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->access$2402(Lcom/google/goggles/ProductInformationProtos$ProductInformation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1905
    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_68

    .line 1906
    or-int/lit8 v0, v0, 0x20

    .line 1908
    :cond_68
    iget-object v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->isbn_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/ProductInformationProtos$ProductInformation;->isbn_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->access$2502(Lcom/google/goggles/ProductInformationProtos$ProductInformation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1909
    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_75

    .line 1910
    or-int/lit8 v0, v0, 0x40

    .line 1912
    :cond_75
    iget-object v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->cid_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/ProductInformationProtos$ProductInformation;->cid_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->access$2602(Lcom/google/goggles/ProductInformationProtos$ProductInformation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1913
    iget v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v4, 0x100

    if-ne v1, v4, :cond_90

    .line 1914
    iget-object v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->offers_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->offers_:Ljava/util/List;

    .line 1915
    iget v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 1917
    :cond_90
    iget-object v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->offers_:Ljava/util/List;

    #setter for: Lcom/google/goggles/ProductInformationProtos$ProductInformation;->offers_:Ljava/util/List;
    invoke-static {v2, v1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->access$2702(Lcom/google/goggles/ProductInformationProtos$ProductInformation;Ljava/util/List;)Ljava/util/List;

    .line 1918
    and-int/lit16 v1, v3, 0x200

    const/16 v4, 0x200

    if-ne v1, v4, :cond_9d

    .line 1919
    or-int/lit16 v0, v0, 0x80

    .line 1921
    :cond_9d
    iget-object v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->brand_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/ProductInformationProtos$ProductInformation;->brand_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->access$2802(Lcom/google/goggles/ProductInformationProtos$ProductInformation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1922
    and-int/lit16 v1, v3, 0x400

    const/16 v4, 0x400

    if-ne v1, v4, :cond_aa

    .line 1923
    or-int/lit16 v0, v0, 0x100

    .line 1925
    :cond_aa
    iget-object v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->gender_:Lcom/google/goggles/RestrictsProtos$Restricts$Gender;

    #setter for: Lcom/google/goggles/ProductInformationProtos$ProductInformation;->gender_:Lcom/google/goggles/RestrictsProtos$Restricts$Gender;
    invoke-static {v2, v1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->access$2902(Lcom/google/goggles/ProductInformationProtos$ProductInformation;Lcom/google/goggles/RestrictsProtos$Restricts$Gender;)Lcom/google/goggles/RestrictsProtos$Restricts$Gender;

    .line 1926
    and-int/lit16 v1, v3, 0x800

    const/16 v4, 0x800

    if-ne v1, v4, :cond_b7

    .line 1927
    or-int/lit16 v0, v0, 0x200

    .line 1929
    :cond_b7
    iget-object v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->clusterId_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/ProductInformationProtos$ProductInformation;->clusterId_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->access$3002(Lcom/google/goggles/ProductInformationProtos$ProductInformation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1930
    iget v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v4, 0x1000

    if-ne v1, v4, :cond_d2

    .line 1931
    iget-object v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->categories_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->categories_:Ljava/util/List;

    .line 1932
    iget v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x1001

    iput v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 1934
    :cond_d2
    iget-object v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->categories_:Ljava/util/List;

    #setter for: Lcom/google/goggles/ProductInformationProtos$ProductInformation;->categories_:Ljava/util/List;
    invoke-static {v2, v1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->access$3102(Lcom/google/goggles/ProductInformationProtos$ProductInformation;Ljava/util/List;)Ljava/util/List;

    .line 1935
    and-int/lit16 v1, v3, 0x2000

    const/16 v3, 0x2000

    if-ne v1, v3, :cond_df

    .line 1936
    or-int/lit16 v0, v0, 0x400

    .line 1938
    :cond_df
    iget-object v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->catalogUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/ProductInformationProtos$ProductInformation;->catalogUrl_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->access$3202(Lcom/google/goggles/ProductInformationProtos$ProductInformation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1939
    #setter for: Lcom/google/goggles/ProductInformationProtos$ProductInformation;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->access$3302(Lcom/google/goggles/ProductInformationProtos$ProductInformation;I)I

    .line 1940
    return-object v2

    :cond_e8
    move v0, v1

    goto/16 :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1802
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->buildPartial()Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 2

    .prologue
    .line 1818
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1819
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->starRating_:F

    .line 1820
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 1821
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->numReviews_:I

    .line 1822
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 1823
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->prices_:Ljava/util/List;

    .line 1824
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 1825
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->author_:Ljava/lang/Object;

    .line 1826
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 1827
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->publisher_:Ljava/lang/Object;

    .line 1828
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 1829
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->publicationYear_:Ljava/lang/Object;

    .line 1830
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 1831
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->isbn_:Ljava/lang/Object;

    .line 1832
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 1833
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->cid_:Ljava/lang/Object;

    .line 1834
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 1835
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->offers_:Ljava/util/List;

    .line 1836
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 1837
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->brand_:Ljava/lang/Object;

    .line 1838
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 1839
    sget-object v0, Lcom/google/goggles/RestrictsProtos$Restricts$Gender;->WOMEN:Lcom/google/goggles/RestrictsProtos$Restricts$Gender;

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->gender_:Lcom/google/goggles/RestrictsProtos$Restricts$Gender;

    .line 1840
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 1841
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->clusterId_:Ljava/lang/Object;

    .line 1842
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 1843
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->categories_:Ljava/util/List;

    .line 1844
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 1845
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->catalogUrl_:Ljava/lang/Object;

    .line 1846
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 1847
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1802
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->clear()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1802
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->clear()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAuthor()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 2

    .prologue
    .line 2271
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2272
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getDefaultInstance()Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getAuthor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->author_:Ljava/lang/Object;

    .line 2274
    return-object p0
.end method

.method public clearBrand()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 2

    .prologue
    .line 2540
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2541
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getDefaultInstance()Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getBrand()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->brand_:Ljava/lang/Object;

    .line 2543
    return-object p0
.end method

.method public clearCatalogUrl()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 2

    .prologue
    .line 2725
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2726
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getDefaultInstance()Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getCatalogUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->catalogUrl_:Ljava/lang/Object;

    .line 2728
    return-object p0
.end method

.method public clearCategories()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 2

    .prologue
    .line 2688
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->categories_:Ljava/util/List;

    .line 2689
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2691
    return-object p0
.end method

.method public clearCid()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 2

    .prologue
    .line 2415
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2416
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getDefaultInstance()Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getCid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->cid_:Ljava/lang/Object;

    .line 2418
    return-object p0
.end method

.method public clearClusterId()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 2

    .prologue
    .line 2600
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2601
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getDefaultInstance()Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getClusterId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->clusterId_:Ljava/lang/Object;

    .line 2603
    return-object p0
.end method

.method public clearGender()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 2

    .prologue
    .line 2569
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2570
    sget-object v0, Lcom/google/goggles/RestrictsProtos$Restricts$Gender;->WOMEN:Lcom/google/goggles/RestrictsProtos$Restricts$Gender;

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->gender_:Lcom/google/goggles/RestrictsProtos$Restricts$Gender;

    .line 2572
    return-object p0
.end method

.method public clearIsbn()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 2

    .prologue
    .line 2379
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2380
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getDefaultInstance()Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getIsbn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->isbn_:Ljava/lang/Object;

    .line 2382
    return-object p0
.end method

.method public clearNumReviews()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 2

    .prologue
    .line 2151
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2152
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->numReviews_:I

    .line 2154
    return-object p0
.end method

.method public clearOffers()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 2

    .prologue
    .line 2503
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->offers_:Ljava/util/List;

    .line 2504
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2506
    return-object p0
.end method

.method public clearPrices()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 2

    .prologue
    .line 2234
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->prices_:Ljava/util/List;

    .line 2235
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2237
    return-object p0
.end method

.method public clearPublicationYear()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 2

    .prologue
    .line 2343
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2344
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getDefaultInstance()Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getPublicationYear()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->publicationYear_:Ljava/lang/Object;

    .line 2346
    return-object p0
.end method

.method public clearPublisher()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 2

    .prologue
    .line 2307
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2308
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getDefaultInstance()Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getPublisher()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->publisher_:Ljava/lang/Object;

    .line 2310
    return-object p0
.end method

.method public clearStarRating()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 2

    .prologue
    .line 2130
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2131
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->starRating_:F

    .line 2133
    return-object p0
.end method

.method public clone()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 3

    .prologue
    .line 1851
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->create()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->buildPartial()Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->mergeFrom(Lcom/google/goggles/ProductInformationProtos$ProductInformation;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1802
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->clone()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1802
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->clone()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1802
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->clone()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

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
    .line 1802
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->clone()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2252
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->author_:Ljava/lang/Object;

    .line 2253
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2254
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2255
    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->author_:Ljava/lang/Object;

    .line 2258
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getBrand()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2521
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->brand_:Ljava/lang/Object;

    .line 2522
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2523
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2524
    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->brand_:Ljava/lang/Object;

    .line 2527
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getCatalogUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2706
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->catalogUrl_:Ljava/lang/Object;

    .line 2707
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2708
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2709
    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->catalogUrl_:Ljava/lang/Object;

    .line 2712
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getCategories(I)Lcom/google/goggles/RestrictsProtos$Category;
    .registers 3
    .parameter

    .prologue
    .line 2628
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->categories_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/RestrictsProtos$Category;

    return-object v0
.end method

.method public getCategoriesCount()I
    .registers 2

    .prologue
    .line 2625
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->categories_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCategoriesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/RestrictsProtos$Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2622
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->categories_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2396
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->cid_:Ljava/lang/Object;

    .line 2397
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2398
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2399
    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->cid_:Ljava/lang/Object;

    .line 2402
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getClusterId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2581
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->clusterId_:Ljava/lang/Object;

    .line 2582
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2583
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2584
    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->clusterId_:Ljava/lang/Object;

    .line 2587
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/ProductInformationProtos$ProductInformation;
    .registers 2

    .prologue
    .line 1855
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getDefaultInstance()Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1802
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->getDefaultInstanceForType()Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1802
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->getDefaultInstanceForType()Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v0

    return-object v0
.end method

.method public getGender()Lcom/google/goggles/RestrictsProtos$Restricts$Gender;
    .registers 2

    .prologue
    .line 2557
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->gender_:Lcom/google/goggles/RestrictsProtos$Restricts$Gender;

    return-object v0
.end method

.method public getIsbn()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2360
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->isbn_:Ljava/lang/Object;

    .line 2361
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2362
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2363
    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->isbn_:Ljava/lang/Object;

    .line 2366
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getNumReviews()I
    .registers 2

    .prologue
    .line 2142
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->numReviews_:I

    return v0
.end method

.method public getOffers(I)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;
    .registers 3
    .parameter

    .prologue
    .line 2443
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->offers_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;

    return-object v0
.end method

.method public getOffersCount()I
    .registers 2

    .prologue
    .line 2440
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->offers_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOffersList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2437
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->offers_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPrices(I)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;
    .registers 3
    .parameter

    .prologue
    .line 2174
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->prices_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    return-object v0
.end method

.method public getPricesCount()I
    .registers 2

    .prologue
    .line 2171
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->prices_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPricesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2168
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->prices_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPublicationYear()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2324
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->publicationYear_:Ljava/lang/Object;

    .line 2325
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2326
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2327
    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->publicationYear_:Ljava/lang/Object;

    .line 2330
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getPublisher()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2288
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->publisher_:Ljava/lang/Object;

    .line 2289
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2290
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2291
    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->publisher_:Ljava/lang/Object;

    .line 2294
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getStarRating()F
    .registers 2

    .prologue
    .line 2121
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->starRating_:F

    return v0
.end method

.method public hasAuthor()Z
    .registers 3

    .prologue
    .line 2249
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

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

.method public hasBrand()Z
    .registers 3

    .prologue
    .line 2518
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

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

.method public hasCatalogUrl()Z
    .registers 3

    .prologue
    .line 2703
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

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

.method public hasCid()Z
    .registers 3

    .prologue
    .line 2393
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

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

.method public hasClusterId()Z
    .registers 3

    .prologue
    .line 2578
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

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

.method public hasGender()Z
    .registers 3

    .prologue
    .line 2554
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

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

.method public hasIsbn()Z
    .registers 3

    .prologue
    .line 2357
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

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

.method public hasNumReviews()Z
    .registers 3

    .prologue
    .line 2139
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

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

.method public hasPublicationYear()Z
    .registers 3

    .prologue
    .line 2321
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

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

.method public hasPublisher()Z
    .registers 3

    .prologue
    .line 2285
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

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

.method public hasStarRating()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2118
    iget v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 2012
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/goggles/ProductInformationProtos$ProductInformation;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 4
    .parameter

    .prologue
    .line 1944
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getDefaultInstance()Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 2008
    :cond_6
    :goto_6
    return-object p0

    .line 1945
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->hasStarRating()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1946
    invoke-virtual {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getStarRating()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->setStarRating(F)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    .line 1948
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->hasNumReviews()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1949
    invoke-virtual {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getNumReviews()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->setNumReviews(I)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    .line 1951
    :cond_21
    #getter for: Lcom/google/goggles/ProductInformationProtos$ProductInformation;->prices_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->access$2100(Lcom/google/goggles/ProductInformationProtos$ProductInformation;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 1952
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->prices_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 1953
    #getter for: Lcom/google/goggles/ProductInformationProtos$ProductInformation;->prices_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->access$2100(Lcom/google/goggles/ProductInformationProtos$ProductInformation;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->prices_:Ljava/util/List;

    .line 1954
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 1961
    :cond_3f
    :goto_3f
    invoke-virtual {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->hasAuthor()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1962
    invoke-virtual {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->setAuthor(Ljava/lang/String;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    .line 1964
    :cond_4c
    invoke-virtual {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->hasPublisher()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1965
    invoke-virtual {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getPublisher()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->setPublisher(Ljava/lang/String;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    .line 1967
    :cond_59
    invoke-virtual {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->hasPublicationYear()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 1968
    invoke-virtual {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getPublicationYear()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->setPublicationYear(Ljava/lang/String;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    .line 1970
    :cond_66
    invoke-virtual {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->hasIsbn()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 1971
    invoke-virtual {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getIsbn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->setIsbn(Ljava/lang/String;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    .line 1973
    :cond_73
    invoke-virtual {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->hasCid()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 1974
    invoke-virtual {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getCid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->setCid(Ljava/lang/String;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    .line 1976
    :cond_80
    #getter for: Lcom/google/goggles/ProductInformationProtos$ProductInformation;->offers_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->access$2700(Lcom/google/goggles/ProductInformationProtos$ProductInformation;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9e

    .line 1977
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->offers_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_100

    .line 1978
    #getter for: Lcom/google/goggles/ProductInformationProtos$ProductInformation;->offers_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->access$2700(Lcom/google/goggles/ProductInformationProtos$ProductInformation;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->offers_:Ljava/util/List;

    .line 1979
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 1986
    :cond_9e
    :goto_9e
    invoke-virtual {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->hasBrand()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 1987
    invoke-virtual {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getBrand()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->setBrand(Ljava/lang/String;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    .line 1989
    :cond_ab
    invoke-virtual {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->hasGender()Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 1990
    invoke-virtual {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getGender()Lcom/google/goggles/RestrictsProtos$Restricts$Gender;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->setGender(Lcom/google/goggles/RestrictsProtos$Restricts$Gender;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    .line 1992
    :cond_b8
    invoke-virtual {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->hasClusterId()Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 1993
    invoke-virtual {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getClusterId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->setClusterId(Ljava/lang/String;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    .line 1995
    :cond_c5
    #getter for: Lcom/google/goggles/ProductInformationProtos$ProductInformation;->categories_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->access$3100(Lcom/google/goggles/ProductInformationProtos$ProductInformation;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e3

    .line 1996
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->categories_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 1997
    #getter for: Lcom/google/goggles/ProductInformationProtos$ProductInformation;->categories_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->access$3100(Lcom/google/goggles/ProductInformationProtos$ProductInformation;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->categories_:Ljava/util/List;

    .line 1998
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2005
    :cond_e3
    :goto_e3
    invoke-virtual {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->hasCatalogUrl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2006
    invoke-virtual {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getCatalogUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->setCatalogUrl(Ljava/lang/String;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    goto/16 :goto_6

    .line 1956
    :cond_f2
    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->ensurePricesIsMutable()V

    .line 1957
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->prices_:Ljava/util/List;

    #getter for: Lcom/google/goggles/ProductInformationProtos$ProductInformation;->prices_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->access$2100(Lcom/google/goggles/ProductInformationProtos$ProductInformation;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3f

    .line 1981
    :cond_100
    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->ensureOffersIsMutable()V

    .line 1982
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->offers_:Ljava/util/List;

    #getter for: Lcom/google/goggles/ProductInformationProtos$ProductInformation;->offers_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->access$2700(Lcom/google/goggles/ProductInformationProtos$ProductInformation;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_9e

    .line 2000
    :cond_10d
    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->ensureCategoriesIsMutable()V

    .line 2001
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->categories_:Ljava/util/List;

    #getter for: Lcom/google/goggles/ProductInformationProtos$ProductInformation;->categories_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->access$3100(Lcom/google/goggles/ProductInformationProtos$ProductInformation;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_e3
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2020
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 2021
    sparse-switch v0, :sswitch_data_d6

    .line 2026
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2028
    :sswitch_d
    return-object p0

    .line 2033
    :sswitch_e
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2034
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->starRating_:F

    goto :goto_0

    .line 2038
    :sswitch_1b
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2039
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->numReviews_:I

    goto :goto_0

    .line 2043
    :sswitch_28
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->newBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    move-result-object v0

    .line 2044
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2045
    invoke-virtual {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->buildPartial()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->addPrices(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    goto :goto_0

    .line 2049
    :sswitch_37
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2050
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->author_:Ljava/lang/Object;

    goto :goto_0

    .line 2054
    :sswitch_44
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2055
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->publisher_:Ljava/lang/Object;

    goto :goto_0

    .line 2059
    :sswitch_51
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2060
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->publicationYear_:Ljava/lang/Object;

    goto :goto_0

    .line 2064
    :sswitch_5e
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2065
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->isbn_:Ljava/lang/Object;

    goto :goto_0

    .line 2069
    :sswitch_6b
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2070
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->cid_:Ljava/lang/Object;

    goto :goto_0

    .line 2074
    :sswitch_78
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->newBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

    move-result-object v0

    .line 2075
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2076
    invoke-virtual {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->buildPartial()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->addOffers(Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    goto/16 :goto_0

    .line 2080
    :sswitch_88
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2081
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->brand_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2085
    :sswitch_96
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2086
    invoke-static {v0}, Lcom/google/goggles/RestrictsProtos$Restricts$Gender;->valueOf(I)Lcom/google/goggles/RestrictsProtos$Restricts$Gender;

    move-result-object v0

    .line 2087
    if-eqz v0, :cond_0

    .line 2088
    iget v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2089
    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->gender_:Lcom/google/goggles/RestrictsProtos$Restricts$Gender;

    goto/16 :goto_0

    .line 2094
    :sswitch_aa
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2095
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->clusterId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2099
    :sswitch_b8
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Category;->newBuilder()Lcom/google/goggles/RestrictsProtos$Category$Builder;

    move-result-object v0

    .line 2100
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2101
    invoke-virtual {v0}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->buildPartial()Lcom/google/goggles/RestrictsProtos$Category;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->addCategories(Lcom/google/goggles/RestrictsProtos$Category;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    goto/16 :goto_0

    .line 2105
    :sswitch_c8
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2106
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->catalogUrl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2021
    :sswitch_data_d6
    .sparse-switch
        0x0 -> :sswitch_d
        0xd -> :sswitch_e
        0x10 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_37
        0x2a -> :sswitch_44
        0x32 -> :sswitch_51
        0x3a -> :sswitch_5e
        0x42 -> :sswitch_6b
        0x4a -> :sswitch_78
        0x52 -> :sswitch_88
        0x58 -> :sswitch_96
        0x62 -> :sswitch_aa
        0x6a -> :sswitch_b8
        0x72 -> :sswitch_c8
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
    .line 1802
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1802
    check-cast p1, Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    invoke-virtual {p0, p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->mergeFrom(Lcom/google/goggles/ProductInformationProtos$ProductInformation;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

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
    .line 1802
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeCategories(I)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2694
    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->ensureCategoriesIsMutable()V

    .line 2695
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->categories_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2697
    return-object p0
.end method

.method public removeOffers(I)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2509
    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->ensureOffersIsMutable()V

    .line 2510
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->offers_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2512
    return-object p0
.end method

.method public removePrices(I)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2240
    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->ensurePricesIsMutable()V

    .line 2241
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->prices_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2243
    return-object p0
.end method

.method public setAuthor(Ljava/lang/String;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2262
    if-nez p1, :cond_8

    .line 2263
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2265
    :cond_8
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2266
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->author_:Ljava/lang/Object;

    .line 2268
    return-object p0
.end method

.method setAuthor(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 2277
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2278
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->author_:Ljava/lang/Object;

    .line 2280
    return-void
.end method

.method public setBrand(Ljava/lang/String;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2531
    if-nez p1, :cond_8

    .line 2532
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2534
    :cond_8
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2535
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->brand_:Ljava/lang/Object;

    .line 2537
    return-object p0
.end method

.method setBrand(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 2546
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2547
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->brand_:Ljava/lang/Object;

    .line 2549
    return-void
.end method

.method public setCatalogUrl(Ljava/lang/String;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2716
    if-nez p1, :cond_8

    .line 2717
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2719
    :cond_8
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2720
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->catalogUrl_:Ljava/lang/Object;

    .line 2722
    return-object p0
.end method

.method setCatalogUrl(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 2731
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2732
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->catalogUrl_:Ljava/lang/Object;

    .line 2734
    return-void
.end method

.method public setCategories(ILcom/google/goggles/RestrictsProtos$Category$Builder;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 2642
    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->ensureCategoriesIsMutable()V

    .line 2643
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->categories_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->build()Lcom/google/goggles/RestrictsProtos$Category;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2645
    return-object p0
.end method

.method public setCategories(ILcom/google/goggles/RestrictsProtos$Category;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2632
    if-nez p2, :cond_8

    .line 2633
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2635
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->ensureCategoriesIsMutable()V

    .line 2636
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->categories_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2638
    return-object p0
.end method

.method public setCid(Ljava/lang/String;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2406
    if-nez p1, :cond_8

    .line 2407
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2409
    :cond_8
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2410
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->cid_:Ljava/lang/Object;

    .line 2412
    return-object p0
.end method

.method setCid(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 2421
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2422
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->cid_:Ljava/lang/Object;

    .line 2424
    return-void
.end method

.method public setClusterId(Ljava/lang/String;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2591
    if-nez p1, :cond_8

    .line 2592
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2594
    :cond_8
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2595
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->clusterId_:Ljava/lang/Object;

    .line 2597
    return-object p0
.end method

.method setClusterId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 2606
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2607
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->clusterId_:Ljava/lang/Object;

    .line 2609
    return-void
.end method

.method public setGender(Lcom/google/goggles/RestrictsProtos$Restricts$Gender;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2560
    if-nez p1, :cond_8

    .line 2561
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2563
    :cond_8
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2564
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->gender_:Lcom/google/goggles/RestrictsProtos$Restricts$Gender;

    .line 2566
    return-object p0
.end method

.method public setIsbn(Ljava/lang/String;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2370
    if-nez p1, :cond_8

    .line 2371
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2373
    :cond_8
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2374
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->isbn_:Ljava/lang/Object;

    .line 2376
    return-object p0
.end method

.method setIsbn(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 2385
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2386
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->isbn_:Ljava/lang/Object;

    .line 2388
    return-void
.end method

.method public setNumReviews(I)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2145
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2146
    iput p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->numReviews_:I

    .line 2148
    return-object p0
.end method

.method public setOffers(ILcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 2457
    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->ensureOffersIsMutable()V

    .line 2458
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->offers_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->build()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2460
    return-object p0
.end method

.method public setOffers(ILcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2447
    if-nez p2, :cond_8

    .line 2448
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2450
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->ensureOffersIsMutable()V

    .line 2451
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->offers_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2453
    return-object p0
.end method

.method public setPrices(ILcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 2188
    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->ensurePricesIsMutable()V

    .line 2189
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->prices_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->build()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2191
    return-object p0
.end method

.method public setPrices(ILcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2178
    if-nez p2, :cond_8

    .line 2179
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2181
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->ensurePricesIsMutable()V

    .line 2182
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->prices_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2184
    return-object p0
.end method

.method public setPublicationYear(Ljava/lang/String;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2334
    if-nez p1, :cond_8

    .line 2335
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2337
    :cond_8
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2338
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->publicationYear_:Ljava/lang/Object;

    .line 2340
    return-object p0
.end method

.method setPublicationYear(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 2349
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2350
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->publicationYear_:Ljava/lang/Object;

    .line 2352
    return-void
.end method

.method public setPublisher(Ljava/lang/String;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2298
    if-nez p1, :cond_8

    .line 2299
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2301
    :cond_8
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2302
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->publisher_:Ljava/lang/Object;

    .line 2304
    return-object p0
.end method

.method setPublisher(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 2313
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2314
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->publisher_:Ljava/lang/Object;

    .line 2316
    return-void
.end method

.method public setStarRating(F)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2124
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->bitField0_:I

    .line 2125
    iput p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->starRating_:F

    .line 2127
    return-object p0
.end method
