.class public Lcom/google/android/finsky/adapters/ReviewsAdapter;
.super Lcom/google/android/finsky/adapters/PaginatedListAdapter;
.source "ReviewsAdapter.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/adapters/ReviewsAdapter$3;,
        Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;,
        Lcom/google/android/finsky/adapters/ReviewsAdapter$RateReviewHandler;
    }
.end annotation


# instance fields
.field private final mData:Lcom/google/android/finsky/api/model/DfeReviews;

.field private final mDoc:Lcom/google/android/finsky/api/model/Document;

.field private mHeaderVisible:Z

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mRatingHandler:Lcom/google/android/finsky/adapters/ReviewsAdapter$RateReviewHandler;

.field private mReviewStatsViewBinder:Lcom/google/android/finsky/activities/ReviewStatsViewBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeReviews;Lcom/google/android/finsky/adapters/ReviewsAdapter$RateReviewHandler;)V
    .registers 8
    .parameter "context"
    .parameter "doc"
    .parameter "reviews"
    .parameter "handler"

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/DfeReviews;->inErrorState()Z

    move-result v1

    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/DfeReviews;->isMoreAvailable()Z

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/finsky/adapters/PaginatedListAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;ZZ)V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mHeaderVisible:Z

    .line 65
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 66
    iput-object p2, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mDoc:Lcom/google/android/finsky/api/model/Document;

    .line 67
    iput-object p3, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    .line 68
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 69
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 70
    iput-object p4, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mRatingHandler:Lcom/google/android/finsky/adapters/ReviewsAdapter$RateReviewHandler;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/adapters/ReviewsAdapter;)Lcom/google/android/finsky/adapters/ReviewsAdapter$RateReviewHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mRatingHandler:Lcom/google/android/finsky/adapters/ReviewsAdapter$RateReviewHandler;

    return-object v0
.end method

