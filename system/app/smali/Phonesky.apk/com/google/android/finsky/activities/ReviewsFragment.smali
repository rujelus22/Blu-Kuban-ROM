.class public Lcom/google/android/finsky/activities/ReviewsFragment;
.super Lcom/google/android/finsky/fragments/PageFragment;
.source "ReviewsFragment.java"

# interfaces
.implements Lcom/google/android/finsky/activities/RateReviewDialog$Listener;


# instance fields
.field protected mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

.field protected mDocument:Lcom/google/android/finsky/api/model/Document;

.field protected final mReviewsBinder:Lcom/google/android/finsky/activities/ReviewListViewBinder;

.field private mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/PageFragment;-><init>()V

    .line 34
    new-instance v0, Lcom/google/android/finsky/activities/ReviewListViewBinder;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/ReviewListViewBinder;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsBinder:Lcom/google/android/finsky/activities/ReviewListViewBinder;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/ReviewsFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewsFragment;->reloadReviews()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/activities/ReviewsFragment;
    .registers 5
    .parameter "context"
    .parameter "document"

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, fragment:Lcom/google/android/finsky/activities/ReviewsFragment;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f09

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 42
    new-instance v0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;

    .end local v0           #fragment:Lcom/google/android/finsky/activities/ReviewsFragment;
    invoke-direct {v0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;-><init>()V

    .line 46
    .restart local v0       #fragment:Lcom/google/android/finsky/activities/ReviewsFragment;
    :goto_12
    const v1, 0x7f0e0033

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/ReviewsFragment;->setTheme(I)V

    .line 47
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/ReviewsFragment;->setDfeToc(Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 48
    const-string v1, "finsky.ReviewsFragment.document"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/activities/ReviewsFragment;->setArgument(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 49
    return-object v0

    .line 44
    :cond_29
    new-instance v0, Lcom/google/android/finsky/activities/ReviewsFragment;

    .end local v0           #fragment:Lcom/google/android/finsky/activities/ReviewsFragment;
    invoke-direct {v0}, Lcom/google/android/finsky/activities/ReviewsFragment;-><init>()V

    .restart local v0       #fragment:Lcom/google/android/finsky/activities/ReviewsFragment;
    goto :goto_12
.end method

.method private reloadReviews()V
    .registers 4

    .prologue
    .line 167
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getReviewsUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi;->invalidateReviewsCache(Ljava/lang/String;Z)V

    .line 168
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeReviews;->resetItems()V

    .line 169
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsFragment;->switchToLoading()V

    .line 170
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 171
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 172
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsFragment;->requestData()V

    .line 173
    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .registers 2

    .prologue
    .line 61
    const v0, 0x7f04007b

    return v0
.end method

.method protected isDataReady()Z
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeReviews;->isReady()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 67
    new-instance v0, Lcom/google/android/finsky/api/model/DfeDetails;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/api/model/DfeDetails;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    .line 68
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    if-nez v0, :cond_30

    .line 69
    new-instance v0, Lcom/google/android/finsky/api/model/DfeReviews;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getReviewsUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/api/model/DfeReviews;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    .line 70
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 71
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 73
    :cond_30
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsFragment;->isDataReady()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 74
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsFragment;->switchToLoading()V

    .line 75
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsFragment;->requestData()V

    .line 77
    :cond_3c
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "finsky.ReviewsFragment.document"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mDocument:Lcom/google/android/finsky/api/model/Document;

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/ReviewsFragment;->setRetainInstance(Z)V

    .line 57
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 82
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/fragments/PageFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, result:Landroid/view/View;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsFragment;->isDataReady()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 88
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsFragment;->onDataChanged()V

    .line 90
    :cond_d
    return-object v0
.end method

.method public onDataChanged()V
    .registers 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 124
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 125
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsBinder:Lcom/google/android/finsky/activities/ReviewListViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/ReviewListViewBinder;->setData(Lcom/google/android/finsky/api/model/DfeReviews;)V

    .line 126
    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onDataChanged()V

    .line 127
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsBinder:Lcom/google/android/finsky/activities/ReviewListViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/ReviewListViewBinder;->onDestroyView()V

    .line 132
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    if-eqz v0, :cond_13

    .line 133
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 134
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 136
    :cond_13
    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onDestroyView()V

    .line 137
    return-void
.end method

.method protected onInitViewBinders()V
    .registers 7

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsBinder:Lcom/google/android/finsky/activities/ReviewListViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v5, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/ReviewListViewBinder;->init(Landroid/content/Context;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 101
    return-void
.end method

.method public onPositiveClick(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)V
    .registers 7
    .parameter "docId"
    .parameter "reviewId"
    .parameter "newRating"

    .prologue
    .line 146
    const v1, 0x7f070144

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/activities/ReviewsFragment;->toast(II)V

    .line 147
    new-instance v0, Lcom/google/android/finsky/api/model/DfeRateReview;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->getRpcId()I

    move-result v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/google/android/finsky/api/model/DfeRateReview;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;I)V

    .line 149
    .local v0, request:Lcom/google/android/finsky/api/model/DfeRateReview;
    new-instance v1, Lcom/google/android/finsky/activities/ReviewsFragment$1;

    invoke-direct {v1, p0, p3}, Lcom/google/android/finsky/activities/ReviewsFragment$1;-><init>(Lcom/google/android/finsky/activities/ReviewsFragment;Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeRateReview;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 158
    new-instance v1, Lcom/google/android/finsky/activities/ReviewsFragment$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/ReviewsFragment$2;-><init>(Lcom/google/android/finsky/activities/ReviewsFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeRateReview;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 164
    return-void
.end method

.method public rebindActionBar()V
    .registers 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateCurrentBackendId(I)V

    .line 112
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateBreadcrumb(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method protected rebindViews()V
    .registers 4

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsFragment;->rebindActionBar()V

    .line 106
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsBinder:Lcom/google/android/finsky/activities/ReviewListViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mDataView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/activities/ReviewListViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;)V

    .line 107
    return-void
.end method

.method protected requestData()V
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeReviews;->startLoadItems()V

    .line 118
    return-void
.end method

.method protected toast(II)V
    .registers 4
    .parameter "resourceId"
    .parameter "duration"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 180
    return-void
.end method
