.class public Lcom/google/android/finsky/activities/ReviewListViewBinder;
.super Lcom/google/android/finsky/fragments/ViewBinder;
.source "ReviewListViewBinder.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/google/android/finsky/adapters/ReviewsAdapter$RateReviewHandler;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/fragments/ViewBinder",
        "<",
        "Lcom/google/android/finsky/api/model/DfeReviews;",
        ">;",
        "Lcom/google/android/finsky/api/model/OnDataChangedListener;",
        "Lcom/android/volley/Response$ErrorListener;",
        "Lcom/google/android/finsky/adapters/ReviewsAdapter$RateReviewHandler;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

.field private mContainerFragment:Landroid/support/v4/app/Fragment;

.field private mContentLayout:Landroid/view/ViewGroup;

.field private mDocument:Lcom/google/android/finsky/api/model/Document;

.field private mHasLoadedAtLeastOnce:Z

.field private mReviewList:Landroid/widget/ListView;

.field private final mReviewStatsViewBinder:Lcom/google/android/finsky/activities/ReviewStatsViewBinder;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/ViewBinder;-><init>()V

    .line 42
    new-instance v0, Lcom/google/android/finsky/activities/ReviewStatsViewBinder;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/ReviewStatsViewBinder;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mReviewStatsViewBinder:Lcom/google/android/finsky/activities/ReviewStatsViewBinder;

    return-void
.end method


# virtual methods
.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;)V
    .registers 6
    .parameter "reviewsView"
    .parameter "document"

    .prologue
    .line 51
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    iput-object p1, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mContentLayout:Landroid/view/ViewGroup;

    .line 52
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mContentLayout:Landroid/view/ViewGroup;

    const v1, 0x7f080119

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mReviewList:Landroid/widget/ListView;

    .line 54
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    if-eqz v0, :cond_1a

    .line 55
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->onDestroyView()V

    .line 57
    :cond_1a
    new-instance v1, Lcom/google/android/finsky/adapters/ReviewsAdapter;

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-direct {v1, v2, p2, v0, p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeReviews;Lcom/google/android/finsky/adapters/ReviewsAdapter$RateReviewHandler;)V

    iput-object v1, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    .line 58
    iput-object p2, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mDocument:Lcom/google/android/finsky/api/model/Document;

    .line 59
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mHasLoadedAtLeastOnce:Z

    if-eqz v0, :cond_48

    .line 60
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mReviewList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 64
    :goto_33
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mReviewList:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 65
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mReviewList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mReviewStatsViewBinder:Lcom/google/android/finsky/activities/ReviewStatsViewBinder;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->setReviewStatsViewBinder(Lcom/google/android/finsky/activities/ReviewStatsViewBinder;)V

    .line 68
    return-void

    .line 62
    :cond_48
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mReviewList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mContentLayout:Landroid/view/ViewGroup;

    const v2, 0x7f080144

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_33
.end method

.method public getAdapter()Lcom/google/android/finsky/adapters/ReviewsAdapter;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    return-object v0
.end method

.method public init(Landroid/content/Context;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;)V
    .registers 6
    .parameter "context"
    .parameter "containerFragment"
    .parameter "dfeApi"
    .parameter "nm"
    .parameter "bitmapLoader"

    .prologue
    .line 46
    invoke-super {p0, p1, p4, p5}, Lcom/google/android/finsky/fragments/ViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 47
    iput-object p2, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mContainerFragment:Landroid/support/v4/app/Fragment;

    .line 48
    return-void
.end method

.method public onDataChanged()V
    .registers 4

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mHasLoadedAtLeastOnce:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mReviewList:Landroid/widget/ListView;

    if-eqz v0, :cond_19

    .line 73
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mReviewList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mContentLayout:Landroid/view/ViewGroup;

    const v2, 0x7f080144

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mHasLoadedAtLeastOnce:Z

    .line 76
    :cond_19
    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 101
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    if-eqz v0, :cond_c

    .line 102
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->onDestroyView()V

    .line 103
    iput-object v1, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    .line 105
    :cond_c
    iput-object v1, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mReviewList:Landroid/widget/ListView;

    .line 106
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    if-eqz v0, :cond_22

    .line 107
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 108
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 109
    iput-object v1, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    .line 111
    :cond_22
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .parameter "error"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mReviewList:Landroid/widget/ListView;

    if-eqz v0, :cond_9

    .line 96
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->triggerFooterErrorMode()V

    .line 98
    :cond_9
    return-void
.end method

.method public onRateReview(Lcom/google/android/finsky/remoting/protos/Rev$Review;)V
    .registers 7
    .parameter "review"

    .prologue
    .line 116
    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mContainerFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 117
    .local v1, fragmentManager:Landroid/support/v4/app/FragmentManager;
    const-string v2, "rate_review_dialog"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 125
    :goto_e
    return-void

    .line 121
    :cond_f
    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getCommentId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/google/android/finsky/activities/RateReviewDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)Lcom/google/android/finsky/activities/RateReviewDialog;

    move-result-object v0

    .line 123
    .local v0, dialog:Lcom/google/android/finsky/activities/RateReviewDialog;
    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mContainerFragment:Landroid/support/v4/app/Fragment;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/finsky/activities/RateReviewDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 124
    const-string v2, "rate_review_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/activities/RateReviewDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public setData(Lcom/google/android/finsky/api/model/DfeReviews;)V
    .registers 3
    .parameter "data"

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mHasLoadedAtLeastOnce:Z

    .line 82
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    if-eqz v0, :cond_15

    .line 83
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 84
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 87
    :cond_15
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/ViewBinder;->setData(Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeReviews;->clearTransientState()V

    .line 89
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 90
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 91
    return-void
.end method

.method public bridge synthetic setData(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    check-cast p1, Lcom/google/android/finsky/api/model/DfeReviews;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/ReviewListViewBinder;->setData(Lcom/google/android/finsky/api/model/DfeReviews;)V

    return-void
.end method
