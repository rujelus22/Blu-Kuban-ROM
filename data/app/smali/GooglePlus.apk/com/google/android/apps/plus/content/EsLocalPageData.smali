.class public abstract Lcom/google/android/apps/plus/content/EsLocalPageData;
.super Ljava/lang/Object;
.source "EsLocalPageData.java"


# direct methods
.method private static buildOpeningHoursStringForADay(Lcom/google/api/services/plusi/model/OpeningHoursProtoDay;)Ljava/lang/String;
    .registers 8
    .parameter "day"

    .prologue
    const/4 v4, 0x0

    .line 209
    iget-object v5, p0, Lcom/google/api/services/plusi/model/OpeningHoursProtoDay;->interval:Ljava/util/List;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/google/api/services/plusi/model/OpeningHoursProtoDay;->interval:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 229
    :cond_d
    :goto_d
    return-object v4

    .line 212
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .local v3, intervals:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 214
    .local v0, firstInterval:Z
    iget-object v5, p0, Lcom/google/api/services/plusi/model/OpeningHoursProtoDay;->interval:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/services/plusi/model/OpeningHoursProtoDayInterval;

    .line 215
    .local v2, interval:Lcom/google/api/services/plusi/model/OpeningHoursProtoDayInterval;
    iget-object v5, v2, Lcom/google/api/services/plusi/model/OpeningHoursProtoDayInterval;->value:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 216
    if-nez v0, :cond_35

    .line 217
    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :cond_35
    const/4 v0, 0x0

    .line 220
    iget-object v5, v2, Lcom/google/api/services/plusi/model/OpeningHoursProtoDayInterval;->value:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 223
    .end local v2           #interval:Lcom/google/api/services/plusi/model/OpeningHoursProtoDayInterval;
    :cond_3c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_d

    .line 226
    iget-object v4, p0, Lcom/google/api/services/plusi/model/OpeningHoursProtoDay;->dayName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_63

    .line 227
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/google/api/services/plusi/model/OpeningHoursProtoDay;->dayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    :cond_63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_d
.end method

.method public static getAspectRatings(Lcom/google/api/services/plusi/model/GoogleReviewProto;)Ljava/util/List;
    .registers 2
    .parameter "review"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/services/plusi/model/GoogleReviewProto;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/ZagatAspectRatingProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/api/services/plusi/model/GoogleReviewProto;->zagatAspectRatings:Lcom/google/api/services/plusi/model/ZagatAspectRatingsProto;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/api/services/plusi/model/GoogleReviewProto;->zagatAspectRatings:Lcom/google/api/services/plusi/model/ZagatAspectRatingsProto;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/ZagatAspectRatingsProto;->aspectRating:Ljava/util/List;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/api/services/plusi/model/GoogleReviewProto;->zagatAspectRatings:Lcom/google/api/services/plusi/model/ZagatAspectRatingsProto;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/ZagatAspectRatingsProto;->aspectRating:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_19

    .line 187
    iget-object v0, p0, Lcom/google/api/services/plusi/model/GoogleReviewProto;->zagatAspectRatings:Lcom/google/api/services/plusi/model/ZagatAspectRatingsProto;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/ZagatAspectRatingsProto;->aspectRating:Ljava/util/List;

    .line 189
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public static getCid(Lcom/google/api/services/plusi/model/SimpleProfile;)Ljava/lang/String;
    .registers 2
    .parameter "profile"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->page:Lcom/google/api/services/plusi/model/Page;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/Page;->localInfo:Lcom/google/api/services/plusi/model/LocalEntityInfo;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/LocalEntityInfo;->paper:Lcom/google/api/services/plusi/model/FrontendPaperProto;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/FrontendPaperProto;->placeInfo:Lcom/google/api/services/plusi/model/PlaceInfo;

    if-nez v0, :cond_c

    .line 121
    const/4 v0, 0x0

    .line 123
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->page:Lcom/google/api/services/plusi/model/Page;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/Page;->localInfo:Lcom/google/api/services/plusi/model/LocalEntityInfo;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/LocalEntityInfo;->paper:Lcom/google/api/services/plusi/model/FrontendPaperProto;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/FrontendPaperProto;->placeInfo:Lcom/google/api/services/plusi/model/PlaceInfo;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/PlaceInfo;->clusterId:Ljava/lang/String;

    goto :goto_b
.end method

