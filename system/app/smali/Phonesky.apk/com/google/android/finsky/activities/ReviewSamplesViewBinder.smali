.class public Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;
.super Lcom/google/android/finsky/fragments/DetailsViewBinder;
.source "ReviewSamplesViewBinder.java"

# interfaces
.implements Lcom/google/android/finsky/adapters/ReviewsAdapter$RateReviewHandler;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# instance fields
.field private mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

.field private mAlwaysShowMore:Z

.field private mContainerFragment:Landroid/support/v4/app/Fragment;

.field private mData:Lcom/google/android/finsky/api/model/DfeReviews;

.field private mReviewHolder:Landroid/widget/LinearLayout;

.field private final mReviewStatsViewBinder:Lcom/google/android/finsky/activities/ReviewStatsViewBinder;

.field private mStatsHolder:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;-><init>()V

    .line 42
    new-instance v0, Lcom/google/android/finsky/activities/ReviewStatsViewBinder;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/ReviewStatsViewBinder;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mReviewStatsViewBinder:Lcom/google/android/finsky/activities/ReviewStatsViewBinder;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;)Lcom/google/android/finsky/api/model/Document;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method


# virtual methods
.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Z)V
    .registers 6
    .parameter "reviewsSection"
    .parameter "doc"
    .parameter "isLoaded"

    .prologue
    .line 53
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getReviewsUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 76
    :goto_a
    return-void

    .line 57
    :cond_b
    const v0, 0x7f070126

    invoke-super {p0, p1, p2, v0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;I)V

    .line 59
    if-nez p3, :cond_19

    .line 60
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    .line 65
    :cond_19
    const v0, 0x7f0800d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mReviewHolder:Landroid/widget/LinearLayout;

    .line 69
    const v0, 0x7f08017a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mStatsHolder:Landroid/widget/LinearLayout;

    .line 70
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mStatsHolder:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3f

    .line 71
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mReviewStatsViewBinder:Lcom/google/android/finsky/activities/ReviewStatsViewBinder;

    invoke-virtual {v0, p2}, Lcom/google/android/finsky/activities/ReviewStatsViewBinder;->setData(Lcom/google/android/finsky/api/model/Document;)V

    .line 72
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mReviewStatsViewBinder:Lcom/google/android/finsky/activities/ReviewStatsViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mStatsHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/ReviewStatsViewBinder;->bind(Landroid/view/View;)V

    .line 75
    :cond_3f
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->refresh()V

    goto :goto_a
.end method

.method public init(Landroid/content/Context;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
    .registers 7
    .parameter "context"
    .parameter "containerFragment"
    .parameter "api"
    .parameter "navManager"

    .prologue
    .line 46
    invoke-super {p0, p1, p3, p4}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 47
    iput-object p2, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mContainerFragment:Landroid/support/v4/app/Fragment;

    .line 48
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mAlwaysShowMore:Z

    .line 50
    return-void
.end method

.method public onDataChanged()V
    .registers 11

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 98
    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/DfeReviews;->getCount()I

    move-result v2

    .line 99
    .local v2, reviewCount:I
    if-nez v2, :cond_13

    .line 100
    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 125
    :cond_12
    return-void

    .line 103
    :cond_13
    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 104
    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mLayout:Landroid/view/View;

    const v5, 0x7f0800d3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 105
    .local v0, footer:Landroid/view/View;
    iget-boolean v4, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mAlwaysShowMore:Z

    if-nez v4, :cond_2d

    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/DfeReviews;->getCount()I

    move-result v4

    if-le v4, v8, :cond_6c

    .line 106
    :cond_2d
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 107
    new-instance v4, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder$1;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder$1;-><init>(Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    :goto_38
    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mReviewHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-le v4, v7, :cond_4d

    .line 118
    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mReviewHolder:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mReviewHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v7, v5}, Landroid/widget/LinearLayout;->removeViews(II)V

    .line 120
    :cond_4d
    const/4 v1, 0x0

    .local v1, index:I
    :goto_4e
    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v1, v4, :cond_12

    .line 121
    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    iget-object v5, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    invoke-virtual {v5}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getFirstReviewViewIndex()I

    move-result v5

    add-int/2addr v5, v1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mReviewHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 123
    .local v3, reviewViewToBeAdded:Landroid/view/View;
    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mReviewHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    .line 114
    .end local v1           #index:I
    .end local v3           #reviewViewToBeAdded:Landroid/view/View;
    :cond_6c
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_38
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    if-eqz v0, :cond_9

    .line 130
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->onDestroyView()V

    .line 132
    :cond_9
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    if-eqz v0, :cond_12

    .line 133
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 135
    :cond_12
    return-void
.end method

.method public onRateReview(Lcom/google/android/finsky/remoting/protos/Rev$Review;)V
    .registers 7
    .parameter "review"

    .prologue
    .line 140
    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mContainerFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 141
    .local v1, fragmentManager:Landroid/support/v4/app/FragmentManager;
    const-string v2, "rate_review_dialog"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 149
    :goto_e
    return-void

    .line 145
    :cond_f
    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getCommentId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/google/android/finsky/activities/RateReviewDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)Lcom/google/android/finsky/activities/RateReviewDialog;

    move-result-object v0

    .line 147
    .local v0, dialog:Lcom/google/android/finsky/activities/RateReviewDialog;
    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mContainerFragment:Landroid/support/v4/app/Fragment;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/finsky/activities/RateReviewDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 148
    const-string v2, "rate_review_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/activities/RateReviewDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public refresh()V
    .registers 5

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-nez v0, :cond_5

    .line 94
    :goto_4
    return-void

    .line 87
    :cond_5
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    if-eqz v0, :cond_e

    .line 88
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 90
    :cond_e
    new-instance v0, Lcom/google/android/finsky/api/model/DfeReviews;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getReviewsUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/api/model/DfeReviews;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    .line 91
    new-instance v0, Lcom/google/android/finsky/adapters/ReviewsAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeReviews;Lcom/google/android/finsky/adapters/ReviewsAdapter$RateReviewHandler;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    .line 92
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 93
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeReviews;->startLoadItems()V

    goto :goto_4
.end method
