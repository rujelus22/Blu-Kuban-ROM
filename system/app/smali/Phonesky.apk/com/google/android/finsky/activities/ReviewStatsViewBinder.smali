.class public Lcom/google/android/finsky/activities/ReviewStatsViewBinder;
.super Ljava/lang/Object;
.source "ReviewStatsViewBinder.java"


# instance fields
.field private mAverageValue:Landroid/widget/TextView;

.field private mDoc:Lcom/google/android/finsky/api/model/Document;

.field private mFloatFormatter:Ljava/text/NumberFormat;

.field private mHasData:Z

.field private mHistogramTable:Lcom/google/android/finsky/layout/HistogramTable;

.field private mIntegerFormatter:Ljava/text/NumberFormat;

.field private mRatingBar:Landroid/widget/RatingBar;

.field private mRatingCount:Landroid/widget/TextView;

.field private mStatsView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewStatsViewBinder;->mFloatFormatter:Ljava/text/NumberFormat;

    .line 35
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewStatsViewBinder;->mFloatFormatter:Ljava/text/NumberFormat;

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 36
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewStatsViewBinder;->mFloatFormatter:Ljava/text/NumberFormat;

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 37
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewStatsViewBinder;->mIntegerFormatter:Ljava/text/NumberFormat;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewStatsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/ReviewStatsViewBinder;->mHasData:Z

    .line 40
    return-void
.end method


# virtual methods
.method public bind(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 57
    move-object v1, p1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/google/android/finsky/activities/ReviewStatsViewBinder;->mStatsView:Landroid/widget/LinearLayout;

    .line 58
    const v1, 0x7f080180

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/HistogramTable;

    iput-object v1, p0, Lcom/google/android/finsky/activities/ReviewStatsViewBinder;->mHistogramTable:Lcom/google/android/finsky/layout/HistogramTable;

    .line 59
    const v1, 0x7f08017b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 60
    .local v0, averageBox:Landroid/widget/LinearLayout;
    const v1, 0x7f08017d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/finsky/activities/ReviewStatsViewBinder;->mAverageValue:Landroid/widget/TextView;

    .line 61
    const v1, 0x7f08017e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RatingBar;

    iput-object v1, p0, Lcom/google/android/finsky/activities/ReviewStatsViewBinder;->mRatingBar:Landroid/widget/RatingBar;

    .line 62
    const v1, 0x7f08017f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/finsky/activities/ReviewStatsViewBinder;->mRatingCount:Landroid/widget/TextView;

    .line 63
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewStatsViewBinder;->displayData()V

    .line 64
    return-void
.end method

.method public displayData()V
    .registers 6

    .prologue
    .line 68
    iget-boolean v1, p0, Lcom/google/android/finsky/activities/ReviewStatsViewBinder;->mHasData:Z

    if-nez v1, :cond_c

    .line 69
    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewStatsViewBinder;->mStatsView:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 78
    :goto_b
    return-void

    .line 72
    :cond_c
    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewStatsViewBinder;->mStatsView:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 73
    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewStatsViewBinder;->mRatingCount:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewStatsViewBinder;->mIntegerFormatter:Ljava/text/NumberFormat;

    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewStatsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getRatingCount()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewStatsViewBinder;->mAverageValue:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewStatsViewBinder;->mFloatFormatter:Ljava/text/NumberFormat;

    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewStatsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getStarRating()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewStatsViewBinder;->mRatingBar:Landroid/widget/RatingBar;

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewStatsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getStarRating()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 76
    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewStatsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getRatingHistogram()[I

    move-result-object v0

    .line 77
    .local v0, histogram:[I
    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewStatsViewBinder;->mHistogramTable:Lcom/google/android/finsky/layout/HistogramTable;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/layout/HistogramTable;->setHistogram([I)V

    goto :goto_b
.end method

.method public hasData()Z
    .registers 2

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/ReviewStatsViewBinder;->mHasData:Z

    return v0
.end method

.method public setData(Lcom/google/android/finsky/api/model/Document;)V
    .registers 8
    .parameter "doc"

    .prologue
    const/4 v3, 0x0

    .line 43
    iput-object p1, p0, Lcom/google/android/finsky/activities/ReviewStatsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    .line 44
    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewStatsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getRatingHistogram()[I

    move-result-object v0

    .line 45
    .local v0, histogram:[I
    const/4 v2, 0x0

    .line 46
    .local v2, sum:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    const/4 v4, 0x5

    if-ge v1, v4, :cond_14

    .line 47
    aget v4, v0, v1

    add-int/2addr v2, v4

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 49
    :cond_14
    if-gtz v2, :cond_1d

    .line 51
    const-string v4, "No histogram data received from server"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    :cond_1d
    if-lez v2, :cond_20

    const/4 v3, 0x1

    :cond_20
    iput-boolean v3, p0, Lcom/google/android/finsky/activities/ReviewStatsViewBinder;->mHasData:Z

    .line 54
    return-void
.end method
