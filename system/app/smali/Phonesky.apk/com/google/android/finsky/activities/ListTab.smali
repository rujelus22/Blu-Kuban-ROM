.class public Lcom/google/android/finsky/activities/ListTab;
.super Ljava/lang/Object;
.source "ListTab.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/google/android/finsky/activities/ViewPagerTab;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# instance fields
.field private final mBinder:Lcom/google/android/finsky/fragments/BucketedListBinder;

.field private final mCurrentBrowseUrl:Ljava/lang/String;

.field private mIsCurrentlySelected:Z

.field private mLastKnownBucket:Lcom/google/android/finsky/model/Bucket;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mList:Lcom/google/android/finsky/api/model/DfeList;

.field private mListBoundAlready:Z

.field private mListTabContainer:Landroid/view/ViewGroup;

.field private mListTabWrapper:Landroid/view/ViewGroup;

.field private final mNumCellsWide:I

.field private final mReferrerBrowseUrl:Ljava/lang/String;

.field private mRestoreBundle:Landroid/os/Bundle;

.field private final mToc:Lcom/google/android/finsky/api/model/DfeToc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Landroid/view/LayoutInflater;Lcom/google/android/finsky/api/model/DfeList;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)V
    .registers 12
    .parameter "context"
    .parameter "navigationManager"
    .parameter "bitmapLoader"
    .parameter "inflater"
    .parameter "list"
    .parameter "referrerBrowseUrl"
    .parameter "currentBrowseUrl"
    .parameter "toc"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/ListTab;->mListBoundAlready:Z

    .line 79
    iput-object p4, p0, Lcom/google/android/finsky/activities/ListTab;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 81
    iput-object p5, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    .line 82
    iput-object p6, p0, Lcom/google/android/finsky/activities/ListTab;->mReferrerBrowseUrl:Ljava/lang/String;

    .line 83
    iput-object p7, p0, Lcom/google/android/finsky/activities/ListTab;->mCurrentBrowseUrl:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/ListTab;->mNumCellsWide:I

    .line 85
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/finsky/activities/ListTab;->mNumCellsWide:I

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeList;->setWindowDistance(I)V

    .line 88
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 89
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 90
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    .line 91
    iput-object p8, p0, Lcom/google/android/finsky/activities/ListTab;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    .line 93
    new-instance v0, Lcom/google/android/finsky/fragments/BucketedListBinder;

    const v1, 0x7f040023

    iget-object v2, p0, Lcom/google/android/finsky/activities/ListTab;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/fragments/BucketedListBinder;-><init>(ILcom/google/android/finsky/api/model/DfeToc;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mBinder:Lcom/google/android/finsky/fragments/BucketedListBinder;

    .line 94
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mBinder:Lcom/google/android/finsky/fragments/BucketedListBinder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/finsky/fragments/BucketedListBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/ListTab;)Lcom/google/android/finsky/api/model/DfeList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/ListTab;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ListTab;->syncViewToState()V

    return-void
.end method