.method private bindItemView(Landroid/view/View;Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;I)V
    .registers 15
    .parameter "view"
    .parameter "holder"
    .parameter "position"

    .prologue
    .line 199
    invoke-virtual {p0, p3}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getItem(I)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    move-result-object v2

    .line 201
    .local v2, review:Lcom/google/android/finsky/remoting/protos/Rev$Review;
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 202
    .local v6, title:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getAuthorName()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, authorName:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getSource()Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, reviewSource:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 206
    .local v5, sourceUrl:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b5

    .line 207
    iget-object v7, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v7, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    :goto_25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_be

    .line 214
    iget-object v7, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->author:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v7, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->author:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    :goto_36
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c7

    .line 221
    iget-object v7, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->source:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v7, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->source:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    iget-object v7, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->source:Landroid/widget/TextView;

    new-instance v8, Lcom/google/android/finsky/adapters/ReviewsAdapter$1;

    invoke-direct {v8, p0, v5}, Lcom/google/android/finsky/adapters/ReviewsAdapter$1;-><init>(Lcom/google/android/finsky/adapters/ReviewsAdapter;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    :goto_55
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getComment()Ljava/lang/String;

    move-result-object v3

    .line 235
    .local v3, reviewComment:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_64

    .line 236
    iget-object v7, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->reviewText:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    :cond_64
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasStarRating()Z

    move-result v7

    if-eqz v7, :cond_cf

    .line 240
    iget-object v7, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->ratingBar:Landroid/widget/RatingBar;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 241
    iget-object v7, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getStarRating()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/widget/RatingBar;->setRating(F)V

    .line 246
    :goto_7a
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasTimestampMsec()Z

    move-result v7

    if-eqz v7, :cond_d7

    .line 247
    iget-object v7, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->reviewDate:Landroid/widget/TextView;

    new-instance v8, Ljava/util/Date;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getTimestampMsec()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-static {v8}, Lcom/google/android/finsky/utils/DateUtils;->formatShortDisplayDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v7, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->reviewDate:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    :goto_98
    iget-object v7, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->canRateReview(I)Z

    move-result v1

    .line 255
    .local v1, canRateReview:Z
    iget-object v8, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->ratingImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_df

    const/4 v7, 0x0

    :goto_a7
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    if-eqz v1, :cond_e2

    .line 258
    new-instance v7, Lcom/google/android/finsky/adapters/ReviewsAdapter$2;

    invoke-direct {v7, p0, v2}, Lcom/google/android/finsky/adapters/ReviewsAdapter$2;-><init>(Lcom/google/android/finsky/adapters/ReviewsAdapter;Lcom/google/android/finsky/remoting/protos/Rev$Review;)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    :goto_b4
    return-void

    .line 210
    .end local v1           #canRateReview:Z
    .end local v3           #reviewComment:Ljava/lang/String;
    :cond_b5
    iget-object v7, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_25

    .line 217
    :cond_be
    iget-object v7, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->author:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_36

    .line 231
    :cond_c7
    iget-object v7, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->source:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_55

    .line 243
    .restart local v3       #reviewComment:Ljava/lang/String;
    :cond_cf
    iget-object v7, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->ratingBar:Landroid/widget/RatingBar;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/RatingBar;->setVisibility(I)V

    goto :goto_7a

    .line 251
    :cond_d7
    iget-object v7, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->reviewDate:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_98

    .line 255
    .restart local v1       #canRateReview:Z
    :cond_df
    const/16 v7, 0x8

    goto :goto_a7

    .line 265
    :cond_e2
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_b4
.end method

.method private getHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 164
    if-nez p1, :cond_2d

    const v1, 0x7f0400b0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object v0, v1

    .line 166
    .end local p1
    .local v0, headerView:Landroid/widget/TextView;
    :goto_d
    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendForegroundColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f070126

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    return-object v0

    .line 164
    .end local v0           #headerView:Landroid/widget/TextView;
    .restart local p1
    :cond_2d
    check-cast p1, Landroid/widget/TextView;

    move-object v0, p1

    goto :goto_d
.end method

.method private getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 184
    if-nez p2, :cond_c

    .line 185
    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400b1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 188
    :cond_c
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;

    .line 190
    .local v0, holder:Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;
    if-nez v0, :cond_19

    .line 191
    new-instance v0, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;

    .end local v0           #holder:Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;
    invoke-direct {v0, p2}, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 194
    .restart local v0       #holder:Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;
    :cond_19
    invoke-direct {p0, p2, v0, p1}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->bindItemView(Landroid/view/View;Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;I)V

    .line 195
    return-object p2
.end method

.method private getStatisticsView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 173
    if-nez p1, :cond_16

    const v1, 0x7f0400b2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 176
    .local v0, statsView:Landroid/view/View;
    :goto_a
    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mReviewStatsViewBinder:Lcom/google/android/finsky/activities/ReviewStatsViewBinder;

    if-eqz v1, :cond_15

    .line 177
    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mReviewStatsViewBinder:Lcom/google/android/finsky/activities/ReviewStatsViewBinder;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/ReviewStatsViewBinder;->bind(Landroid/view/View;)V

    .line 179
    :cond_15
    return-object v0

    .end local v0           #statsView:Landroid/view/View;
    :cond_16
    move-object v0, p1

    .line 173
    goto :goto_a
.end method

.method private statsVisible()Z
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mReviewStatsViewBinder:Lcom/google/android/finsky/activities/ReviewStatsViewBinder;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mReviewStatsViewBinder:Lcom/google/android/finsky/activities/ReviewStatsViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/ReviewStatsViewBinder;->hasData()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public getCount()I
    .registers 4

    .prologue
    .line 75
    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeReviews;->getCount()I

    move-result v0

    .line 77
    .local v0, result:I
    iget-boolean v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mHeaderVisible:Z

    if-eqz v1, :cond_c

    add-int/lit8 v0, v0, 0x1

    .line 79
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getFooterMode()Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->NONE:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    if-eq v1, v2, :cond_16

    .line 80
    add-int/lit8 v0, v0, 0x1

    .line 82
    :cond_16
    return v0
.end method

.method public getFirstReviewViewIndex()I
    .registers 3

    .prologue
    .line 150
    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeReviews;->getCount()I

    move-result v1

    if-nez v1, :cond_a

    .line 151
    const/4 v0, -0x1

    .line 160
    :cond_9
    :goto_9
    return v0

    .line 153
    :cond_a
    const/4 v0, 0x0

    .line 154
    .local v0, firstReviewView:I
    iget-boolean v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mHeaderVisible:Z

    if-eqz v1, :cond_11

    .line 155
    add-int/lit8 v0, v0, 0x1

    .line 157
    :cond_11
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->statsVisible()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public getItem(I)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .registers 3
    .parameter "position"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeReviews;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_11

    .line 120
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/api/model/DfeReviews;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Rev$Review;

    .line 122
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getItem(I)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .registers 6
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    .line 92
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 93
    .local v0, lastRow:I
    iget-boolean v2, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mHeaderVisible:Z

    if-eqz v2, :cond_f

    if-nez p1, :cond_f

    .line 94
    const/4 v1, 0x0

    .line 113
    :cond_e
    :goto_e
    :pswitch_e
    return v1

    .line 96
    :cond_f
    iget-object v2, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mReviewStatsViewBinder:Lcom/google/android/finsky/activities/ReviewStatsViewBinder;

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mReviewStatsViewBinder:Lcom/google/android/finsky/activities/ReviewStatsViewBinder;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/ReviewStatsViewBinder;->hasData()Z

    move-result v2

    if-eqz v2, :cond_29

    iget-boolean v2, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mHeaderVisible:Z

    if-eqz v2, :cond_21

    if-eq p1, v1, :cond_27

    :cond_21
    iget-boolean v2, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mHeaderVisible:Z

    if-nez v2, :cond_29

    if-nez p1, :cond_29

    .line 99
    :cond_27
    const/4 v1, 0x4

    goto :goto_e

    .line 101
    :cond_29
    if-ne p1, v0, :cond_e

    .line 102
    sget-object v2, Lcom/google/android/finsky/adapters/ReviewsAdapter$3;->$SwitchMap$com$google$android$finsky$adapters$PaginatedListAdapter$FooterMode:[I

    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getFooterMode()Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_58

    .line 110
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No footer or item at row "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    :pswitch_53
    const/4 v1, 0x2

    goto :goto_e

    .line 106
    :pswitch_55
    const/4 v1, 0x3

    goto :goto_e

    .line 102
    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_53
        :pswitch_55
        :pswitch_e
    .end packed-switch
.end method

.method protected getLastRequestError()Ljava/lang/String;
    .registers 3

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeReviews;->getVolleyError()Lcom/android/volley/VolleyError;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getItemViewType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_44

    .line 140
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type for getView "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getItemViewType(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :pswitch_24
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 138
    :goto_28
    return-object v1

    .line 131
    :pswitch_29
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getStatisticsView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_28

    .line 133
    :pswitch_2e
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getFirstReviewViewIndex()I

    move-result v0

    .line 134
    .local v0, offset:I
    sub-int v1, p1, v0

    invoke-direct {p0, v1, p2, p3}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_28

    .line 136
    .end local v0           #offset:I
    :pswitch_39
    invoke-virtual {p0, p2, p3}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getLoadingFooterView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_28

    .line 138
    :pswitch_3e
    invoke-virtual {p0, p2, p3}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getErrorFooterView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_28

    .line 127
    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_24
        :pswitch_2e
        :pswitch_39
        :pswitch_3e
        :pswitch_29
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 87
    const/4 v0, 0x5

    return v0
.end method

.method protected isMoreDataAvailable()Z
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeReviews;->isMoreAvailable()Z

    move-result v0

    return v0
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 308
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 309
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 2
    .parameter "error"

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->triggerFooterErrorMode()V

    .line 314
    return-void
.end method

.method protected retryLoadingItems()V
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeReviews;->retryLoadItems()V

    .line 282
    return-void
.end method

.method public setHeaderVisible(Z)V
    .registers 2
    .parameter "visible"

    .prologue
    .line 317
    iput-boolean p1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mHeaderVisible:Z

    .line 318
    return-void
.end method

.method public setReviewStatsViewBinder(Lcom/google/android/finsky/activities/ReviewStatsViewBinder;)V
    .registers 4
    .parameter "reviewStatsViewBinder"

    .prologue
    .line 321
    iput-object p1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mReviewStatsViewBinder:Lcom/google/android/finsky/activities/ReviewStatsViewBinder;

    .line 322
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mReviewStatsViewBinder:Lcom/google/android/finsky/activities/ReviewStatsViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/ReviewStatsViewBinder;->setData(Lcom/google/android/finsky/api/model/Document;)V

    .line 323
    return-void
.end method
