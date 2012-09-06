.class public Lcom/google/android/finsky/activities/DetailsPackViewBinder;
.super Lcom/google/android/finsky/fragments/DetailsViewBinder;
.source "DetailsPackViewBinder.java"

# interfaces
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# instance fields
.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mCurrentPageUrl:Ljava/lang/String;

.field private mHaveLoggedBefore:Z

.field private mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

.field private mMaxItemsCount:I

.field private mMaxItemsPerRow:I

.field private mMoreUrl:Ljava/lang/String;

.field private mReferrerUrl:Ljava/lang/String;

.field private mToc:Lcom/google/android/finsky/api/model/DfeToc;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;-><init>()V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/DetailsPackViewBinder;)Lcom/google/android/finsky/api/model/DfeList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/DetailsPackViewBinder;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mMoreUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/DetailsPackViewBinder;)Lcom/google/android/finsky/api/model/Document;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/DetailsPackViewBinder;)Lcom/google/android/finsky/api/model/Document;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/DetailsPackViewBinder;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mCurrentPageUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/activities/DetailsPackViewBinder;)Lcom/google/android/finsky/api/model/DfeToc;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/activities/DetailsPackViewBinder;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method private attachToInternalRequest()V
    .registers 4

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    if-nez v0, :cond_c

    .line 269
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot attach when no request is held internally"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_c
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 273
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 277
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->getCount()I

    move-result v0

    if-eqz v0, :cond_2d

    .line 278
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToDataMode()V

    .line 280
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->prepareAndPopulateContent()V

    .line 292
    :cond_2c
    :goto_2c
    return-void

    .line 282
    :cond_2d
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->isMoreAvailable()Z

    move-result v0

    if-nez v0, :cond_39

    .line 283
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->handleEmptyData()V

    goto :goto_2c

    .line 284
    :cond_39
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->inErrorState()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 289
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeList;->getVolleyError()Lcom/android/volley/VolleyError;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToErrorMode(Ljava/lang/String;)V

    goto :goto_2c
.end method

.method private detachListeners()V
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_e

    .line 142
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 143
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 145
    :cond_e
    return-void
.end method

.method private logListView()V
    .registers 7

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->isReady()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->getBucketCount()I

    move-result v0

    if-lez v0, :cond_46

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mHaveLoggedBefore:Z

    if-nez v0, :cond_46

    .line 327
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mReferrerUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getCookie()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_2d
    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mCurrentPageUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->getBucketList()Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Bucket;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v1, v4, v0}, Lcom/google/android/finsky/analytics/Analytics;->logListViewOnPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mHaveLoggedBefore:Z

    .line 332
    :cond_46
    return-void

    .line 327
    :cond_47
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_2d
.end method