.method public static getCircleActivityStory(Lcom/google/api/services/plusi/model/SimpleProfile;)Lcom/google/api/services/plusi/model/CirclePlaceActivityProto;
    .registers 2
    .parameter "profile"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->page:Lcom/google/api/services/plusi/model/Page;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/Page;->localInfo:Lcom/google/api/services/plusi/model/LocalEntityInfo;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/LocalEntityInfo;->paper:Lcom/google/api/services/plusi/model/FrontendPaperProto;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/FrontendPaperProto;->circleActivity:Lcom/google/api/services/plusi/model/CirclePlaceActivityProto;

    return-object v0
.end method

.method public static getCoverPhotoUrl(Lcom/google/api/services/plusi/model/SimpleProfile;)Ljava/lang/String;
    .registers 2
    .parameter "profile"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    if-nez v0, :cond_6

    .line 88
    const/4 v0, 0x0

    .line 90
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/CommonContent;->photoUrl:Ljava/lang/String;

    goto :goto_5
.end method

.method public static getEditorialScores(Lcom/google/api/services/plusi/model/SimpleProfile;)Lcom/google/api/services/plusi/model/ZagatAspectRatingsProto;
    .registers 2
    .parameter "profile"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->page:Lcom/google/api/services/plusi/model/Page;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/Page;->localInfo:Lcom/google/api/services/plusi/model/LocalEntityInfo;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/LocalEntityInfo;->paper:Lcom/google/api/services/plusi/model/FrontendPaperProto;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/FrontendPaperProto;->zagatAspectRatings:Lcom/google/api/services/plusi/model/ZagatAspectRatingsProto;

    return-object v0
.end method

.method public static getFullAddress(Lcom/google/api/services/plusi/model/SimpleProfile;)Ljava/lang/String;
    .registers 6
    .parameter "profile"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 94
    iget-object v3, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->page:Lcom/google/api/services/plusi/model/Page;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/Page;->localInfo:Lcom/google/api/services/plusi/model/LocalEntityInfo;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/LocalEntityInfo;->paper:Lcom/google/api/services/plusi/model/FrontendPaperProto;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/FrontendPaperProto;->address:Lcom/google/api/services/plusi/model/PlacePageAddressProto;

    if-nez v3, :cond_d

    .line 106
    :cond_c
    :goto_c
    return-object v2

    .line 97
    :cond_d
    iget-object v3, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->page:Lcom/google/api/services/plusi/model/Page;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/Page;->localInfo:Lcom/google/api/services/plusi/model/LocalEntityInfo;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/LocalEntityInfo;->paper:Lcom/google/api/services/plusi/model/FrontendPaperProto;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/FrontendPaperProto;->address:Lcom/google/api/services/plusi/model/PlacePageAddressProto;

    iget-object v1, v3, Lcom/google/api/services/plusi/model/PlacePageAddressProto;->addressLine:Ljava/util/List;

    .line 98
    .local v1, addressLines:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_c

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_c

    .line 101
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 102
    .local v0, address:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_43

    .line 104
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    :cond_43
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_c
.end method

.method public static getGoogleReviewStory(Lcom/google/api/services/plusi/model/SimpleProfile;)Lcom/google/api/services/plusi/model/GoogleReviewsProto;
    .registers 2
    .parameter "profile"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->page:Lcom/google/api/services/plusi/model/Page;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/Page;->localInfo:Lcom/google/api/services/plusi/model/LocalEntityInfo;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/LocalEntityInfo;->paper:Lcom/google/api/services/plusi/model/FrontendPaperProto;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/FrontendPaperProto;->googleReviews:Lcom/google/api/services/plusi/model/GoogleReviewsProto;

    return-object v0
.end method

.method public static getHomepageUrl(Lcom/google/api/services/plusi/model/SimpleProfile;)Lcom/google/api/services/plusi/model/PlacePageLink;
    .registers 3
    .parameter "profile"

    .prologue
    .line 256
    iget-object v1, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->page:Lcom/google/api/services/plusi/model/Page;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/Page;->localInfo:Lcom/google/api/services/plusi/model/LocalEntityInfo;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/LocalEntityInfo;->paper:Lcom/google/api/services/plusi/model/FrontendPaperProto;

    iget-object v0, v1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->authorityPage:Lcom/google/api/services/plusi/model/AuthorityPageProto;

    .line 257
    .local v0, authorityPage:Lcom/google/api/services/plusi/model/AuthorityPageProto;
    if-nez v0, :cond_c

    .line 258
    const/4 v1, 0x0

    .line 260
    :goto_b
    return-object v1

    :cond_c
    iget-object v1, v0, Lcom/google/api/services/plusi/model/AuthorityPageProto;->authorityLink:Lcom/google/api/services/plusi/model/PlacePageLink;

    goto :goto_b
