.class public Lcom/google/android/apps/unveil/results/PuggleResultItem;
.super Lcom/google/android/apps/unveil/results/ResultItem;
.source "PuggleResultItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field public price:D

.field private relatedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/results/PuggleResultItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/results/PuggleResultItem;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/goggles/ResultProtos$Result;Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;I)V
    .registers 7
    .parameter "result"
    .parameter "queryType"
    .parameter "resultPosition"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/unveil/results/ResultItem;-><init>(Lcom/google/goggles/ResultProtos$Result;Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;I)V

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/unveil/results/PuggleResultItem;->relatedItems:Ljava/util/List;

    .line 38
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/results/PuggleResultItem;->getAnnotationResult()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getProductInfo()Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v0

    .line 39
    .local v0, productInfo:Lcom/google/goggles/ProductInformationProtos$ProductInformation;
    invoke-virtual {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getPricesCount()I

    move-result v1

    if-lez v1, :cond_23

    .line 40
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getPrices(I)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->getLowPrice()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/apps/unveil/results/PuggleResultItem;->price:D

    .line 42
    :cond_23
    return-void
.end method


# virtual methods
.method public getBrand()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/apps/unveil/results/PuggleResultItem;->annotation:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasProductInfo()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/apps/unveil/results/PuggleResultItem;->annotation:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getProductInfo()Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getBrand()Ljava/lang/String;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    const-string v0, ""

    goto :goto_12
.end method

.method public getClusterId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/unveil/results/PuggleResultItem;->annotation:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasProductInfo()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/apps/unveil/results/PuggleResultItem;->annotation:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getProductInfo()Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->hasClusterId()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/apps/unveil/results/PuggleResultItem;->annotation:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getProductInfo()Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getClusterId()Ljava/lang/String;

    move-result-object v0

    :goto_1e
    return-object v0

    :cond_1f
    const-string v0, ""

    goto :goto_1e
.end method

.method public getDisplayablePrettyNameString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 89
    iget-object v2, p0, Lcom/google/android/apps/unveil/results/PuggleResultItem;->annotation:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    invoke-virtual {v2}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasProductInfo()Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/google/android/apps/unveil/results/PuggleResultItem;->annotation:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    invoke-virtual {v2}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getProductInfo()Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getCategoriesCount()I

    move-result v2

    if-nez v2, :cond_17

    .line 90
    :cond_14
    const-string v2, ""

    .line 98
    :goto_16
    return-object v2

    .line 93
    :cond_17
    iget-object v2, p0, Lcom/google/android/apps/unveil/results/PuggleResultItem;->annotation:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    invoke-virtual {v2}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getProductInfo()Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getCategoriesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/RestrictsProtos$Category;

    .line 94
    .local v0, category:Lcom/google/goggles/RestrictsProtos$Category;
    invoke-virtual {v0}, Lcom/google/goggles/RestrictsProtos$Category;->getDomain()Lcom/google/goggles/RestrictsProtos$Category$Domain;

    move-result-object v2

    sget-object v3, Lcom/google/goggles/RestrictsProtos$Category$Domain;->PRETTY_NAME:Lcom/google/goggles/RestrictsProtos$Category$Domain;

    if-ne v2, v3, :cond_25

    .line 95
    invoke-virtual {v0}, Lcom/google/goggles/RestrictsProtos$Category;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    goto :goto_16

    .line 98
    .end local v0           #category:Lcom/google/goggles/RestrictsProtos$Category;
    :cond_3e
    const-string v2, ""

    goto :goto_16
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/apps/unveil/results/PuggleResultItem;->annotation:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getCanonicalImage()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .registers 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/unveil/results/PuggleResultItem;->annotation:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasProductInfo()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/apps/unveil/results/PuggleResultItem;->annotation:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getProductInfo()Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getPricesCount()I

    move-result v0

    if-lez v0, :cond_24

    iget-object v0, p0, Lcom/google/android/apps/unveil/results/PuggleResultItem;->annotation:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getProductInfo()Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getPrices(I)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->getPriceSummary()Ljava/lang/String;

    move-result-object v0

    :goto_23
    return-object v0

    :cond_24
    const-string v0, ""

    goto :goto_23
.end method

.method public getReferrerUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/apps/unveil/results/PuggleResultItem;->annotation:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getCanonicalImage()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->getReferrerUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRelatedItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/results/PuggleResultItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/apps/unveil/results/PuggleResultItem;->relatedItems:Ljava/util/List;

    return-object v0
.end method

.method public getRelatedItemsCount()I
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/apps/unveil/results/PuggleResultItem;->relatedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isCatalog()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 64
    iget-object v1, p0, Lcom/google/android/apps/unveil/results/PuggleResultItem;->annotation:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    invoke-virtual {v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasProductInfo()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/google/android/apps/unveil/results/PuggleResultItem;->annotation:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    invoke-virtual {v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getProductInfo()Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getOffersCount()I

    move-result v1

    if-le v1, v0, :cond_16

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public isOffer()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 68
    iget-object v1, p0, Lcom/google/android/apps/unveil/results/PuggleResultItem;->annotation:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    invoke-virtual {v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasProductInfo()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/google/android/apps/unveil/results/PuggleResultItem;->annotation:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    invoke-virtual {v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getProductInfo()Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getOffersCount()I

    move-result v1

    if-ne v1, v0, :cond_16

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public setRelatedItems(Ljava/util/List;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/results/PuggleResultItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/results/PuggleResultItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/results/PuggleResultItem;->relatedItems:Ljava/util/List;

    .line 78
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v6, "PuggleResultItem ["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-super {p0}, Lcom/google/android/apps/unveil/results/ResultItem;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v6, ", referrerUrl="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/results/PuggleResultItem;->getReferrerUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/results/PuggleResultItem;->getAnnotationResult()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getProductInfo()Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v5

    .line 109
    .local v5, productInfo:Lcom/google/goggles/ProductInformationProtos$ProductInformation;
    const-string v6, ", productInfo=["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v6, "cid="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v5}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getCid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v6, ", brand="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v5}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getBrand()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v6, ", prices=["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v5}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getPricesList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_4f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_80

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    .line 116
    .local v4, price:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;
    invoke-virtual {v4}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->getPriceSummary()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v6, "("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v4}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->getLowPrice()D

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 119
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v4}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->getHighPrice()D

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 121
    const-string v6, "), "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4f

    .line 123
    .end local v4           #price:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;
    :cond_80
    const-string v6, "], clusterId="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v5}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getClusterId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v6, ", numReviews="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v5}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getNumReviews()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    const-string v6, ", starRating="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v5}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getStarRating()F

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 129
    const-string v6, ", categories=["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v5}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getCategoriesList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/goggles/RestrictsProtos$Category;

    .line 131
    .local v1, category:Lcom/google/goggles/RestrictsProtos$Category;
    invoke-virtual {v1}, Lcom/google/goggles/RestrictsProtos$Category;->getDomain()Lcom/google/goggles/RestrictsProtos$Category$Domain;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/goggles/RestrictsProtos$Category$Domain;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v1}, Lcom/google/goggles/RestrictsProtos$Category;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v1}, Lcom/google/goggles/RestrictsProtos$Category;->getDomainSpecificId()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b1

    .line 138
    .end local v1           #category:Lcom/google/goggles/RestrictsProtos$Category;
    :cond_e6
    const-string v6, "], "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v5}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getOffersCount()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    const-string v6, " offers"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v6, "=["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v5}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getOffersList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_104
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;

    .line 143
    .local v3, offer:Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;
    const-string v6, "["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const-string v6, "merchant="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v3}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->getMerchant()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string v6, ", id="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v3}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string v6, ", price="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v3}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->getPrice()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->getPriceSummary()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string v6, "("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v3}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->getPrice()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->getLowPrice()D

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 152
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v3}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->getPrice()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->getHighPrice()D

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 154
    const-string v6, "), url="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v3}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string v6, "]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_104

    .line 159
    .end local v3           #offer:Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;
    :cond_16f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
