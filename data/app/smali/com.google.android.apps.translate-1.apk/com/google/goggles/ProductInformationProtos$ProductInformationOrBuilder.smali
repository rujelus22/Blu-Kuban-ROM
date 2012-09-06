.class public interface abstract Lcom/google/goggles/ProductInformationProtos$ProductInformationOrBuilder;
.super Ljava/lang/Object;
.source "ProductInformationProtos.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/ProductInformationProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProductInformationOrBuilder"
.end annotation


# virtual methods
.method public abstract getAuthor()Ljava/lang/String;
.end method

.method public abstract getBrand()Ljava/lang/String;
.end method

.method public abstract getCatalogUrl()Ljava/lang/String;
.end method

.method public abstract getCategories(I)Lcom/google/goggles/RestrictsProtos$Category;
.end method

.method public abstract getCategoriesCount()I
.end method

.method public abstract getCategoriesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/RestrictsProtos$Category;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCid()Ljava/lang/String;
.end method

.method public abstract getClusterId()Ljava/lang/String;
.end method

.method public abstract getGender()Lcom/google/goggles/RestrictsProtos$Restricts$Gender;
.end method

.method public abstract getIsbn()Ljava/lang/String;
.end method

.method public abstract getNumReviews()I
.end method

.method public abstract getOffers(I)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;
.end method

.method public abstract getOffersCount()I
.end method

.method public abstract getOffersList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrices(I)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;
.end method

.method public abstract getPricesCount()I
.end method

.method public abstract getPricesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPublicationYear()Ljava/lang/String;
.end method

.method public abstract getPublisher()Ljava/lang/String;
.end method

.method public abstract getStarRating()F
.end method

.method public abstract hasAuthor()Z
.end method

.method public abstract hasBrand()Z
.end method

.method public abstract hasCatalogUrl()Z
.end method

.method public abstract hasCid()Z
.end method

.method public abstract hasClusterId()Z
.end method

.method public abstract hasGender()Z
.end method

.method public abstract hasIsbn()Z
.end method

.method public abstract hasNumReviews()Z
.end method

.method public abstract hasPublicationYear()Z
.end method

.method public abstract hasPublisher()Z
.end method

.method public abstract hasStarRating()Z
.end method