.end method

.method public static getKnownForTerms(Lcom/google/api/services/plusi/model/SimpleProfile;)Ljava/util/List;
    .registers 2
    .parameter "profile"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/services/plusi/model/SimpleProfile;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->page:Lcom/google/api/services/plusi/model/Page;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/Page;->localInfo:Lcom/google/api/services/plusi/model/LocalEntityInfo;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/LocalEntityInfo;->paper:Lcom/google/api/services/plusi/model/FrontendPaperProto;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/FrontendPaperProto;->knownForTerms:Lcom/google/api/services/plusi/model/KnownForTermsProto;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->page:Lcom/google/api/services/plusi/model/Page;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/Page;->localInfo:Lcom/google/api/services/plusi/model/LocalEntityInfo;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/LocalEntityInfo;->paper:Lcom/google/api/services/plusi/model/FrontendPaperProto;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/FrontendPaperProto;->knownForTerms:Lcom/google/api/services/plusi/model/KnownForTermsProto;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/KnownForTermsProto;->term:Ljava/util/List;

    if-nez v0, :cond_1b

    .line 195
    :cond_16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 197
    :goto_1a
    return-object v0

    :cond_1b
    iget-object v0, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->page:Lcom/google/api/services/plusi/model/Page;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/Page;->localInfo:Lcom/google/api/services/plusi/model/LocalEntityInfo;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/LocalEntityInfo;->paper:Lcom/google/api/services/plusi/model/FrontendPaperProto;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/FrontendPaperProto;->knownForTerms:Lcom/google/api/services/plusi/model/KnownForTermsProto;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/KnownForTermsProto;->term:Ljava/util/List;

    goto :goto_1a
.end method

.method public static getOpeningHoursFull(Lcom/google/api/services/plusi/model/SimpleProfile;)Ljava/lang/String;
    .registers 9
    .parameter "profile"

    .prologue
    const/4 v6, 0x0

    .line 233
    iget-object v7, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->page:Lcom/google/api/services/plusi/model/Page;

    iget-object v7, v7, Lcom/google/api/services/plusi/model/Page;->localInfo:Lcom/google/api/services/plusi/model/LocalEntityInfo;

    iget-object v7, v7, Lcom/google/api/services/plusi/model/LocalEntityInfo;->paper:Lcom/google/api/services/plusi/model/FrontendPaperProto;

    iget-object v5, v7, Lcom/google/api/services/plusi/model/FrontendPaperProto;->openingHours:Lcom/google/api/services/plusi/model/OpeningHoursProto;

    .line 234
    .local v5, openingHours:Lcom/google/api/services/plusi/model/OpeningHoursProto;
    if-eqz v5, :cond_17

    iget-object v7, v5, Lcom/google/api/services/plusi/model/OpeningHoursProto;->day:Ljava/util/List;

    if-eqz v7, :cond_17

    iget-object v7, v5, Lcom/google/api/services/plusi/model/OpeningHoursProto;->day:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_18

    .line 252
    :cond_17
    :goto_17
    return-object v6

    .line 237
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    .line 239
    .local v3, firstDay:Z
    iget-object v7, v5, Lcom/google/api/services/plusi/model/OpeningHoursProto;->day:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_24
    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_42

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/services/plusi/model/OpeningHoursProtoDay;

    .line 240
    .local v1, day:Lcom/google/api/services/plusi/model/OpeningHoursProtoDay;
    invoke-static {v1}, Lcom/google/android/apps/plus/content/EsLocalPageData;->buildOpeningHoursStringForADay(Lcom/google/api/services/plusi/model/OpeningHoursProtoDay;)Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, dayOpeningHours:Ljava/lang/String;
    if-eqz v2, :cond_24

    .line 242
    if-nez v3, :cond_3d

    .line 243
    const-string v7, "\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :cond_3d
    const/4 v3, 0x0

    .line 246
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 249
    .end local v1           #day:Lcom/google/api/services/plusi/model/OpeningHoursProtoDay;
    .end local v2           #dayOpeningHours:Ljava/lang/String;
    :cond_42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_17

    .line 252
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_17
.end method

