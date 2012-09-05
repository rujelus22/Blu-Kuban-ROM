.class public Lcom/vlingo/client/localsearch/service/LocalSearchListing;
.super Ljava/lang/Object;
.source "LocalSearchListing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/localsearch/service/LocalSearchListing$Field;,
        Lcom/vlingo/client/localsearch/service/LocalSearchListing$Review;
    }
.end annotation


# static fields
.field public static final FIELD_ADDR_CITY:Ljava/lang/String; = "City"

.field public static final FIELD_ADDR_STATE:Ljava/lang/String; = "State"

.field public static final FIELD_ADDR_STREET_NAME:Ljava/lang/String; = "StName"

.field public static final FIELD_ADDR_STREET_NUMBER:Ljava/lang/String; = "StNum"

.field public static final FIELD_ADDR_ZIP:Ljava/lang/String; = "Zip"

.field public static final FIELD_CAPTION:Ljava/lang/String; = "Caption"

.field public static final FIELD_CLICK_URL:Ljava/lang/String; = "ClickUrl"

.field public static final FIELD_DISTANCE:Ljava/lang/String; = "Dist"

.field public static final FIELD_IMAGE_URL:Ljava/lang/String; = "ImgUrl"

.field public static final FIELD_LATITUDE:Ljava/lang/String; = "Lat"

.field public static final FIELD_LISTING_ID:Ljava/lang/String; = "ListingID"

.field public static final FIELD_LONGITUDE:Ljava/lang/String; = "Lon"

.field public static final FIELD_NAME:Ljava/lang/String; = "Name"

.field public static final FIELD_PHONE_NUMBER:Ljava/lang/String; = "PhoneNumber"

.field public static final FIELD_PROVIDER:Ljava/lang/String; = "Provider"

.field public static final FIELD_RATING:Ljava/lang/String; = "Rating"

.field public static final FIELD_RESERVE_URL:Ljava/lang/String; = "ReservationURL"

.field public static final FIELD_REVIEW_AUTHOR:Ljava/lang/String; = "Author"

.field public static final FIELD_REVIEW_BODY:Ljava/lang/String; = "Body"

.field public static final FIELD_REVIEW_COUNT:Ljava/lang/String; = "RevCnt"

.field public static final FIELD_REVIEW_DATE:Ljava/lang/String; = "Date"

.field public static final FIELD_REVIEW_ID:Ljava/lang/String; = "Id"

.field public static final FIELD_REVIEW_RATING:Ljava/lang/String; = "Rating"

.field public static final FIELD_REVIEW_TITLE:Ljava/lang/String; = "Title"

.field public static final FIELD_SYNOPSIS:Ljava/lang/String; = "Synopsis"

.field public static final FIELD_TYPE:Ljava/lang/String; = "Type"

.field public static final FIELD_URL:Ljava/lang/String; = "Url"

.field public static final TYPE_ORGANIC:Ljava/lang/String; = "Reg"

.field public static final TYPE_SPONSORED:Ljava/lang/String; = "Spon"


# instance fields
.field m_reviews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/localsearch/service/LocalSearchListing$Review;",
            ">;"
        }
    .end annotation
.end field

