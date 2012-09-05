.class public Lcom/google/android/finsky/activities/CorporaHomeFragment;
.super Lcom/google/android/finsky/fragments/UrlBasedPageFragment;
.source "CorporaHomeFragment.java"


# static fields
.field private static final GRID_SEQUENCE_4xN:[Lcom/google/android/finsky/adapters/GridSlotSize;

.field private static final GRID_SEQUENCE_6xN:[Lcom/google/android/finsky/adapters/GridSlotSize;

.field private static final GRID_SEQUENCE_6xN_PROMO_HEAVY:[Lcom/google/android/finsky/adapters/GridSlotSize;

.field private static final GRID_SEQUENCE_8xN:[Lcom/google/android/finsky/adapters/GridSlotSize;


# instance fields
.field private mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

.field private mGridSequenceDataAdded:Z

.field private mGridSequencer:Lcom/google/android/finsky/layout/GridSequencer;

.field private mHaveLoggedBefore:Z

.field private mPromoListData:Lcom/google/android/finsky/api/model/DfeList;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/android/finsky/adapters/GridSlotSize;

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_4x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2xN_TOC:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x1:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_4x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_4x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->GRID_SEQUENCE_4xN:[Lcom/google/android/finsky/adapters/GridSlotSize;

    .line 59
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/android/finsky/adapters/GridSlotSize;

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_4x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2xN_TOC:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x1:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_4x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_4x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->GRID_SEQUENCE_6xN:[Lcom/google/android/finsky/adapters/GridSlotSize;

    .line 71
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/google/android/finsky/adapters/GridSlotSize;

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_4x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2xN_TOC:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x1:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_4x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_4x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_4x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->GRID_SEQUENCE_6xN_PROMO_HEAVY:[Lcom/google/android/finsky/adapters/GridSlotSize;

    .line 86
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/finsky/adapters/GridSlotSize;

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_4x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_4x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2xN_TOC:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x1:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->GRID_SEQUENCE_8xN:[Lcom/google/android/finsky/adapters/GridSlotSize;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mHaveLoggedBefore:Z

    return-void
.end method

.method private addItemsToGridSequence()V
    .registers 4

    .prologue
    .line 219
    iget-boolean v1, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mGridSequenceDataAdded:Z

    if-nez v1, :cond_39

    .line 221
    invoke-direct {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->getPromoListData()Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v1

    if-eqz v1, :cond_36

    invoke-direct {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->getPromoListData()Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeList;->isReady()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 223
    invoke-direct {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->getPromoListData()Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeList;->getBucketCount()I

    move-result v1

    if-lez v1, :cond_3a

    .line 224
    invoke-direct {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->getPromoListData()Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeList;->getBucketList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/model/Bucket;

    invoke-virtual {v1}, Lcom/google/android/finsky/model/Bucket;->getChildren()Ljava/util/List;

    move-result-object v0

    .line 228
    .local v0, promoDocuments:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    :goto_31
    iget-object v1, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mGridSequencer:Lcom/google/android/finsky/layout/GridSequencer;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/layout/GridSequencer;->setPromoData(Ljava/util/List;)V

    .line 231
    .end local v0           #promoDocuments:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    :cond_36
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mGridSequenceDataAdded:Z

    .line 233
    :cond_39
    return-void

    .line 226
    :cond_3a
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .restart local v0       #promoDocuments:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    goto :goto_31
.end method

.method private getPromoListData()Lcom/google/android/finsky/api/model/DfeList;
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    if-nez v0, :cond_2c

    .line 265
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeBrowse;->isReady()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeBrowse;->hasPromotionalItems()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 267
    :cond_18
    const/4 v0, 0x0

    .line 275
    :goto_19
    return-object v0

    .line 270
    :cond_1a
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeBrowse;->buildPromoList()Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    .line 271
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 272
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 275
    :cond_2c
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    goto :goto_19
.end method

.method private logPageView()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 206
    iget-boolean v1, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mHaveLoggedBefore:Z

    if-nez v1, :cond_3a

    .line 207
    iget-object v1, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeBrowse;->hasPromotionalItems()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-direct {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->getPromoListData()Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeList;->getBucketList()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/model/Bucket;

    invoke-virtual {v1}, Lcom/google/android/finsky/model/Bucket;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, listCookie:Ljava/lang/String;
    :goto_20
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "CorporaHomeFragment.ReferrerUrl"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mUrl:Ljava/lang/String;

    invoke-interface {v1, v3, v2, v4, v0}, Lcom/google/android/finsky/analytics/Analytics;->logListViewOnPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mHaveLoggedBefore:Z

    .line 213
    .end local v0           #listCookie:Ljava/lang/String;
    :cond_3a
    return-void

    :cond_3b
    move-object v0, v2

    .line 207
    goto :goto_20
.end method

.method public static newInstance(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/CorporaHomeFragment;
    .registers 5
    .parameter "toc"
    .parameter "url"
    .parameter "referrer"

    .prologue
    .line 101
    new-instance v0, Lcom/google/android/finsky/activities/CorporaHomeFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;-><init>()V

    .line 102
    .local v0, fragment:Lcom/google/android/finsky/activities/CorporaHomeFragment;
    invoke-virtual {v0, p0, p1}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->setDfeTocAndUrl(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    .line 103
    const-string v1, "CorporaHomeFragment.ReferrerUrl"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-object v0
.end method

.method private resetDfeModels()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 172
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    if-eqz v0, :cond_f

    .line 173
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeBrowse;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 174
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeBrowse;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 176
    :cond_f
    iput-object v1, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    .line 177
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_1f

    .line 178
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 179
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 181
    :cond_1f
    iput-object v1, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    .line 182
    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .registers 2

    .prologue
    .line 132
    const v0, 0x7f040026

    return v0
.end method

.method protected isDataReady()Z
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeBrowse;->isReady()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeBrowse;->hasPromotionalItems()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->getPromoListData()Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->isReady()Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->isDataReady()Z

    move-result v0

    if-nez v0, :cond_12

    .line 112
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->switchToLoading()V

    .line 113
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->requestData()V

    .line 114
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->rebindActionBar()V

    .line 116
    :cond_12
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 121
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 123
    .local v0, result:Landroid/view/View;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->isDataReady()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 124
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->rebindViews()V

    .line 127
    :cond_d
    return-object v0
.end method

.method public onDataChanged()V
    .registers 2

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_7

    .line 203
    :cond_6
    :goto_6
    return-void

    .line 190
    :cond_7
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeBrowse;->isReady()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    if-nez v0, :cond_23

    .line 191
    invoke-direct {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->getPromoListData()Lcom/google/android/finsky/api/model/DfeList;

    .line 192
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_23

    .line 193
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    .line 196
    :cond_23
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 198
    invoke-direct {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->logPageView()V

    .line 200
    invoke-direct {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->addItemsToGridSequence()V

    .line 201
    invoke-super {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onDataChanged()V

    goto :goto_6
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mDataView:Landroid/view/ViewGroup;

    const v1, 0x7f080085

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/UnevenGrid;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/UnevenGrid;->onDestroyView()V

    .line 254
    invoke-super {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onDestroyView()V

    .line 255
    return-void
.end method

.method protected onInitViewBinders()V
    .registers 9

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 146
    .local v7, gridWidth:I
    const/16 v0, 0x8

    if-ne v7, v0, :cond_25

    .line 147
    sget-object v4, Lcom/google/android/finsky/activities/CorporaHomeFragment;->GRID_SEQUENCE_8xN:[Lcom/google/android/finsky/adapters/GridSlotSize;

    .line 157
    .local v4, layoutSequence:[Lcom/google/android/finsky/adapters/GridSlotSize;
    :goto_11
    new-instance v0, Lcom/google/android/finsky/layout/GridSequencer;

    iget-object v1, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v3, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mUrl:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/layout/GridSequencer;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;[Lcom/google/android/finsky/adapters/GridSlotSize;Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mGridSequencer:Lcom/google/android/finsky/layout/GridSequencer;

    .line 159
    return-void

    .line 148
    .end local v4           #layoutSequence:[Lcom/google/android/finsky/adapters/GridSlotSize;
    :cond_25
    const/4 v0, 0x6

    if-ne v7, v0, :cond_3b

    .line 149
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 150
    sget-object v4, Lcom/google/android/finsky/activities/CorporaHomeFragment;->GRID_SEQUENCE_6xN_PROMO_HEAVY:[Lcom/google/android/finsky/adapters/GridSlotSize;

    .restart local v4       #layoutSequence:[Lcom/google/android/finsky/adapters/GridSlotSize;
    goto :goto_11

    .line 152
    .end local v4           #layoutSequence:[Lcom/google/android/finsky/adapters/GridSlotSize;
    :cond_38
    sget-object v4, Lcom/google/android/finsky/activities/CorporaHomeFragment;->GRID_SEQUENCE_6xN:[Lcom/google/android/finsky/adapters/GridSlotSize;

    .restart local v4       #layoutSequence:[Lcom/google/android/finsky/adapters/GridSlotSize;
    goto :goto_11

    .line 155
    .end local v4           #layoutSequence:[Lcom/google/android/finsky/adapters/GridSlotSize;
    :cond_3b
    sget-object v4, Lcom/google/android/finsky/activities/CorporaHomeFragment;->GRID_SEQUENCE_4xN:[Lcom/google/android/finsky/adapters/GridSlotSize;

    .restart local v4       #layoutSequence:[Lcom/google/android/finsky/adapters/GridSlotSize;
    goto :goto_11
.end method

.method public rebindActionBar()V
    .registers 4

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    iget-object v1, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f070194

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateBreadcrumb(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateCurrentBackendId(I)V

    .line 261
    return-void
.end method

.method protected rebindViews()V
    .registers 6

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->switchToData()V

    .line 239
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->rebindActionBar()V

    .line 241
    iget-object v3, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mDataView:Landroid/view/ViewGroup;

    const v4, 0x7f080085

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/UnevenGrid;

    .line 242
    .local v1, grid:Lcom/google/android/finsky/layout/UnevenGrid;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/layout/UnevenGrid;->setHasTopGutter(Z)V

    .line 243
    invoke-virtual {v1}, Lcom/google/android/finsky/layout/UnevenGrid;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 244
    .local v2, gridParent:Landroid/view/View;
    iget-object v3, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 246
    iget-object v3, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mGridSequencer:Lcom/google/android/finsky/layout/GridSequencer;

    invoke-virtual {v3}, Lcom/google/android/finsky/layout/GridSequencer;->getAdapter()Lcom/google/android/finsky/adapters/UnevenGridAdapter;

    move-result-object v0

    .line 247
    .local v0, adapter:Lcom/google/android/finsky/adapters/UnevenGridAdapter;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/adapters/UnevenGridAdapter;->setShowCorpusStrip(Z)V

    .line 248
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/layout/UnevenGrid;->setAdapter(Lcom/google/android/finsky/adapters/UnevenGridAdapter;)V

    .line 249
    return-void
.end method

.method protected requestData()V
    .registers 4

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->resetDfeModels()V

    .line 166
    new-instance v0, Lcom/google/android/finsky/api/model/DfeBrowse;

    iget-object v1, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/api/model/DfeBrowse;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    .line 167
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeBrowse;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 168
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeBrowse;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 169
    return-void
.end method