.method public static getOpeningHoursSummary(Lcom/google/api/services/plusi/model/SimpleProfile;)Ljava/lang/String;
    .registers 3
    .parameter "profile"

    .prologue
    .line 201
    iget-object v1, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->page:Lcom/google/api/services/plusi/model/Page;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/Page;->localInfo:Lcom/google/api/services/plusi/model/LocalEntityInfo;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/LocalEntityInfo;->paper:Lcom/google/api/services/plusi/model/FrontendPaperProto;

    iget-object v0, v1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->openingHours:Lcom/google/api/services/plusi/model/OpeningHoursProto;

    .line 202
    .local v0, openingHours:Lcom/google/api/services/plusi/model/OpeningHoursProto;
    if-eqz v0, :cond_e

    iget-object v1, v0, Lcom/google/api/services/plusi/model/OpeningHoursProto;->today:Lcom/google/api/services/plusi/model/OpeningHoursProtoDay;

    if-nez v1, :cond_10

    .line 203
    :cond_e
    const/4 v1, 0x0

    .line 205
    :goto_f
    return-object v1

    :cond_10
    iget-object v1, v0, Lcom/google/api/services/plusi/model/OpeningHoursProto;->today:Lcom/google/api/services/plusi/model/OpeningHoursProtoDay;

    invoke-static {v1}, Lcom/google/android/apps/plus/content/EsLocalPageData;->buildOpeningHoursStringForADay(Lcom/google/api/services/plusi/model/OpeningHoursProtoDay;)Ljava/lang/String;

    move-result-object v1

    goto :goto_f
.end method

.method public static getPhoneNumber(Lcom/google/api/services/plusi/model/SimpleProfile;)Ljava/lang/String;
    .registers 3
    .parameter "profile"

    .prologue
    const/4 v0, 0x0

    .line 110
    iget-object v1, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->page:Lcom/google/api/services/plusi/model/Page;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/Page;->localInfo:Lcom/google/api/services/plusi/model/LocalEntityInfo;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/LocalEntityInfo;->paper:Lcom/google/api/services/plusi/model/FrontendPaperProto;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->phone:Lcom/google/api/services/plusi/model/PhoneProto;

    if-nez v1, :cond_c

    .line 116
    :cond_b
    :goto_b
    return-object v0

    .line 113
    :cond_c
    iget-object v1, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->page:Lcom/google/api/services/plusi/model/Page;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/Page;->localInfo:Lcom/google/api/services/plusi/model/LocalEntityInfo;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/LocalEntityInfo;->paper:Lcom/google/api/services/plusi/model/FrontendPaperProto;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/FrontendPaperProto;->phone:Lcom/google/api/services/plusi/model/PhoneProto;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/PhoneProto;->phoneNumber:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_b

    .line 116
    iget-object v0, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->page:Lcom/google/api/services/plusi/model/Page;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/Page;->localInfo:Lcom/google/api/services/plusi/model/LocalEntityInfo;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/LocalEntityInfo;->paper:Lcom/google/api/services/plusi/model/FrontendPaperProto;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/FrontendPaperProto;->phone:Lcom/google/api/services/plusi/model/PhoneProto;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/PhoneProto;->phoneNumber:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/plusi/model/PlacePagePhoneNumber;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/PlacePagePhoneNumber;->formattedPhone:Ljava/lang/String;

    goto :goto_b
.end method

