.class public Lcom/google/android/finsky/activities/TabbedBrowseFragment;
.super Lcom/google/android/finsky/fragments/UrlBasedPageFragment;
.source "TabbedBrowseFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field private mBackendId:I

.field private mBreadcrumb:Ljava/lang/String;

.field mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

.field mContentListData:Lcom/google/android/finsky/api/model/DfeList;

.field private mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

.field private mReferringBrowseUrl:Ljava/lang/String;

.field private mRestoreSelectedPanel:I

.field private mSavedInstanceState:Landroid/os/Bundle;

.field mTabbedAdapter:Lcom/google/android/finsky/activities/TabbedAdapter;

.field private mTabbedAdapterBundle:Landroid/os/Bundle;

.field mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBackendId:I

    .line 63
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mRestoreSelectedPanel:I

    return-void
.end method

.method private clearState()V
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 371
    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    if-eqz v3, :cond_12

    .line 372
    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v3, p0}, Lcom/google/android/finsky/api/model/DfeBrowse;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 373
    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v3, p0}, Lcom/google/android/finsky/api/model/DfeBrowse;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 374
    iput-object v5, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    .line 377
    :cond_12
    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v3, :cond_22

    .line 378
    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v3, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 379
    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v3, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 380
    iput-object v5, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    .line 383
    :cond_22
    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v3, :cond_32

    .line 384
    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v3, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 385
    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v3, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 386
    iput-object v5, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    .line 390
    :cond_32
    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mDataView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_60

    .line 391
    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mDataView:Landroid/view/ViewGroup;

    const v4, 0x7f080189

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 392
    .local v2, titleStrip:Landroid/view/View;
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 395
    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mDataView:Landroid/view/ViewGroup;

    const v4, 0x7f08018a

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 396
    .local v0, leftOverview:Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 397
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mDataView:Landroid/view/ViewGroup;

    const v4, 0x7f08018c

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 400
    .local v1, rightOverview:Landroid/view/View;
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 401
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    .end local v0           #leftOverview:Landroid/view/View;
    .end local v1           #rightOverview:Landroid/view/View;
    .end local v2           #titleStrip:Landroid/view/View;
    :cond_60
    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v3, :cond_70

    .line 404
    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v5}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 405
    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v5}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 406
    iput-object v5, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 408
    :cond_70
    return-void
.end method