.field private m_values:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/vlingo/client/localsearch/service/LocalSearchListing$Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "listingID"

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->m_reviews:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->m_values:Ljava/util/Hashtable;

    .line 113
    const-string v0, "ListingID"

    invoke-virtual {p0, v0, p1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method private getAddressLine1(Ljava/lang/StringBuilder;)V
    .registers 3
    .parameter "sb"

    .prologue
    .line 232
    const-string v0, "StName"

    invoke-virtual {p0, v0}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->hasValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 233
    const-string v0, "StNum"

    invoke-virtual {p0, v0}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->hasValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 234
    const-string v0, "StNum"

    invoke-virtual {p0, v0}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :cond_1e
    const-string v0, "StName"

    invoke-virtual {p0, v0}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :cond_27
    return-void
.end method

.method private getAddressLine2(Ljava/lang/StringBuilder;)V
    .registers 3
    .parameter "sb"

    .prologue
    .line 242
    const-string v0, "City"

    invoke-virtual {p0, v0}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->hasValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 243
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_13

    .line 244
    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_13
    const-string v0, "City"

    invoke-virtual {p0, v0}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    :cond_1c
    const-string v0, "State"

    invoke-virtual {p0, v0}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->hasValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 249
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2f

    .line 250
    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :cond_2f
    const-string v0, "State"

    invoke-virtual {p0, v0}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    :cond_38
    return-void
.end method

.method private getReviewById(Ljava/lang/String;)Lcom/vlingo/client/localsearch/service/LocalSearchListing$Review;
    .registers 6
    .parameter "reviewId"

    .prologue
    .line 355
    invoke-static {p1}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 356
    iget-object v3, p0, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->m_reviews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 357
    .local v1, numReviews:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    if-ge v0, v1, :cond_23

    .line 358
    iget-object v3, p0, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->m_reviews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vlingo/client/localsearch/service/LocalSearchListing$Review;

    .line 359
    .local v2, rev:Lcom/vlingo/client/localsearch/service/LocalSearchListing$Review;
    iget-object v3, v2, Lcom/vlingo/client/localsearch/service/LocalSearchListing$Review;->id:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 364
    .end local v0           #i:I
    .end local v1           #numReviews:I
    .end local v2           #rev:Lcom/vlingo/client/localsearch/service/LocalSearchListing$Review;
    :goto_1f
    return-object v2

    .line 357
    .restart local v0       #i:I
    .restart local v1       #numReviews:I
    .restart local v2       #rev:Lcom/vlingo/client/localsearch/service/LocalSearchListing$Review;
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 364
    .end local v0           #i:I
    .end local v1           #numReviews:I
    .end local v2           #rev:Lcom/vlingo/client/localsearch/service/LocalSearchListing$Review;
    :cond_23
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method private removeReviewById(Ljava/lang/String;)V
    .registers 4
    .parameter "reviewId"

    .prologue
    .line 348
    invoke-direct {p0, p1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getReviewById(Ljava/lang/String;)Lcom/vlingo/client/localsearch/service/LocalSearchListing$Review;

    move-result-object v0

    .line 349
    .local v0, rev:Lcom/vlingo/client/localsearch/service/LocalSearchListing$Review;
    if-eqz v0, :cond_b

    .line 350
    iget-object v1, p0, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->m_reviews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 352
    :cond_b
    return-void
.end method


# virtual methods
.method addReview(Lcom/vlingo/client/localsearch/service/LocalSearchListing$Review;)V
    .registers 3
    .parameter "rev"

    .prologue
    .line 343
    iget-object v0, p1, Lcom/vlingo/client/localsearch/service/LocalSearchListing$Review;->id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->removeReviewById(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->m_reviews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    return-void
.end method

.method public areMoreDetailsAvailable(Ljava/lang/String;)Z
    .registers 4
    .parameter "fieldName"

    .prologue
    .line 293
    iget-object v1, p0, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->m_values:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/localsearch/service/LocalSearchListing$Field;

    .line 294
    .local v0, f:Lcom/vlingo/client/localsearch/service/LocalSearchListing$Field;
    if-eqz v0, :cond_d

    .line 295
    iget-boolean v1, v0, Lcom/vlingo/client/localsearch/service/LocalSearchListing$Field;->isMoreAvailable:Z

    .line 297
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public getAddressLine1()Ljava/lang/String;
    .registers 3

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getAddressLine1(Ljava/lang/StringBuilder;)V

    .line 222
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAddressLine2()Ljava/lang/String;
    .registers 3

    .prologue
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getAddressLine2(Ljava/lang/StringBuilder;)V

    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCityState()Ljava/lang/String;
    .registers 3

    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "City"

    invoke-virtual {p0, v1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->hasValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_18

    .line 206
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    :cond_18
    const-string v1, "City"

    invoke-virtual {p0, v1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string v1, "State"

    invoke-virtual {p0, v1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->hasValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_34

    .line 211
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :cond_34
    const-string v1, "State"

    invoke-virtual {p0, v1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :cond_3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDistanceString()Ljava/lang/String;
    .registers 8

    .prologue
    .line 168
    const-string v4, "Dist"

    invoke-virtual {p0, v4}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->hasValue(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 169
    const-string v4, "Dist"

    const-wide/high16 v5, -0x4010

    invoke-virtual {p0, v4, v5, v6}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 170
    .local v0, distance:D
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v4, "######.##"

    invoke-direct {v2, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 171
    .local v2, distanceFormat:Ljava/text/DecimalFormat;
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09030f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, units:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 174
    .end local v0           #distance:D
    .end local v2           #distanceFormat:Ljava/text/DecimalFormat;
    .end local v3           #units:Ljava/lang/String;
    :goto_3b
    return-object v4

    :cond_3c
    const-string v4, ""

    goto :goto_3b
.end method

.method public getDouble(Ljava/lang/String;D)D
    .registers 6
    .parameter "fieldName"
    .parameter "defaultValue"

    .prologue
    .line 315
    invoke-virtual {p0, p1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->hasValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 316
    invoke-virtual {p0, p1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, value:Ljava/lang/String;
    :try_start_a
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_f

    move-result-wide p2

    .line 325
    .end local v0           #value:Ljava/lang/String;
    .end local p2
    :cond_e
    :goto_e
    return-wide p2

    .line 320
    .restart local v0       #value:Ljava/lang/String;
    .restart local p2
    :catch_f
    move-exception v1

    goto :goto_e
.end method

.method public getFullAddress()Ljava/lang/String;
    .registers 3

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "StName"

    invoke-virtual {p0, v1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->hasValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 180
    const-string v1, "StNum"

    invoke-virtual {p0, v1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->hasValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 181
    const-string v1, "StNum"

    invoke-virtual {p0, v1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_23
    const-string v1, "StName"

    invoke-virtual {p0, v1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :cond_2c
    const-string v1, "City"

    invoke-virtual {p0, v1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->hasValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3f

    .line 188
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_3f
    const-string v1, "City"

    invoke-virtual {p0, v1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string v1, "State"

    invoke-virtual {p0, v1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->hasValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5b

    .line 193
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :cond_5b
    const-string v1, "State"

    invoke-virtual {p0, v1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :cond_64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getInteger(Ljava/lang/String;I)I
    .registers 5
    .parameter "fieldName"
    .parameter "defaultValue"

    .prologue
    .line 329
    invoke-virtual {p0, p1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->hasValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 330
    invoke-virtual {p0, p1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, value:Ljava/lang/String;
    :try_start_a
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_f

    move-result p2

    .line 339
    .end local v0           #value:Ljava/lang/String;
    .end local p2
    :cond_e
    :goto_e
    return p2

    .line 334
    .restart local v0       #value:Ljava/lang/String;
    .restart local p2
    :catch_f
    move-exception v1

    goto :goto_e
.end method

.method public getListingID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    const-string v0, "ListingID"

    invoke-virtual {p0, v0}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 156
    const-string v0, "Name"

    invoke-virtual {p0, v0}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 160
    const-string v0, "PhoneNumber"

    invoke-virtual {p0, v0}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumberFormatted()Ljava/lang/String;
    .registers 2

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRating()D
    .registers 4

    .prologue
    .line 137
    const-string v0, "Rating"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getReview(I)Lcom/vlingo/client/localsearch/service/LocalSearchListing$Review;
    .registers 3
    .parameter "index"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->m_reviews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/localsearch/service/LocalSearchListing$Review;

    return-object v0
.end method

.method public getReviewCount()I
    .registers 3

    .prologue
    .line 133
    const-string v0, "RevCnt"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getInteger(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getReviews()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/localsearch/service/LocalSearchListing$Review;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->m_reviews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "fieldName"

    .prologue
    .line 301
    invoke-virtual {p0, p1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->hasValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 302
    iget-object v0, p0, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->m_values:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/localsearch/service/LocalSearchListing$Field;

    iget-object v0, v0, Lcom/vlingo/client/localsearch/service/LocalSearchListing$Field;->value:Ljava/lang/String;

    .line 305
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public hasPhoneNumber()Z
    .registers 2

    .prologue
    .line 121
    const-string v0, "PhoneNumber"

    invoke-virtual {p0, v0}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->hasValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasReviews()Z
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->m_reviews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_e

    invoke-virtual {p0}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getReviewCount()I

    move-result v0

    if-lez v0, :cond_10

    .line 142
    :cond_e
    const/4 v0, 0x1

    .line 144
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public hasValue(Ljava/lang/String;)Z
    .registers 4
    .parameter "key"

    .prologue
    .line 260
    iget-object v1, p0, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->m_values:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 261
    iget-object v1, p0, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->m_values:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/localsearch/service/LocalSearchListing$Field;

    .line 262
    .local v0, field:Lcom/vlingo/client/localsearch/service/LocalSearchListing$Field;
    iget-object v1, v0, Lcom/vlingo/client/localsearch/service/LocalSearchListing$Field;->value:Ljava/lang/String;

    if-eqz v1, :cond_1e

    iget-object v1, v0, Lcom/vlingo/client/localsearch/service/LocalSearchListing$Field;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1e

    .line 263
    const/4 v1, 0x1

    .line 266
    .end local v0           #field:Lcom/vlingo/client/localsearch/service/LocalSearchListing$Field;
    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method public isOrganic()Z
    .registers 3

    .prologue
    .line 129
    const-string v0, "Reg"

    const-string v1, "Type"

    invoke-virtual {p0, v1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSponsored()Z
    .registers 3

    .prologue
    .line 125
    const-string v0, "Spon"

    const-string v1, "Type"

    invoke-virtual {p0, v1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public markValueAsAvailable(Ljava/lang/String;)V
    .registers 5
    .parameter "value"

    .prologue
    const/4 v2, 0x1

    .line 274
    iget-object v0, p0, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->m_values:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 275
    iget-object v0, p0, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->m_values:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/localsearch/service/LocalSearchListing$Field;

    iput-boolean v2, v0, Lcom/vlingo/client/localsearch/service/LocalSearchListing$Field;->isMoreAvailable:Z

    .line 279
    :goto_13
    return-void

    .line 277
    :cond_14
    iget-object v0, p0, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->m_values:Ljava/util/Hashtable;

    new-instance v1, Lcom/vlingo/client/localsearch/service/LocalSearchListing$Field;

    invoke-direct {v1, p0, v2}, Lcom/vlingo/client/localsearch/service/LocalSearchListing$Field;-><init>(Lcom/vlingo/client/localsearch/service/LocalSearchListing;Z)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->m_values:Ljava/util/Hashtable;

    new-instance v1, Lcom/vlingo/client/localsearch/service/LocalSearchListing$Field;

    invoke-direct {v1, p0, p2}, Lcom/vlingo/client/localsearch/service/LocalSearchListing$Field;-><init>(Lcom/vlingo/client/localsearch/service/LocalSearchListing;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    return-void
.end method