.method public static getPriceLabel(Lcom/google/api/services/plusi/model/SimpleProfile;)Ljava/lang/String;
    .registers 3
    .parameter "profile"

    .prologue
    .line 151
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsLocalPageData;->getPriceStory(Lcom/google/api/services/plusi/model/SimpleProfile;)Lcom/google/api/services/plusi/model/AttributeProto;

    move-result-object v0

    .line 152
    .local v0, priceAttribute:Lcom/google/api/services/plusi/model/AttributeProto;
    if-eqz v0, :cond_9

    iget-object v1, v0, Lcom/google/api/services/plusi/model/AttributeProto;->labelDisplay:Ljava/lang/String;

    :goto_8
    return-object v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method private static getPriceStory(Lcom/google/api/services/plusi/model/SimpleProfile;)Lcom/google/api/services/plusi/model/AttributeProto;
    .registers 2
    .parameter "profile"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->page:Lcom/google/api/services/plusi/model/Page;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/Page;->localInfo:Lcom/google/api/services/plusi/model/LocalEntityInfo;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/LocalEntityInfo;->paper:Lcom/google/api/services/plusi/model/FrontendPaperProto;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/FrontendPaperProto;->priceContinuous:Lcom/google/api/services/plusi/model/AttributeProto;

    if-eqz v0, :cond_13

    .line 144
    iget-object v0, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->page:Lcom/google/api/services/plusi/model/Page;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/Page;->localInfo:Lcom/google/api/services/plusi/model/LocalEntityInfo;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/LocalEntityInfo;->paper:Lcom/google/api/services/plusi/model/FrontendPaperProto;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/FrontendPaperProto;->priceContinuous:Lcom/google/api/services/plusi/model/AttributeProto;

    .line 146
    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->page:Lcom/google/api/services/plusi/model/Page;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/Page;->localInfo:Lcom/google/api/services/plusi/model/LocalEntityInfo;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/LocalEntityInfo;->paper:Lcom/google/api/services/plusi/model/FrontendPaperProto;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/FrontendPaperProto;->price:Lcom/google/api/services/plusi/model/AttributeProto;

    goto :goto_12
.end method

.method public static getPriceValue(Lcom/google/api/services/plusi/model/SimpleProfile;)Ljava/lang/String;
    .registers 3
    .parameter "profile"

    .prologue
    .line 156
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsLocalPageData;->getPriceStory(Lcom/google/api/services/plusi/model/SimpleProfile;)Lcom/google/api/services/plusi/model/AttributeProto;

    move-result-object v0

    .line 157
    .local v0, priceAttribute:Lcom/google/api/services/plusi/model/AttributeProto;
    if-eqz v0, :cond_b

    iget-object v1, v0, Lcom/google/api/services/plusi/model/AttributeProto;->value:Lcom/google/api/services/plusi/model/AttributeProtoCanonicalValue;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/AttributeProtoCanonicalValue;->priceLevel:Ljava/lang/String;

    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public static getReviewCount(Lcom/google/api/services/plusi/model/SimpleProfile;)I
    .registers 2
    .parameter "profile"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->page:Lcom/google/api/services/plusi/model/Page;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/Page;->localInfo:Lcom/google/api/services/plusi/model/LocalEntityInfo;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/LocalEntityInfo;->paper:Lcom/google/api/services/plusi/model/FrontendPaperProto;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/FrontendPaperProto;->reviewsHeadline:Lcom/google/api/services/plusi/model/ReviewsHeadlineProto;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->page:Lcom/google/api/services/plusi/model/Page;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/Page;->localInfo:Lcom/google/api/services/plusi/model/LocalEntityInfo;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/LocalEntityInfo;->paper:Lcom/google/api/services/plusi/model/FrontendPaperProto;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/FrontendPaperProto;->reviewsHeadline:Lcom/google/api/services/plusi/model/ReviewsHeadlineProto;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/ReviewsHeadlineProto;->aggregatedReviews:Lcom/google/api/services/plusi/model/AggregatedReviewsProto;

    if-eqz v0, :cond_27

    .line 163
    iget-object v0, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->page:Lcom/google/api/services/plusi/model/Page;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/Page;->localInfo:Lcom/google/api/services/plusi/model/LocalEntityInfo;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/LocalEntityInfo;->paper:Lcom/google/api/services/plusi/model/FrontendPaperProto;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/FrontendPaperProto;->reviewsHeadline:Lcom/google/api/services/plusi/model/ReviewsHeadlineProto;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/ReviewsHeadlineProto;->aggregatedReviews:Lcom/google/api/services/plusi/model/AggregatedReviewsProto;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/AggregatedReviewsProto;->numReviews:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 165
    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public static getTitle(Lcom/google/api/services/plusi/model/SimpleProfile;)Ljava/lang/String;
    .registers 2
    .parameter "profile"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->page:Lcom/google/api/services/plusi/model/Page;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/Page;->localInfo:Lcom/google/api/services/plusi/model/LocalEntityInfo;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/LocalEntityInfo;->paper:Lcom/google/api/services/plusi/model/FrontendPaperProto;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/FrontendPaperProto;->title:Lcom/google/api/services/plusi/model/TitleProto;

    if-eqz v0, :cond_17

    .line 81
    iget-object v0, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->page:Lcom/google/api/services/plusi/model/Page;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/Page;->localInfo:Lcom/google/api/services/plusi/model/LocalEntityInfo;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/LocalEntityInfo;->paper:Lcom/google/api/services/plusi/model/FrontendPaperProto;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/FrontendPaperProto;->title:Lcom/google/api/services/plusi/model/TitleProto;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/TitleProto;->linkedTitle:Lcom/google/api/services/plusi/model/PlacePageLink;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/PlacePageLink;->text:Ljava/lang/String;

    .line 83
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static getUserActivityStory(Lcom/google/api/services/plusi/model/SimpleProfile;)Lcom/google/api/services/plusi/model/CirclePlaceActivityProto;
    .registers 2
    .parameter "profile"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->page:Lcom/google/api/services/plusi/model/Page;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/Page;->localInfo:Lcom/google/api/services/plusi/model/LocalEntityInfo;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/LocalEntityInfo;->paper:Lcom/google/api/services/plusi/model/FrontendPaperProto;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/FrontendPaperProto;->userActivity:Lcom/google/api/services/plusi/model/CirclePlaceActivityProto;

    return-object v0
