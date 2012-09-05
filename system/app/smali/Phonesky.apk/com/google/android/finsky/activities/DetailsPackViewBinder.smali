.class public Lcom/google/android/finsky/activities/DetailsPackViewBinder;
.super Lcom/google/android/finsky/fragments/DetailsViewBinder;
.source "DetailsPackViewBinder.java"

# interfaces
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# instance fields
.field private mArtistImageHeight:I

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
    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/DetailsPackViewBinder;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mMoreUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/DetailsPackViewBinder;)Lcom/google/android/finsky/api/model/Document;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/DetailsPackViewBinder;)Lcom/google/android/finsky/api/model/Document;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/DetailsPackViewBinder;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mCurrentPageUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/activities/DetailsPackViewBinder;)Lcom/google/android/finsky/api/model/DfeToc;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/activities/DetailsPackViewBinder;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method private attachToInternalRequest()V
    .registers 4

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    if-nez v0, :cond_c

    .line 234
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot attach when no request is held internally"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_c
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 238
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 242
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->getCount()I

    move-result v0

    if-eqz v0, :cond_2d

    .line 243
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToDataMode()V

    .line 245
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->prepareAndPopulateContent()V

    .line 257
    :cond_2c
    :goto_2c
    return-void

    .line 247
    :cond_2d
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->isMoreAvailable()Z

    move-result v0

    if-nez v0, :cond_39

    .line 248
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->handleEmptyData()V

    goto :goto_2c

    .line 249
    :cond_39
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->inErrorState()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 254
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
    .line 143
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_e

    .line 144
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 145
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 147
    :cond_e
    return-void
.end method

.method private logListView()V
    .registers 7

    .prologue
    .line 290
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

    .line 292
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

    check-cast v0, Lcom/google/android/finsky/model/Bucket;

    invoke-virtual {v0}, Lcom/google/android/finsky/model/Bucket;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v1, v4, v0}, Lcom/google/android/finsky/analytics/Analytics;->logListViewOnPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mHaveLoggedBefore:Z

    .line 297
    :cond_46
    return-void

    .line 292
    :cond_47
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_2d
.end method