.method private getBreadcrumbText()Ljava/lang/String;
    .registers 6

    .prologue
    .line 209
    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/DfeBrowse;->getBreadcrumbList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 211
    .local v1, breadcrumbListSize:I
    if-lez v1, :cond_1f

    .line 213
    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/DfeBrowse;->getBreadcrumbList()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->getName()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, breadcrumb:Ljava/lang/String;
    :goto_1e
    return-object v0

    .line 215
    .end local v0           #breadcrumb:Ljava/lang/String;
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v3

    iget v4, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBackendId:I

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(I)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    move-result-object v2

    .line 216
    .local v2, data:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    if-nez v2, :cond_2e

    .line 218
    const-string v0, ""

    .restart local v0       #breadcrumb:Ljava/lang/String;
    goto :goto_1e

    .line 219
    .end local v0           #breadcrumb:Ljava/lang/String;
    :cond_2e
    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canGoUp()Z

    move-result v3

    if-nez v3, :cond_40

    .line 222
    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f070194

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #breadcrumb:Ljava/lang/String;
    goto :goto_1e

    .line 225
    .end local v0           #breadcrumb:Ljava/lang/String;
    :cond_40
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getName()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #breadcrumb:Ljava/lang/String;
    goto :goto_1e
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)Lcom/google/android/finsky/activities/TabbedBrowseFragment;
    .registers 7
    .parameter "url"
    .parameter "title"
    .parameter "backendId"
    .parameter "referrerBrowseUrl"
    .parameter "dfeToc"

    .prologue
    .line 86
    new-instance v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;-><init>()V

    .line 88
    .local v0, fragment:Lcom/google/android/finsky/activities/TabbedBrowseFragment;
    if-ltz p2, :cond_9

    .line 89
    iput p2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBackendId:I

    .line 92
    :cond_9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 93
    iput-object p1, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBreadcrumb:Ljava/lang/String;

    .line 96
    :cond_11
    invoke-virtual {v0, p4, p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->setDfeTocAndUrl(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    .line 97
    const-string v1, "TabbedBrowseFragment.ReferrerUrl"

    invoke-virtual {v0, v1, p3}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-object v0
.end method

.method private recordState()V
    .registers 4

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 423
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "TabbedBrowseFragment.BrowseData"

    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 424
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBreadcrumb:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 425
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "TabbedBrowseFragment.Breadcrumb"

    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBreadcrumb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_1c
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "TabbedBrowseFragment.BackendId"

    iget v2, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBackendId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 430
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_32

    .line 431
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "TabbedBrowseFragment.ListData"

    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 434
    :cond_32
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_3f

    .line 435
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "TabbedBrowseFragment.PromoData"

    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 438
    :cond_3f
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_57

    .line 439
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "TabbedBrowseFragment.CurrentTab"

    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 440
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/TabbedAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/TabbedAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 443
    :cond_57
    return-void
.end method

.method private restoreFromBundle(Z)V
    .registers 4
    .parameter "restoredFromDisk"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    if-eqz v0, :cond_e

    .line 141
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeBrowse;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 142
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeBrowse;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 145
    :cond_e
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "TabbedBrowseFragment.BrowseData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/DfeBrowse;

    iput-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    .line 146
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "TabbedBrowseFragment.ListData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    if-nez p1, :cond_3d

    .line 147
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "TabbedBrowseFragment.ListData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/DfeList;

    iput-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    .line 149
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeList;->setDfeApi(Lcom/google/android/finsky/api/DfeApi;)V

    .line 153
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mTabbedAdapterBundle:Landroid/os/Bundle;

    .line 156
    :cond_3d
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "TabbedBrowseFragment.PromoData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    if-nez p1, :cond_5c

    .line 157
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "TabbedBrowseFragment.PromoData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/DfeList;

    iput-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    .line 158
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeList;->setDfeApi(Lcom/google/android/finsky/api/DfeApi;)V

    .line 161
    :cond_5c
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "TabbedBrowseFragment.Breadcrumb"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 162
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "TabbedBrowseFragment.Breadcrumb"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBreadcrumb:Ljava/lang/String;

    .line 165
    :cond_70
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "TabbedBrowseFragment.BackendId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 166
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "TabbedBrowseFragment.BackendId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBackendId:I

    .line 170
    :cond_84
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "TabbedBrowseFragment.CurrentTab"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 171
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "TabbedBrowseFragment.CurrentTab"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mRestoreSelectedPanel:I

    .line 175
    :cond_98
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->onDataChanged()V

    .line 178
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->isDataReady()Z

    move-result v0

    if-nez v0, :cond_a4

    .line 179
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->switchToLoading()V

    .line 181
    :cond_a4
    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .registers 2

    .prologue
    .line 195
    const v0, 0x7f0400b8

    return v0
.end method

.method protected isDataReady()Z
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeBrowse;->isReady()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->isReady()Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_18
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->isReady()Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_24
    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "TabbedBrowseFragment.ReferrerUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mReferringBrowseUrl:Ljava/lang/String;

    .line 114
    if-eqz p1, :cond_13

    .line 115
    iput-object p1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    .line 119
    :cond_13
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "TabbedBrowseFragment.BrowseData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 120
    if-eqz p1, :cond_24

    const/4 v0, 0x1

    :goto_20
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->restoreFromBundle(Z)V

    .line 131
    :goto_23
    return-void

    .line 120
    :cond_24
    const/4 v0, 0x0

    goto :goto_20

    .line 124
    :cond_26
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->isDataReady()Z

    move-result v0

    if-nez v0, :cond_36

    .line 125
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->switchToLoading()V

    .line 126
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->requestData()V

    .line 127
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->rebindActionBar()V

    goto :goto_23

    .line 129
    :cond_36
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->rebindViews()V

    goto :goto_23
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->setRetainInstance(Z)V

    .line 105
    return-void
.end method

.method public onDataChanged()V
    .registers 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeBrowse;->isReady()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 240
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    if-nez v0, :cond_2e

    .line 242
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeBrowse;->buildContentList()Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    .line 243
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_2e

    .line 245
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 246
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 247
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeList;->setDfeApi(Lcom/google/android/finsky/api/DfeApi;)V

    .line 248
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    .line 251
    :cond_2e
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    if-nez v0, :cond_54

    .line 253
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeBrowse;->buildPromoList()Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    .line 254
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_54

    .line 256
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 257
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 258
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeList;->setDfeApi(Lcom/google/android/finsky/api/DfeApi;)V

    .line 259
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    .line 264
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 266
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_72

    .line 267
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    iget v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBackendId:I

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeList;->getBackendId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBackendId:I

    .line 268
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 269
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 272
    :cond_72
    invoke-direct {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->getBreadcrumbText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBreadcrumb:Ljava/lang/String;

    .line 273
    invoke-super {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onDataChanged()V

    .line 276
    :cond_7b
    return-void
.end method

.method public onDestroyView()V
    .registers 1

    .prologue
    .line 447
    invoke-direct {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->recordState()V

    .line 448
    invoke-direct {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->clearState()V

    .line 449
    invoke-super {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onDestroyView()V

    .line 450
    return-void
.end method

.method protected onInitViewBinders()V
    .registers 1

    .prologue
    .line 360
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2
    .parameter "scrollState"

    .prologue
    .line 453
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 456
    return-void
.end method

.method public onPageSelected(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 460
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/TabbedAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/activities/TabbedAdapter;->onPageSelected(I)V

    .line 461
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "bundle"

    .prologue
    .line 412
    invoke-direct {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->recordState()V

    .line 413
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 414
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 415
    return-void
.end method

.method public rebindActionBar()V
    .registers 3

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBreadcrumb:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateBreadcrumb(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    iget v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBackendId:I

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateCurrentBackendId(I)V

    .line 356
    return-void
.end method

.method public rebindViews()V
    .registers 23

    .prologue
    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->switchToData()V

    .line 281
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->rebindActionBar()V

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/TabbedAdapter;

    if-eqz v2, :cond_13

    .line 349
    :goto_12
    return-void

    .line 287
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mDataView:Landroid/view/ViewGroup;

    const v3, 0x7f080188

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 288
    new-instance v2, Lcom/google/android/finsky/activities/TabbedAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBackendId:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mReferringBrowseUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mTabbedAdapterBundle:Landroid/os/Bundle;

    invoke-direct/range {v2 .. v15}, Lcom/google/android/finsky/activities/TabbedAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeBrowse;Lcom/google/android/finsky/api/model/DfeList;Lcom/google/android/finsky/api/model/DfeList;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/TabbedAdapter;

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/TabbedAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0049

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    const v3, 0x7f0a0006

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(I)V

    .line 295
    const/16 v20, 0x1

    .line 296
    .local v20, shouldShowHeader:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeList;->getBucketCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b6

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeList;->getBucketList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/android/finsky/model/Bucket;

    .line 298
    .local v16, bucket:Lcom/google/android/finsky/model/Bucket;
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/finsky/model/Bucket;->hasEditorialSeriesContainer()Z

    move-result v2

    if-nez v2, :cond_b4

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/finsky/model/Bucket;->hasContainerWithBannerTemplate()Z

    move-result v2

    if-eqz v2, :cond_b6

    .line 299
    :cond_b4
    const/16 v20, 0x0

    .line 302
    .end local v16           #bucket:Lcom/google/android/finsky/model/Bucket;
    :cond_b6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mDataView:Landroid/view/ViewGroup;

    const v3, 0x7f080189

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/support/v4/view/PagerTitleStrip;

    .line 304
    .local v21, titleStrip:Landroid/support/v4/view/PagerTitleStrip;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mDataView:Landroid/view/ViewGroup;

    const v3, 0x7f08018a

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 305
    .local v18, leftOverview:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mDataView:Landroid/view/ViewGroup;

    const v3, 0x7f08018c

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 306
    .local v19, rightOverview:Landroid/view/View;
    if-eqz v20, :cond_16d

    .line 307
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/support/v4/view/PagerTitleStrip;->setVisibility(I)V

    .line 308
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 309
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBackendId:I

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendForegroundColor(Landroid/content/Context;I)I

    move-result v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/support/v4/view/PagerTitleStrip;->setTextColor(I)V

    .line 313
    const/high16 v2, 0x42a0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/support/v4/view/PagerTitleStrip;->setTextSpacing(I)V

    .line 315
    const v2, 0x3f333333

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/support/v4/view/PagerTitleStrip;->setNonPrimaryAlpha(F)V

    .line 317
    new-instance v2, Lcom/google/android/finsky/activities/TabbedBrowseFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment$1;-><init>(Lcom/google/android/finsky/activities/TabbedBrowseFragment;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    new-instance v2, Lcom/google/android/finsky/activities/TabbedBrowseFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment$2;-><init>(Lcom/google/android/finsky/activities/TabbedBrowseFragment;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    :goto_131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeBrowse;->hasCategories()Z

    move-result v2

    if-eqz v2, :cond_183

    const/16 v17, 0x1

    .line 342
    .local v17, currentItem:I
    :goto_146
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mRestoreSelectedPanel:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_158

    .line 344
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mRestoreSelectedPanel:I

    move/from16 v17, v0

    .line 345
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mRestoreSelectedPanel:I

    .line 347
    :cond_158
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->onPageScrolled(IFI)V

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v3, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto/16 :goto_12

    .line 335
    .end local v17           #currentItem:I
    :cond_16d
    const/16 v2, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/support/v4/view/PagerTitleStrip;->setVisibility(I)V

    .line 336
    const/16 v2, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 337
    const/16 v2, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_131

    .line 340
    :cond_183
    const/16 v17, 0x0

    goto :goto_146
.end method

.method public refresh()V
    .registers 2

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 187
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->rebindViews()V

    .line 191
    :goto_9
    return-void

    .line 189
    :cond_a
    invoke-super {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->refresh()V

    goto :goto_9
.end method

.method protected requestData()V
    .registers 4

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->clearState()V

    .line 365
    new-instance v0, Lcom/google/android/finsky/api/model/DfeBrowse;

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/api/model/DfeBrowse;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    .line 366
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeBrowse;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 367
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeBrowse;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 368
    return-void
.end method