.end method

.method public static getZagatEditorialReviewText(Lcom/google/api/services/plusi/model/SimpleProfile;)Ljava/lang/String;
    .registers 2
    .parameter "profile"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->page:Lcom/google/api/services/plusi/model/Page;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/Page;->localInfo:Lcom/google/api/services/plusi/model/LocalEntityInfo;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/LocalEntityInfo;->paper:Lcom/google/api/services/plusi/model/FrontendPaperProto;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/FrontendPaperProto;->zagatEditorialReview:Lcom/google/api/services/plusi/model/Description;

    if-nez v0, :cond_c

    .line 133
    const/4 v0, 0x0

    .line 135
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->page:Lcom/google/api/services/plusi/model/Page;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/Page;->localInfo:Lcom/google/api/services/plusi/model/LocalEntityInfo;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/LocalEntityInfo;->paper:Lcom/google/api/services/plusi/model/FrontendPaperProto;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/FrontendPaperProto;->zagatEditorialReview:Lcom/google/api/services/plusi/model/Description;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/Description;->text:Ljava/lang/String;

    goto :goto_b
.end method

.method public static isLocalPage(Lcom/google/api/services/plusi/model/SimpleProfile;)Z
    .registers 4
    .parameter "profile"

    .prologue
    const/4 v0, 0x0

    .line 43
    if-nez p0, :cond_4

    .line 58
    :cond_3
    :goto_3
    return v0

    .line 46
    :cond_4
    const-string v1, "PLUSPAGE"

    iget-object v2, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->profileType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 49
    iget-object v1, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->page:Lcom/google/api/services/plusi/model/Page;

    if-eqz v1, :cond_3

    .line 52
    const-string v1, "LOCAL"

    iget-object v2, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->page:Lcom/google/api/services/plusi/model/Page;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/Page;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 55
    iget-object v1, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->page:Lcom/google/api/services/plusi/model/Page;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/Page;->localInfo:Lcom/google/api/services/plusi/model/LocalEntityInfo;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->page:Lcom/google/api/services/plusi/model/Page;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/Page;->localInfo:Lcom/google/api/services/plusi/model/LocalEntityInfo;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/LocalEntityInfo;->paper:Lcom/google/api/services/plusi/model/FrontendPaperProto;

    if-eqz v1, :cond_3

    .line 58
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static isUnclaimed(Lcom/google/api/services/plusi/model/SimpleProfile;)Z
    .registers 3
    .parameter "profile"

    .prologue
    .line 76
    const-string v0, "UNCLAIMED"

    iget-object v1, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->page:Lcom/google/api/services/plusi/model/Page;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/Page;->localInfo:Lcom/google/api/services/plusi/model/LocalEntityInfo;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/LocalEntityInfo;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isZagatRated(Lcom/google/api/services/plusi/model/ZagatAspectRatingsProto;)Z
    .registers 3
    .parameter "editorialScores"

    .prologue
    .line 139
    const-string v0, "ZAGAT_OFFICIAL"

    iget-object v1, p0, Lcom/google/api/services/plusi/model/ZagatAspectRatingsProto;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
