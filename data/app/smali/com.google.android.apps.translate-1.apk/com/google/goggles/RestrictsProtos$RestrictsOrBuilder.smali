.class public interface abstract Lcom/google/goggles/RestrictsProtos$RestrictsOrBuilder;
.super Ljava/lang/Object;
.source "RestrictsProtos.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/RestrictsProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RestrictsOrBuilder"
.end annotation


# virtual methods
.method public abstract getBrands(I)Ljava/lang/String;
.end method

.method public abstract getBrandsCount()I
.end method

.method public abstract getBrandsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
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

.method public abstract getColors(I)Lcom/google/goggles/RestrictsProtos$ColorEnum$Color;
.end method

.method public abstract getColorsCount()I
.end method

.method public abstract getColorsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/RestrictsProtos$ColorEnum$Color;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGenders(I)Lcom/google/goggles/RestrictsProtos$Restricts$Gender;
.end method

.method public abstract getGendersCount()I
.end method

.method public abstract getGendersList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/RestrictsProtos$Restricts$Gender;",
            ">;"
        }
    .end annotation
.end method
