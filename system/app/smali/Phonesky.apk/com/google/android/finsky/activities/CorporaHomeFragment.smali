.class public Lcom/google/android/finsky/activities/CorporaHomeFragment;
.super Lcom/google/android/finsky/fragments/UrlBasedPageFragment;
.source "CorporaHomeFragment.java"


# static fields
.field private static final GRID_SEQUENCE_4xN:[I

.field private static final GRID_SEQUENCE_6xN:[I

.field private static final GRID_SEQUENCE_6xN_PROMO_HEAVY:[I

.field private static final GRID_SEQUENCE_8xN:[I


# instance fields
.field private mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

.field private mGridSequenceDataAdded:Z

.field private mGridSequencer:Lcom/google/android/finsky/layout/GridSequencer;

.field private final mHandler:Landroid/os/Handler;

.field private mHaveLoggedBefore:Z

.field private mPageContent:Landroid/view/View;

.field private mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

.field private mScrollPosition:I

.field private final mScrollRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_26

    sput-object v0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->GRID_SEQUENCE_4xN:[I

    .line 75
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_3a

    sput-object v0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->GRID_SEQUENCE_6xN:[I

    .line 91
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_58

    sput-object v0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->GRID_SEQUENCE_6xN_PROMO_HEAVY:[I

    .line 110
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_7c

    sput-object v0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->GRID_SEQUENCE_8xN:[I

    return-void

    .line 64
    nop

    :array_26
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 75
    :array_3a
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 91
    :array_58
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 110
    :array_7c
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;-><init>()V

    .line 34
    iput-boolean v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mHaveLoggedBefore:Z

    .line 52
    iput v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mScrollPosition:I

    .line 54
    new-instance v0, Lcom/google/android/finsky/activities/CorporaHomeFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment$1;-><init>(Lcom/google/android/finsky/activities/CorporaHomeFragment;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mScrollRunnable:Ljava/lang/Runnable;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/CorporaHomeFragment;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mScrollPosition:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/CorporaHomeFragment;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mPageContent:Landroid/view/View;

    return-object v0
.end method

.method private addItemsToGridSequence()V
    .registers 4

    .prologue
    .line 246
    iget-boolean v1, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mGridSequenceDataAdded:Z

    if-nez v1, :cond_36

    .line 247
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 249
    .local v0, promoDocuments:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    invoke-direct {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->getPromoListData()Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 250
    invoke-direct {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->getPromoListData()Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeList;->getBucketCount()I

    move-result v1

    if-lez v1, :cond_2e

    .line 251
    invoke-direct {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->getPromoListData()Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeList;->getBucketList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Bucket;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 255
    :cond_2e
    iget-object v1, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mGridSequencer:Lcom/google/android/finsky/layout/GridSequencer;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/layout/GridSequencer;->setPromoData(Ljava/util/List;)V

    .line 256
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mGridSequenceDataAdded:Z

    .line 258
    .end local v0           #promoDocuments:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    :cond_36
    return-void
.end method

.method private getPromoListData()Lcom/google/android/finsky/api/model/DfeList;
    .registers 3

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    if-nez v0, :cond_2e

    .line 297
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

    .line 299
    :cond_18
    const/4 v0, 0x0

    .line 307
    :goto_19
    return-object v0

    .line 302
    :cond_1a
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    iget-object v1, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeBrowse;->buildPromoList(Lcom/google/android/finsky/api/DfeApi;)Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    .line 303
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 304
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 307
    :cond_2e
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    goto :goto_19
.end method

.method private logPageView()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 233
    iget-boolean v1, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mHaveLoggedBefore:Z

    if-nez v1, :cond_3a

    .line 234
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

    check-cast v1, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Bucket;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v0

    .line 236
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

    .line 238
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mHaveLoggedBefore:Z

    .line 240
    .end local v0           #listCookie:Ljava/lang/String;
    :cond_3a
    return-void

    :cond_3b
    move-object v0, v2

    .line 234
    goto :goto_20
.end method

.method public static newInstance(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/CorporaHomeFragment;
    .registers 5
    .parameter "toc"
    .parameter "url"
    .parameter "referrer"

    .prologue
    .line 128
    new-instance v0, Lcom/google/android/finsky/activities/CorporaHomeFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;-><init>()V

    .line 129
    .local v0, fragment:Lcom/google/android/finsky/activities/CorporaHomeFragment;
    invoke-virtual {v0, p0, p1}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->setDfeTocAndUrl(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    .line 130
    const-string v1, "CorporaHomeFragment.ReferrerUrl"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-object v0
.end method

.method private resetDfeModels()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 199
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    if-eqz v0, :cond_f

    .line 200
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeBrowse;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 201
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeBrowse;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 203
    :cond_f
    iput-object v1, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    .line 204
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_1f

    .line 205
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 206
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 208
    :cond_1f
    iput-object v1, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    .line 209
    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .registers 2

    .prologue
    .line 159
    const v0, 0x7f04002b

    return v0
.end method

.method protected isDataReady()Z
    .registers 2

    .prologue
    .line 164
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
    .line 136
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 138
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->isDataReady()Z

    move-result v0

    if-nez v0, :cond_12

    .line 139
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->switchToLoading()V

    .line 140
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->requestData()V

    .line 141
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->rebindActionBar()V

    .line 143
    :cond_12
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 148
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 150
    .local v0, result:Landroid/view/View;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->isDataReady()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 151
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->rebindViews()V

    .line 154
    :cond_d
    return-object v0
.end method

.method public onDataChanged()V
    .registers 2

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_7

    .line 230
    :cond_6
    :goto_6
    return-void

    .line 217
    :cond_7
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeBrowse;->isReady()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    if-nez v0, :cond_23

    .line 218
    invoke-direct {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->getPromoListData()Lcom/google/android/finsky/api/model/DfeList;

    .line 219
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_23

    .line 220
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    .line 223
    :cond_23
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 225
    invoke-direct {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->logPageView()V

    .line 227
    invoke-direct {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->addItemsToGridSequence()V

    .line 228
    invoke-super {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onDataChanged()V

    goto :goto_6
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 282
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mPageContent:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 283
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mPageContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mScrollPosition:I

    .line 285
    :cond_13
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mDataView:Landroid/view/ViewGroup;

    const v1, 0x7f080081

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/UnevenGrid;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/UnevenGrid;->onDestroyView()V

    .line 286
    invoke-super {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onDestroyView()V

    .line 287
    return-void
.end method

.method protected onInitViewBinders()V
    .registers 9

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 173
    .local v7, gridWidth:I
    const/16 v0, 0x8

    if-ne v7, v0, :cond_25

    .line 174
    sget-object v4, Lcom/google/android/finsky/activities/CorporaHomeFragment;->GRID_SEQUENCE_8xN:[I

    .line 184
    .local v4, layoutSequence:[I
    :goto_11
    new-instance v0, Lcom/google/android/finsky/layout/GridSequencer;

    iget-object v1, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v3, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mUrl:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/layout/GridSequencer;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;[ILcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mGridSequencer:Lcom/google/android/finsky/layout/GridSequencer;

    .line 186
    return-void

    .line 175
    .end local v4           #layoutSequence:[I
    :cond_25
    const/4 v0, 0x6

    if-ne v7, v0, :cond_3b

    .line 176
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 177
    sget-object v4, Lcom/google/android/finsky/activities/CorporaHomeFragment;->GRID_SEQUENCE_6xN_PROMO_HEAVY:[I

    .restart local v4       #layoutSequence:[I
    goto :goto_11

    .line 179
    .end local v4           #layoutSequence:[I
    :cond_38
    sget-object v4, Lcom/google/android/finsky/activities/CorporaHomeFragment;->GRID_SEQUENCE_6xN:[I

    .restart local v4       #layoutSequence:[I
    goto :goto_11

    .line 182
    .end local v4           #layoutSequence:[I
    :cond_3b
    sget-object v4, Lcom/google/android/finsky/activities/CorporaHomeFragment;->GRID_SEQUENCE_4xN:[I

    .restart local v4       #layoutSequence:[I
    goto :goto_11
.end method

.method public rebindActionBar()V
    .registers 4

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    iget-object v1, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0701cd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateBreadcrumb(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateCurrentBackendId(I)V

    .line 293
    return-void
.end method

.method protected rebindViews()V
    .registers 6

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->switchToData()V

    .line 264
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->rebindActionBar()V

    .line 266
    iget-object v3, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mDataView:Landroid/view/ViewGroup;

    const v4, 0x7f080081

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/UnevenGrid;

    .line 267
    .local v1, grid:Lcom/google/android/finsky/layout/UnevenGrid;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/layout/UnevenGrid;->setHasTopGutter(Z)V

    .line 268
    invoke-virtual {v1}, Lcom/google/android/finsky/layout/UnevenGrid;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 269
    .local v2, gridParent:Landroid/view/View;
    iget-object v3, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 271
    iget-object v3, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mGridSequencer:Lcom/google/android/finsky/layout/GridSequencer;

    invoke-virtual {v3}, Lcom/google/android/finsky/layout/GridSequencer;->getAdapter()Lcom/google/android/finsky/adapters/UnevenGridAdapter;

    move-result-object v0

    .line 272
    .local v0, adapter:Lcom/google/android/finsky/adapters/UnevenGridAdapter;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/adapters/UnevenGridAdapter;->setShowCorpusStrip(Z)V

    .line 273
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/layout/UnevenGrid;->setAdapter(Lcom/google/android/finsky/adapters/UnevenGridAdapter;)V

    .line 275
    iget-object v3, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mDataView:Landroid/view/ViewGroup;

    const v4, 0x7f080142

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mPageContent:Landroid/view/View;

    .line 276
    iget-object v3, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 277
    return-void
.end method

.method protected requestData()V
    .registers 4

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->resetDfeModels()V

    .line 193
    new-instance v0, Lcom/google/android/finsky/api/model/DfeBrowse;

    iget-object v1, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/api/model/DfeBrowse;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    .line 194
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeBrowse;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 195
    iget-object v0, p0, Lcom/google/android/finsky/activities/CorporaHomeFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeBrowse;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 196
    return-void
.end method