.method private prepareAndPopulateContent()V
    .registers 4

    .prologue
    .line 276
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayout:Landroid/view/View;

    const v2, 0x7f0800cd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 277
    .local v0, packHeader:Landroid/view/View;
    new-instance v1, Lcom/google/android/finsky/activities/DetailsPackViewBinder$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder$2;-><init>(Lcom/google/android/finsky/activities/DetailsPackViewBinder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->populateContent()V

    .line 287
    return-void
.end method

.method private setupItemListRequest()V
    .registers 5

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->detachListeners()V

    .line 265
    new-instance v0, Lcom/google/android/finsky/api/model/DfeList;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mUrl:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    .line 267
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->attachToInternalRequest()V

    .line 268
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 269
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    .line 270
    return-void
.end method

.method private setupView()V
    .registers 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_9

    .line 215
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->clearTransientState()V

    .line 218
    :cond_9
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayout:Landroid/view/View;

    const v1, 0x7f080114

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0700e5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 219
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    const/16 v1, 0x15e

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToLoadingDelayed(I)V

    .line 224
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 225
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 226
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->setupItemListRequest()V

    .line 230
    :goto_32
    return-void

    .line 228
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
    .line 111
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayout:Landroid/view/View;

    const v2, 0x7f0800a3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 114
    .local v0, subheaderView:Landroid/widget/TextView;
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 115
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    :goto_19
    iput-object p5, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mUrl:Ljava/lang/String;

    .line 122
    iput-object p6, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mMoreUrl:Ljava/lang/String;

    .line 123
    iput-object p9, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mCurrentPageUrl:Ljava/lang/String;

    .line 124
    iput-object p10, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mReferrerUrl:Ljava/lang/String;

    .line 125
    iput p7, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mMaxItemsPerRow:I

    .line 126
    iput p8, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mMaxItemsCount:I

    .line 128
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    if-nez v1, :cond_3a

    .line 130
    new-instance v1, Lcom/google/android/finsky/layout/LayoutSwitcher;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayout:Landroid/view/View;

    const v3, 0x7f0800c6

    new-instance v4, Lcom/google/android/finsky/activities/DetailsPackViewBinder$1;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder$1;-><init>(Lcom/google/android/finsky/activities/DetailsPackViewBinder;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/finsky/layout/LayoutSwitcher;-><init>(Landroid/view/View;ILcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;)V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    .line 139
    :cond_3a
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->setupView()V

    .line 140
    return-void

    .line 117
    :cond_3e
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    invoke-static {p4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19
.end method

.method protected handleEmptyData()V
    .registers 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 261
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;)V
    .registers 8
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
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mArtistImageHeight:I

    .line 96
    return-void
.end method

.method public onDataChanged()V
    .registers 3

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToDataMode()V

    .line 307
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->getCount()I

    move-result v0

    if-nez v0, :cond_11

    .line 308
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->handleEmptyData()V

    .line 314
    :goto_10
    return-void

    .line 310
    :cond_11
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->logListView()V

    .line 311
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 312
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->prepareAndPopulateContent()V

    goto :goto_10
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mHaveLoggedBefore:Z

    .line 320
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->detachListeners()V

    .line 321
    return-void
.end method

.method protected populateContent()V
    .registers 18

    .prologue
    .line 153
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayout:Landroid/view/View;

    const v15, 0x7f0800c6

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 154
    .local v10, linearLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 160
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v14}, Lcom/google/android/finsky/api/model/DfeList;->getCount()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mMaxItemsCount:I

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 161
    .local v8, itemCount:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mMaxItemsPerRow:I

    add-int/2addr v14, v8

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mMaxItemsPerRow:I

    div-int v11, v14, v15

    .line 162
    .local v11, rowCount:I
    const/4 v9, 0x0

    .line 164
    .local v9, itemIndex:I
    if-nez v11, :cond_34

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->handleEmptyData()V

    .line 210
    :cond_33
    return-void

    .line 169
    :cond_34
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->setHeaderNavigable(Z)V

    .line 171
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayout:Landroid/view/View;

    const v15, 0x7f0800ce

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 172
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayout:Landroid/view/View;

    const v15, 0x7f0800c5

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 174
    const/4 v12, 0x0

    .local v12, rowNum:I
    :goto_59
    if-ge v12, v11, :cond_33

    .line 175
    add-int/lit8 v14, v11, -0x1

    if-ne v12, v14, :cond_d2

    const/4 v7, 0x1

    .line 176
    .local v7, isLastRow:Z
    :goto_60
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mInflater:Landroid/view/LayoutInflater;

    const v15, 0x7f040044

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v10, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    .line 179
    .local v13, rowView:Landroid/view/ViewGroup;
    const/4 v4, 0x0

    .local v4, colNum:I
    :goto_72
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mMaxItemsPerRow:I

    if-ge v4, v14, :cond_112

    .line 180
    if-ge v9, v8, :cond_d4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v14, v9}, Lcom/google/android/finsky/api/model/DfeList;->getItem(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/finsky/api/model/Document;

    move-object v5, v14

    .line 182
    .local v5, data:Lcom/google/android/finsky/api/model/Document;
    :goto_85
    if-eqz v5, :cond_d6

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getArtistDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v14

    if-eqz v14, :cond_d6

    .line 184
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mInflater:Landroid/view/LayoutInflater;

    const v15, 0x7f040007

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v13, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 186
    .local v1, artistEntry:Landroid/view/View;
    const v14, 0x7f08000e

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/ArtistBucketEntry;

    .line 188
    .local v2, artistLayer:Lcom/google/android/finsky/layout/ArtistBucketEntry;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mArtistImageHeight:I

    invoke-virtual {v2, v14, v5, v15}, Lcom/google/android/finsky/layout/ArtistBucketEntry;->setDocument(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;I)V

    .line 189
    const v14, 0x7f080011

    invoke-virtual {v2, v14}, Lcom/google/android/finsky/layout/ArtistBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mCurrentPageUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v15, v5, v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getClickListener(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    invoke-virtual {v13, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 206
    .end local v1           #artistEntry:Landroid/view/View;
    .end local v2           #artistLayer:Lcom/google/android/finsky/layout/ArtistBucketEntry;
    :goto_cd
    add-int/lit8 v9, v9, 0x1

    .line 179
    add-int/lit8 v4, v4, 0x1

    goto :goto_72

    .line 175
    .end local v4           #colNum:I
    .end local v5           #data:Lcom/google/android/finsky/api/model/Document;
    .end local v7           #isLastRow:Z
    .end local v13           #rowView:Landroid/view/ViewGroup;
    :cond_d2
    const/4 v7, 0x0

    goto :goto_60

    .line 180
    .restart local v4       #colNum:I
    .restart local v7       #isLastRow:Z
    .restart local v13       #rowView:Landroid/view/ViewGroup;
    :cond_d4
    const/4 v5, 0x0

    goto :goto_85

    .line 194
    .restart local v5       #data:Lcom/google/android/finsky/api/model/Document;
    :cond_d6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mInflater:Landroid/view/LayoutInflater;

    const v15, 0x7f040095

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v13, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 196
    .local v3, cellView:Landroid/view/View;
    if-eqz v5, :cond_10c

    .line 197
    const v14, 0x7f080029

    invoke-virtual {v3, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/layout/OverviewBucketEntry;

    .line 199
    .local v6, genericEntry:Lcom/google/android/finsky/layout/OverviewBucketEntry;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v6, v14, v5, v7}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setDocument(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Z)V

    .line 200
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mCurrentPageUrl:Ljava/lang/String;

    invoke-virtual {v14, v5, v15}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getClickListener(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v14

    invoke-virtual {v6, v14}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    if-lez v4, :cond_110

    const/4 v14, 0x1

    :goto_109
    invoke-virtual {v6, v14}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setLeftSeparatorVisibility(Z)V

    .line 204
    .end local v6           #genericEntry:Lcom/google/android/finsky/layout/OverviewBucketEntry;
    :cond_10c
    invoke-virtual {v13, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_cd

    .line 202
    .restart local v6       #genericEntry:Lcom/google/android/finsky/layout/OverviewBucketEntry;
    :cond_110
    const/4 v14, 0x0

    goto :goto_109

    .line 208
    .end local v3           #cellView:Landroid/view/View;
    .end local v5           #data:Lcom/google/android/finsky/api/model/Document;
    .end local v6           #genericEntry:Lcom/google/android/finsky/layout/OverviewBucketEntry;
    :cond_112
    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 174
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_59
.end method
