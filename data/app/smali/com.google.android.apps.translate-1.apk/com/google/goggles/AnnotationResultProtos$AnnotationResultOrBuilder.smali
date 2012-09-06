.class public interface abstract Lcom/google/goggles/AnnotationResultProtos$AnnotationResultOrBuilder;
.super Ljava/lang/Object;
.source "AnnotationResultProtos.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/AnnotationResultProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AnnotationResultOrBuilder"
.end annotation


# virtual methods
.method public abstract getBoundingBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
.end method

.method public abstract getBoundingBoxRequestId()Ljava/lang/String;
.end method

.method public abstract getCanonicalImage()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;
.end method

.method public abstract getContributionInfo()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;
.end method

.method public abstract getDirectUrl()Ljava/lang/String;
.end method

.method public abstract getFacts()Lcom/google/goggles/FactsProtos$Facts;
.end method

.method public abstract getIsAd()Z
.end method

.method public abstract getIsWithdrawn()Z
.end method

.method public abstract getLanguage()Ljava/lang/String;
.end method

.method public abstract getLatLng()Lcom/google/goggles/LatLngProtos$LatLng;
.end method

.method public abstract getLocationText()Ljava/lang/String;
.end method

.method public abstract getMoreLikeThisAction()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;
.end method

.method public abstract getMusicInfo()Lcom/google/goggles/MusicInformationProtos$MusicInformation;
.end method

.method public abstract getPersonInfo()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;
.end method

.method public abstract getPlaceInfo()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;
.end method

.method public abstract getProductInfo()Lcom/google/goggles/ProductInformationProtos$ProductInformation;
.end method

.method public abstract getResultId()Ljava/lang/String;
.end method

.method public abstract getResultUrl()Ljava/lang/String;
.end method

.method public abstract getShareAction()Lcom/google/goggles/ShareActionProtos$ShareAction;
.end method

.method public abstract getSubtitle()Ljava/lang/String;
.end method

.method public abstract getSubtype()Ljava/lang/String;
.end method

.method public abstract getTextInfo()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getTtsDescription()Ljava/lang/String;
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract getUrlGroups(I)Lcom/google/goggles/UrlGroupProtos$UrlGroup;
.end method

.method public abstract getUrlGroupsCount()I
.end method

.method public abstract getUrlGroupsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/UrlGroupProtos$UrlGroup;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUrls(I)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getUrlsCount()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getUrlsList()Ljava/util/List;
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
.end method

.method public abstract getWebsearchUrl()Ljava/lang/String;
.end method

.method public abstract hasBoundingBox()Z
.end method

.method public abstract hasBoundingBoxRequestId()Z
.end method

.method public abstract hasCanonicalImage()Z
.end method

.method public abstract hasContributionInfo()Z
.end method

.method public abstract hasDirectUrl()Z
.end method

.method public abstract hasFacts()Z
.end method

.method public abstract hasIsAd()Z
.end method

.method public abstract hasIsWithdrawn()Z
.end method

.method public abstract hasLanguage()Z
.end method

.method public abstract hasLatLng()Z
.end method

.method public abstract hasLocationText()Z
.end method

.method public abstract hasMoreLikeThisAction()Z
.end method

.method public abstract hasMusicInfo()Z
.end method

.method public abstract hasPersonInfo()Z
.end method

.method public abstract hasPlaceInfo()Z
.end method

.method public abstract hasProductInfo()Z
.end method

.method public abstract hasResultId()Z
.end method

.method public abstract hasResultUrl()Z
.end method

.method public abstract hasShareAction()Z
.end method

.method public abstract hasSubtitle()Z
.end method

.method public abstract hasSubtype()Z
.end method

.method public abstract hasTextInfo()Z
.end method

.method public abstract hasTitle()Z
.end method

.method public abstract hasTtsDescription()Z
.end method

.method public abstract hasType()Z
.end method

.method public abstract hasWebsearchUrl()Z
.end method