.method private bindList(Landroid/view/View;Landroid/widget/ListView;)V
    .registers 10
    .parameter "loadingIndicator"
    .parameter "list"

    .prologue
    const/4 v3, 0x1

    .line 232
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/ListTab;->mListBoundAlready:Z

    if-nez v0, :cond_38

    .line 233
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 234
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mBinder:Lcom/google/android/finsky/fragments/BucketedListBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/fragments/BucketedListBinder;->setData(Lcom/google/android/finsky/api/model/BucketedList;)V

    .line 236
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mBinder:Lcom/google/android/finsky/fragments/BucketedListBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabWrapper:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/google/android/finsky/activities/ListTab;->mNumCellsWide:I

    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mLastKnownBucket:Lcom/google/android/finsky/model/Bucket;

    iget-object v5, p0, Lcom/google/android/finsky/activities/ListTab;->mCurrentBrowseUrl:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/finsky/activities/ListTab;->mRestoreBundle:Landroid/os/Bundle;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/fragments/BucketedListBinder;->bind(Landroid/view/ViewGroup;IILcom/google/android/finsky/model/Bucket;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 238
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mRestoreBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_36

    .line 239
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mRestoreBundle:Landroid/os/Bundle;

    const-string v1, "ListTab.ListParcelKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mRestoreBundle:Landroid/os/Bundle;

    .line 242
    :cond_36
    iput-boolean v3, p0, Lcom/google/android/finsky/activities/ListTab;->mListBoundAlready:Z

    .line 244
    :cond_38
    return-void
.end method

.method private inflateLayoutForTemplateType()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 220
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->getBucketCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_32

    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->getBucketList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/model/Bucket;

    invoke-virtual {v0}, Lcom/google/android/finsky/model/Bucket;->hasEditorialSeriesContainer()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 222
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040087

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabContainer:Landroid/view/ViewGroup;

    .line 228
    :goto_2a
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabWrapper:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 229
    return-void

    .line 226
    :cond_32
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040086

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabContainer:Landroid/view/ViewGroup;

    goto :goto_2a
.end method

.method private logClickForCurrentPage()V
    .registers 7

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->isReady()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->getBucketCount()I

    move-result v0

    if-lez v0, :cond_31

    .line 262
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/ListTab;->mReferrerBrowseUrl:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mCurrentBrowseUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->getBucketList()Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/model/Bucket;

    invoke-virtual {v0}, Lcom/google/android/finsky/model/Bucket;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/google/android/finsky/analytics/Analytics;->logListViewOnPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_31
    return-void
.end method

.method private syncViewToState()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 172
    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabWrapper:Landroid/view/ViewGroup;

    if-nez v4, :cond_8

    .line 216
    :cond_7
    :goto_7
    return-void

    .line 176
    :cond_8
    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabWrapper:Landroid/view/ViewGroup;

    const v5, 0x7f080076

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 177
    .local v3, loadingIndicator:Landroid/view/View;
    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabWrapper:Landroid/view/ViewGroup;

    const v5, 0x7f080147

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 178
    .local v0, errorIndicator:Landroid/view/View;
    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/DfeList;->isReady()Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 179
    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/DfeList;->getBucketCount()I

    move-result v4

    if-lez v4, :cond_3c

    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mLastKnownBucket:Lcom/google/android/finsky/model/Bucket;

    if-nez v4, :cond_3c

    .line 180
    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/DfeList;->getBucketList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/model/Bucket;

    iput-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mLastKnownBucket:Lcom/google/android/finsky/model/Bucket;

    .line 182
    :cond_3c
    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabContainer:Landroid/view/ViewGroup;

    if-nez v4, :cond_43

    .line 183
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ListTab;->inflateLayoutForTemplateType()V

    .line 185
    :cond_43
    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabWrapper:Landroid/view/ViewGroup;

    const v5, 0x7f080059

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 186
    .local v2, list:Landroid/widget/ListView;
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 187
    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 188
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 189
    invoke-direct {p0, v3, v2}, Lcom/google/android/finsky/activities/ListTab;->bindList(Landroid/view/View;Landroid/widget/ListView;)V

    goto :goto_7

    .line 190
    .end local v2           #list:Landroid/widget/ListView;
    :cond_5b
    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/DfeList;->inErrorState()Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 191
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 192
    const v4, 0x7f080045

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 193
    .local v1, errorMsg:Landroid/widget/TextView;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/DfeList;->getVolleyError()Lcom/android/volley/VolleyError;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    const v4, 0x7f0800fd

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/google/android/finsky/activities/ListTab$1;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/activities/ListTab$1;-><init>(Lcom/google/android/finsky/activities/ListTab;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_7

    .line 207
    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_7

    .line 210
    .end local v1           #errorMsg:Landroid/widget/TextView;
    :cond_9d
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 211
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 212
    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_7

    .line 213
    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_7
.end method


# virtual methods
.method public getView(I)Landroid/view/View;
    .registers 5
    .parameter "backendId"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabWrapper:Landroid/view/ViewGroup;

    if-nez v0, :cond_15

    .line 100
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040089

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabWrapper:Landroid/view/ViewGroup;

    .line 102
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ListTab;->syncViewToState()V

    .line 104
    :cond_15
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabWrapper:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onDataChanged()V
    .registers 2

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/ListTab;->mIsCurrentlySelected:Z

    if-eqz v0, :cond_7

    .line 128
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ListTab;->logClickForCurrentPage()V

    .line 130
    :cond_7
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ListTab;->syncViewToState()V

    .line 131
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 109
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mBinder:Lcom/google/android/finsky/fragments/BucketedListBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/BucketedListBinder;->onDestroyView()V

    .line 110
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 111
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 112
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->flushUnusedPages()V

    .line 113
    iput-object v1, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabContainer:Landroid/view/ViewGroup;

    .line 114
    iput-object v1, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabWrapper:Landroid/view/ViewGroup;

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/ListTab;->mListBoundAlready:Z

    .line 116
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 2
    .parameter "error"

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ListTab;->syncViewToState()V

    .line 249
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "bundle"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/android/finsky/activities/ListTab;->mRestoreBundle:Landroid/os/Bundle;

    .line 166
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .registers 5

    .prologue
    .line 146
    iget-object v2, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_29

    .line 147
    iget-object v2, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabContainer:Landroid/view/ViewGroup;

    const v3, 0x7f080059

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 148
    .local v0, list:Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_29

    .line 149
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 150
    .local v1, output:Landroid/os/Bundle;
    const-string v2, "ListTab.ListParcelKey"

    invoke-virtual {v0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 151
    iget-object v2, p0, Lcom/google/android/finsky/activities/ListTab;->mBinder:Lcom/google/android/finsky/fragments/BucketedListBinder;

    invoke-virtual {v2, v1}, Lcom/google/android/finsky/fragments/BucketedListBinder;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 155
    .end local v0           #list:Landroid/widget/ListView;
    .end local v1           #output:Landroid/os/Bundle;
    :goto_28
    return-object v1

    :cond_29
    const/4 v1, 0x0

    goto :goto_28
.end method

.method public setTabSelected(Z)V
    .registers 3
    .parameter "isSelected"

    .prologue
    .line 253
    if-eqz p1, :cond_9

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/ListTab;->mIsCurrentlySelected:Z

    if-nez v0, :cond_9

    .line 255
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ListTab;->logClickForCurrentPage()V

    .line 257
    :cond_9
    iput-boolean p1, p0, Lcom/google/android/finsky/activities/ListTab;->mIsCurrentlySelected:Z

    .line 258
    return-void
.end method