.method private populateArtistCell(Landroid/view/ViewGroup;Lcom/google/android/finsky/api/model/Document;)V
    .registers 8
    .parameter "rowView"
    .parameter "data"

    .prologue
    .line 225
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040006

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 227
    .local v0, artistEntry:Landroid/view/View;
    const v2, 0x7f080011

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/ArtistBucketEntry;

    .line 229
    .local v1, artistLayer:Lcom/google/android/finsky/layout/ArtistBucketEntry;
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v1, v2, p2}, Lcom/google/android/finsky/layout/ArtistBucketEntry;->setDocument(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;)V

    .line 230
    const v2, 0x7f080014

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/ArtistBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mCurrentPageUrl:Ljava/lang/String;

    invoke-virtual {v3, p2, v4}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getClickListener(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 233
    return-void
.end method

.method private populateMagazineCell(Landroid/view/ViewGroup;Lcom/google/android/finsky/api/model/Document;)V
    .registers 8
    .parameter "rowView"
    .parameter "data"

    .prologue
    .line 237
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040097

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 239
    .local v0, magazineEntry:Landroid/view/View;
    const v2, 0x7f080170

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/MagazineBucketEntry;

    .line 241
    .local v1, magazineLayer:Lcom/google/android/finsky/layout/MagazineBucketEntry;
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1, v2, v3, p2}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->setDocument(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;)V

    .line 242
    const v2, 0x7f080014

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mCurrentPageUrl:Ljava/lang/String;

    invoke-virtual {v3, p2, v4}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getClickListener(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 245
    return-void
.end method

.method private prepareAndPopulateContent()V
    .registers 4

    .prologue
    .line 311
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayout:Landroid/view/View;

    const v2, 0x7f0800d3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 312
    .local v0, packHeader:Landroid/view/View;
    new-instance v1, Lcom/google/android/finsky/activities/DetailsPackViewBinder$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder$2;-><init>(Lcom/google/android/finsky/activities/DetailsPackViewBinder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->populateContent()V

    .line 322
    return-void
.end method

.method private setupItemListRequest()V
    .registers 5

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->detachListeners()V

    .line 300
    new-instance v0, Lcom/google/android/finsky/api/model/DfeList;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mUrl:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    .line 302
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->attachToInternalRequest()V

    .line 303
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 304
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    .line 305
    return-void
.end method

.method private setupView()V
    .registers 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_9

    .line 250
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->clearTransientState()V

    .line 253
    :cond_9
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayout:Landroid/view/View;

    const v1, 0x7f08014c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0700f4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 254
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    const/16 v1, 0x15e

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToLoadingDelayed(I)V

    .line 259
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 260
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 261
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->setupItemListRequest()V

    .line 265
    :goto_32
    return-void

    .line 263
    :cond_33
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->handleEmptyData()V

    goto :goto_32
.end method


# virtual methods
.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .registers 16
    .parameter "view"
    .parameter "doc"
    .parameter "header"
    .parameter "subheader"
    .parameter "url"
    .parameter "moreUrl"
    .parameter "maxItemsPerRow"
    .parameter "maxItemsCount"
    .parameter "currentPageUrl"
    .parameter "referrerUrl"

    .prologue
    .line 109
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayout:Landroid/view/View;

    const v2, 0x7f0800a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 112
    .local v0, subheaderView:Landroid/widget/TextView;
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 113
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    :goto_19
    iput-object p5, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mUrl:Ljava/lang/String;

    .line 120
    iput-object p6, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mMoreUrl:Ljava/lang/String;

    .line 121
    iput-object p9, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mCurrentPageUrl:Ljava/lang/String;

    .line 122
    iput-object p10, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mReferrerUrl:Ljava/lang/String;

    .line 123
    iput p7, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mMaxItemsPerRow:I

    .line 124
    iput p8, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mMaxItemsCount:I

    .line 126
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    if-nez v1, :cond_3a

    .line 128
    new-instance v1, Lcom/google/android/finsky/layout/LayoutSwitcher;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayout:Landroid/view/View;

    const v3, 0x7f0800cf

    new-instance v4, Lcom/google/android/finsky/activities/DetailsPackViewBinder$1;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder$1;-><init>(Lcom/google/android/finsky/activities/DetailsPackViewBinder;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/finsky/layout/LayoutSwitcher;-><init>(Landroid/view/View;ILcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;)V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    .line 137
    :cond_3a
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->setupView()V

    .line 138
    return-void

    .line 115
    :cond_3e
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    invoke-static {p4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19
.end method

.method protected handleEmptyData()V
    .registers 3

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 296
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;)V
    .registers 6
    .parameter "context"
    .parameter "api"
    .parameter "navManager"
    .parameter "bitmapLoader"
    .parameter "toc"

    .prologue
    .line 90
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 92
    iput-object p4, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 93
    iput-object p5, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    .line 94
    return-void
.end method

.method public onDataChanged()V
    .registers 3

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToDataMode()V

    .line 342
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->getCount()I

    move-result v0

    if-nez v0, :cond_11

    .line 343
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->handleEmptyData()V

    .line 349
    :goto_10
    return-void

    .line 345
    :cond_11
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->logListView()V

    .line 346
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 347
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->prepareAndPopulateContent()V

    goto :goto_10
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 354
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mHaveLoggedBefore:Z

    .line 355
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->detachListeners()V

    .line 356
    return-void
.end method

.method protected populateContent()V
    .registers 22

    .prologue
    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayout:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0800cf

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 152
    .local v14, linearLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/finsky/api/model/DfeList;->getCount()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mMaxItemsCount:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 159
    .local v12, itemCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mMaxItemsPerRow:I

    move/from16 v18, v0

    add-int v18, v18, v12

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mMaxItemsPerRow:I

    move/from16 v19, v0

    div-int v15, v18, v19

    .line 160
    .local v15, rowCount:I
    const/4 v13, 0x0

    .line 162
    .local v13, itemIndex:I
    if-nez v15, :cond_3f

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->handleEmptyData()V

    .line 221
    :cond_3e
    return-void

    .line 167
    :cond_3f
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->setHeaderNavigable(Z)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayout:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0800d4

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayout:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0800ce

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 172
    const/16 v16, 0x0

    .local v16, rowNum:I
    :goto_6e
    move/from16 v0, v16

    if-ge v0, v15, :cond_3e

    .line 173
    add-int/lit8 v18, v15, -0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_13a

    const/4 v10, 0x1

    .line 174
    .local v10, isLastRow:Z
    :goto_7b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    const v19, 0x7f04001f

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v14, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/google/android/finsky/layout/BucketRow;

    .line 176
    .local v17, rowView:Lcom/google/android/finsky/layout/BucketRow;
    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/google/android/finsky/layout/BucketRow;->setCompact(Z)V

    .line 178
    const/4 v5, 0x0

    .local v5, colNum:I
    :goto_98
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mMaxItemsPerRow:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v5, v0, :cond_162

    .line 179
    if-ge v13, v12, :cond_13d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/google/android/finsky/api/model/DfeList;->getItem(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v6, v18

    .line 181
    .local v6, data:Lcom/google/android/finsky/api/model/Document;
    :goto_b4
    const/4 v9, 0x0

    .line 182
    .local v9, isCellHandled:Z
    if-eqz v6, :cond_d2

    .line 183
    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v7

    .line 184
    .local v7, documentType:I
    const/16 v18, 0x10

    move/from16 v0, v18

    if-eq v7, v0, :cond_c7

    const/16 v18, 0x11

    move/from16 v0, v18

    if-ne v7, v0, :cond_140

    :cond_c7
    const/4 v11, 0x1

    .line 186
    .local v11, isMagazine:Z
    :goto_c8
    if-eqz v11, :cond_142

    .line 187
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v6}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->populateMagazineCell(Landroid/view/ViewGroup;Lcom/google/android/finsky/api/model/Document;)V

    .line 188
    const/4 v9, 0x1

    .line 194
    .end local v7           #documentType:I
    .end local v11           #isMagazine:Z
    :cond_d2
    :goto_d2
    if-nez v9, :cond_134

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    const v19, 0x7f0400c3

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v17

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 198
    .local v4, cellView:Landroid/view/View;
    const v18, 0x7f08001a

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/finsky/layout/OverviewBucketEntry;

    .line 200
    .local v8, genericEntry:Lcom/google/android/finsky/layout/OverviewBucketEntry;
    if-eqz v6, :cond_154

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v6, v10}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setDocument(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Z)V

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mCurrentPageUrl:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getClickListener(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mMaxItemsPerRow:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v5, v0, :cond_151

    const/16 v18, 0x1

    :goto_12a
    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setRightSeparatorVisibility(Z)V

    .line 215
    :goto_12f
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/BucketRow;->addView(Landroid/view/View;)V

    .line 217
    .end local v4           #cellView:Landroid/view/View;
    .end local v8           #genericEntry:Lcom/google/android/finsky/layout/OverviewBucketEntry;
    :cond_134
    add-int/lit8 v13, v13, 0x1

    .line 178
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_98

    .line 173
    .end local v5           #colNum:I
    .end local v6           #data:Lcom/google/android/finsky/api/model/Document;
    .end local v9           #isCellHandled:Z
    .end local v10           #isLastRow:Z
    .end local v17           #rowView:Lcom/google/android/finsky/layout/BucketRow;
    :cond_13a
    const/4 v10, 0x0

    goto/16 :goto_7b

    .line 179
    .restart local v5       #colNum:I
    .restart local v10       #isLastRow:Z
    .restart local v17       #rowView:Lcom/google/android/finsky/layout/BucketRow;
    :cond_13d
    const/4 v6, 0x0

    goto/16 :goto_b4

    .line 184
    .restart local v6       #data:Lcom/google/android/finsky/api/model/Document;
    .restart local v7       #documentType:I
    .restart local v9       #isCellHandled:Z
    :cond_140
    const/4 v11, 0x0

    goto :goto_c8

    .line 189
    .restart local v11       #isMagazine:Z
    :cond_142
    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getArtistDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v18

    if-eqz v18, :cond_d2

    .line 190
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v6}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->populateArtistCell(Landroid/view/ViewGroup;Lcom/google/android/finsky/api/model/Document;)V

    .line 191
    const/4 v9, 0x1

    goto :goto_d2

    .line 204
    .end local v7           #documentType:I
    .end local v11           #isMagazine:Z
    .restart local v4       #cellView:Landroid/view/View;
    .restart local v8       #genericEntry:Lcom/google/android/finsky/layout/OverviewBucketEntry;
    :cond_151
    const/16 v18, 0x0

    goto :goto_12a

    .line 208
    :cond_154
    if-ne v13, v12, :cond_15a

    .line 209
    invoke-virtual {v8}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setNoDocument()V

    goto :goto_12f

    .line 211
    :cond_15a
    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setVisibility(I)V

    goto :goto_12f

    .line 219
    .end local v4           #cellView:Landroid/view/View;
    .end local v6           #data:Lcom/google/android/finsky/api/model/Document;
    .end local v8           #genericEntry:Lcom/google/android/finsky/layout/OverviewBucketEntry;
    .end local v9           #isCellHandled:Z
    :cond_162
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 172
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_6e
.end method
