.class public Lcom/google/android/finsky/utils/DocUtils;
.super Ljava/lang/Object;
.source "DocUtils.java"


# static fields
.field public static final DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

.field public static final PREFIX_TO_DOCUMENT_TYPE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v3, 0x1

    const/4 v5, 0x6

    const/4 v4, 0x2

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, "app"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v1, "album"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v1, "artist"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v1, "book"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v1, "device"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v1, "magazine"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v1, "magazineissue"

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v1, "movie"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v1, "song"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v1, "tvepisode"

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v1, "tvseason"

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v1, "tvshow"

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/google/android/finsky/utils/DocUtils;->PREFIX_TO_DOCUMENT_TYPE:Ljava/util/Map;

    .line 50
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    .line 51
    sget-object v1, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 52
    sget-object v1, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 53
    sget-object v1, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 54
    sget-object v1, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 55
    sget-object v1, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    const/16 v2, 0xe

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 56
    sget-object v1, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    const/16 v2, 0x10

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 57
    sget-object v1, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 58
    sget-object v1, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 59
    sget-object v1, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v7, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 60
    sget-object v1, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    const/16 v2, 0x14

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 61
    sget-object v1, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    const/16 v2, 0x13

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 62
    sget-object v1, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    const/16 v2, 0x12

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canRate(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/api/model/Document;)Z
    .registers 7
    .parameter "libraries"
    .parameter "document"

    .prologue
    const/4 v2, 0x1

    .line 93
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1a

    .line 94
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/library/Libraries;->getAppOwners(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 96
    .local v0, owners:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 98
    .end local v0           #owners:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    .end local v1           #packageName:Ljava/lang/String;
    :cond_1a
    :goto_1a
    return v2

    .line 96
    .restart local v0       #owners:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    .restart local v1       #packageName:Ljava/lang/String;
    :cond_1b
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method public static docidToBackend(Ljava/lang/String;)I
    .registers 6
    .parameter "docid"

    .prologue
    .line 71
    const-string v2, "[:-]"

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, parts:[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    .line 74
    const/4 v2, 0x3

    .line 79
    :goto_c
    return v2

    .line 77
    :cond_d
    :try_start_d
    sget-object v3, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/google/android/finsky/utils/DocUtils;->PREFIX_TO_DOCUMENT_TYPE:Ljava/util/Map;

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_21} :catch_23

    move-result v2

    goto :goto_c

    .line 78
    :catch_23
    move-exception v0

    .line 79
    .local v0, ex:Ljava/lang/Exception;
    const/4 v2, -0x1

    goto :goto_c
.end method

.method public static getAvailabilityRestrictionResourceId(Lcom/google/android/finsky/api/model/Document;)I
    .registers 5
    .parameter "document"

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAvailabilityRestriction()I

    move-result v1

    .line 162
    .local v1, restriction:I
    const v0, 0x7f070203

    .line 163
    .local v0, resourceId:I
    packed-switch v1, :pswitch_data_48

    .line 187
    :goto_a
    :pswitch_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Item is not available. Reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    return v0

    .line 165
    :pswitch_24
    const v0, 0x7f070204

    .line 166
    goto :goto_a

    .line 168
    :pswitch_28
    const v0, 0x7f070205

    .line 169
    goto :goto_a

    .line 171
    :pswitch_2c
    const v0, 0x7f070206

    .line 172
    goto :goto_a

    .line 174
    :pswitch_30
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3b

    .line 175
    const v0, 0x7f070207

    goto :goto_a

    .line 177
    :cond_3b
    const v0, 0x7f070208

    .line 179
    goto :goto_a

    .line 181
    :pswitch_3f
    const v0, 0x7f070209

    .line 182
    goto :goto_a

    .line 184
    :pswitch_43
    const v0, 0x7f07020a

    goto :goto_a

    .line 163
    nop

    :pswitch_data_48
    .packed-switch 0x2
        :pswitch_24
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_43
        :pswitch_30
        :pswitch_28
        :pswitch_2c
        :pswitch_3f
    .end packed-switch
.end method

.method public static getListingOffer(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .registers 13
    .parameter "document"
    .parameter "dfeToc"
    .parameter "library"

    .prologue
    const/4 v9, 0x1

    .line 198
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v7

    const/16 v8, 0x10

    if-ne v7, v8, :cond_4d

    .line 200
    invoke-static {p0, p1, p2}, Lcom/google/android/finsky/utils/DocUtils;->getMagazineSubscriptions(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Ljava/util/List;

    move-result-object v6

    .line 203
    .local v6, subscriptions:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 204
    .local v5, subscriptionOffers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Common$Offer;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/api/model/Document;

    .line 205
    .local v4, subscription:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getAvailableOffers()Ljava/util/List;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_15

    .line 208
    .end local v4           #subscription:Lcom/google/android/finsky/api/model/Document;
    :cond_29
    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/google/android/finsky/utils/DocUtils;->getLowestPricedOffer(Ljava/util/List;Z)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v0

    .line 210
    .local v0, cheapestSubscription:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    if-nez v0, :cond_34

    .line 211
    invoke-static {v5, v9}, Lcom/google/android/finsky/utils/DocUtils;->getLowestPricedOffer(Ljava/util/List;Z)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v0

    .line 213
    :cond_34
    if-eqz v0, :cond_37

    .line 230
    .end local v0           #cheapestSubscription:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #subscriptionOffers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Common$Offer;>;"
    .end local v6           #subscriptions:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    :goto_36
    return-object v0

    .line 218
    .restart local v0       #cheapestSubscription:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #subscriptionOffers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Common$Offer;>;"
    .restart local v6       #subscriptions:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    :cond_37
    invoke-static {p0}, Lcom/google/android/finsky/utils/DocUtils;->getMagazineCurrentIssueDocument(Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    .line 219
    .local v1, currentIssue:Lcom/google/android/finsky/api/model/Document;
    if-eqz v1, :cond_4b

    .line 220
    invoke-static {v1, p1, p2}, Lcom/google/android/finsky/utils/DocUtils;->getMagazineIssueOffer(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v2

    .line 221
    .local v2, currentOffer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    if-eqz v2, :cond_4b

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedAmount()Z

    move-result v7

    if-eqz v7, :cond_4b

    move-object v0, v2

    .line 222
    goto :goto_36

    .line 226
    .end local v2           #currentOffer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :cond_4b
    const/4 v0, 0x0

    goto :goto_36

    .line 230
    .end local v0           #cheapestSubscription:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .end local v1           #currentIssue:Lcom/google/android/finsky/api/model/Document;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #subscriptionOffers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Common$Offer;>;"
    .end local v6           #subscriptions:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    :cond_4d
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAvailableOffers()Ljava/util/List;

    move-result-object v7

    invoke-static {v7, v9}, Lcom/google/android/finsky/utils/DocUtils;->getLowestPricedOffer(Ljava/util/List;Z)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v0

    goto :goto_36
.end method

.method public static getLowestPricedOffer(Ljava/util/List;Z)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .registers 12
    .parameter
    .parameter "freeOk"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Common$Offer;",
            ">;Z)",
            "Lcom/google/android/finsky/remoting/protos/Common$Offer;"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, offers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Common$Offer;>;"
    const/4 v5, 0x0

    .line 240
    .local v5, lowestPricedOffer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    const-wide v3, 0x7fffffffffffffffL

    .line 241
    .local v3, lowestPrice:J
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 242
    .local v6, offer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedAmount()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 245
    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getOfferType()I

    move-result v7

    .line 246
    .local v7, offerType:I
    const/4 v8, 0x1

    if-eq v7, v8, :cond_2c

    const/4 v8, 0x7

    if-eq v7, v8, :cond_2c

    const/4 v8, 0x3

    if-eq v7, v8, :cond_2c

    const/4 v8, 0x4

    if-ne v7, v8, :cond_a

    .line 251
    :cond_2c
    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getMicros()J

    move-result-wide v0

    .line 252
    .local v0, currentPrice:J
    if-nez p1, :cond_38

    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-eqz v8, :cond_a

    .line 255
    :cond_38
    cmp-long v8, v0, v3

    if-gez v8, :cond_a

    .line 256
    move-wide v3, v0

    .line 257
    move-object v5, v6

    goto :goto_a

    .line 260
    .end local v0           #currentPrice:J
    .end local v6           #offer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .end local v7           #offerType:I
    :cond_3f
    return-object v5
.end method

.method public static getMagazineCurrentIssueDocument(Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/api/model/Document;
    .registers 4
    .parameter "doc"

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_25

    .line 285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This method should be called only on magazine docs. Passed type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_25
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2d

    .line 290
    const/4 v0, 0x0

    .line 292
    :goto_2c
    return-object v0

    :cond_2d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/api/model/Document;->getChildAt(I)Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    goto :goto_2c
.end method

.method public static getMagazineIssueOffer(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .registers 7
    .parameter "issueDoc"
    .parameter "dfeToc"
    .parameter "library"

    .prologue
    const/4 v1, 0x0

    .line 270
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v2

    const/16 v3, 0x11

    if-eq v2, v3, :cond_a

    .line 280
    :cond_9
    :goto_9
    return-object v1

    .line 274
    :cond_a
    invoke-static {p0, p1, p2}, Lcom/google/android/finsky/utils/LibraryUtils;->isAvailable(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 275
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAvailableOffers()Ljava/util/List;

    move-result-object v0

    .line 276
    .local v0, currentOffers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Common$Offer;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 277
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_9
.end method

.method public static getMagazineSubscriptions(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Ljava/util/List;
    .registers 7
    .parameter "doc"
    .parameter "dfeToc"
    .parameter "library"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/api/model/Document;",
            "Lcom/google/android/finsky/api/model/DfeToc;",
            "Lcom/google/android/finsky/library/Library;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasSubscriptions()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 302
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 303
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getSubscriptionsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/api/model/Document;

    .line 304
    .local v2, subscription:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v2, p1, p2}, Lcom/google/android/finsky/utils/LibraryUtils;->isAvailable(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getAvailableOffers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_12

    .line 306
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 312
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    .end local v2           #subscription:Lcom/google/android/finsky/api/model/Document;
    :cond_32
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :cond_36
    return-object v1
.end method

.method public static getSubscriptionAppId(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "subscriptionDocId"

    .prologue
    const/4 v2, 0x0

    const/16 v4, 0x3a

    .line 108
    const-string v3, "subs:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 116
    :cond_b
    :goto_b
    return-object v2

    .line 111
    :cond_c
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 112
    .local v1, start:I
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 113
    .local v0, end:I
    if-lez v1, :cond_b

    if-ge v1, v0, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_b

    .line 114
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_b
.end method

.method public static hasAutoRenewingSubscriptions(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/api/model/Document;)Z
    .registers 10
    .parameter "libraries"
    .parameter "document"

    .prologue
    .line 124
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_45

    .line 125
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->hasAppSubscriptions()Z

    move-result v6

    if-eqz v6, :cond_45

    .line 126
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppSubscriptionsList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/api/model/Document;

    .line 127
    .local v4, subscriptionDoc:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual {p0}, Lcom/google/android/finsky/library/Libraries;->getAccountLibraries()Ljava/util/Collection;

    move-result-object v0

    .line 128
    .local v0, accountLibraries:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/library/AccountLibrary;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/library/AccountLibrary;

    .line 129
    .local v1, accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/android/finsky/library/AccountLibrary;->getAppSubscriptionEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibrarySubscriptionEntry;

    move-result-object v5

    .line 131
    .local v5, subscriptionEntry:Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    if-eqz v5, :cond_29

    iget-boolean v6, v5, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->isAutoRenewing:Z

    if-eqz v6, :cond_29

    .line 132
    const/4 v6, 0x1

    .line 138
    .end local v0           #accountLibraries:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/library/AccountLibrary;>;"
    .end local v1           #accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #subscriptionDoc:Lcom/google/android/finsky/api/model/Document;
    .end local v5           #subscriptionEntry:Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    :goto_44
    return v6

    :cond_45
    const/4 v6, 0x0

    goto :goto_44
.end method

.method public static packageHasAutoRenewingSubscriptions(Lcom/google/android/finsky/library/Libraries;Ljava/lang/String;)Z
    .registers 9
    .parameter "libraries"
    .parameter "packageName"

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/google/android/finsky/library/Libraries;->getAccountLibraries()Ljava/util/Collection;

    move-result-object v0

    .line 147
    .local v0, accountLibraries:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/library/AccountLibrary;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/library/AccountLibrary;

    .line 148
    .local v1, accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    invoke-virtual {v1}, Lcom/google/android/finsky/library/AccountLibrary;->getAppSubscriptionsList()Ljava/util/List;

    move-result-object v5

    .line 150
    .local v5, subscriptionList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/library/LibrarySubscriptionEntry;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;

    .line 151
    .local v4, subsEntry:Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    iget-object v6, v4, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->docId:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/finsky/utils/DocUtils;->getSubscriptionAppId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    iget-boolean v6, v4, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->isAutoRenewing:Z

    if-eqz v6, :cond_1c

    .line 153
    const/4 v6, 0x1

    .line 157
    .end local v1           #accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #subsEntry:Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    .end local v5           #subscriptionList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/library/LibrarySubscriptionEntry;>;"
    :goto_39
    return v6

    :cond_3a
    const/4 v6, 0x0

    goto :goto_39
.end method
