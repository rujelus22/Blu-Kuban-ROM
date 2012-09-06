.class public Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;
.super Landroid/widget/LinearLayout;
.source "ReviewItemHeaderLayout.java"


# instance fields
.field private mAuthor:Landroid/widget/TextView;

.field private mDate:Landroid/widget/TextView;

.field private mEdited:Landroid/widget/TextView;

.field private mRating:Landroid/widget/RatingBar;

.field private mSource:Landroid/widget/TextView;

.field private mSourceSection:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 50
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 52
    const v0, 0x7f0801f7

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    .line 53
    const v0, 0x7f0801f8

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSourceSection:Landroid/view/View;

    .line 54
    const v0, 0x7f0801f9

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mAuthor:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f0801fa

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSource:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f0801fb

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mDate:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f0801fc

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mEdited:Landroid/widget/TextView;

    .line 58
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 18
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->getPaddingTop()I

    move-result v8

    .line 161
    .local v8, top:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->getPaddingBottom()I

    move-result v0

    .line 162
    .local v0, bottom:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->getHeight()I

    move-result v9

    sub-int/2addr v9, v8

    sub-int/2addr v9, v0

    div-int/lit8 v9, v9, 0x2

    add-int v4, v8, v9

    .line 163
    .local v4, middleY:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->getPaddingLeft()I

    move-result v3

    .line 165
    .local v3, left:I
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v9}, Landroid/widget/RatingBar;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_4f

    .line 166
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v9}, Landroid/widget/RatingBar;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int v6, v4, v9

    .line 167
    .local v6, ratingTop:I
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    iget-object v10, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v10}, Landroid/widget/RatingBar;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v3

    iget-object v11, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v11}, Landroid/widget/RatingBar;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v6

    invoke-virtual {v9, v3, v6, v10, v11}, Landroid/widget/RatingBar;->layout(IIII)V

    .line 170
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v9}, Landroid/widget/RatingBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 172
    .local v5, ratingLp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v9}, Landroid/widget/RatingBar;->getMeasuredWidth()I

    move-result v9

    iget v10, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v9, v10

    add-int/2addr v3, v9

    .line 175
    .end local v5           #ratingLp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v6           #ratingTop:I
    :cond_4f
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSourceSection:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int v7, v4, v9

    .line 176
    .local v7, sourceTop:I
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSourceSection:Landroid/view/View;

    iget-object v10, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSourceSection:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v3

    iget-object v11, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSourceSection:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v7

    invoke-virtual {v9, v3, v7, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 178
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSourceSection:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v3, v9

    .line 180
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mDate:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int v1, v4, v9

    .line 181
    .local v1, dateTop:I
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mDate:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mDate:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v3

    iget-object v11, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mDate:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v1

    invoke-virtual {v9, v3, v1, v10, v11}, Landroid/widget/TextView;->layout(IIII)V

    .line 183
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mDate:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v3, v9

    .line 185
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mEdited:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_c3

    .line 186
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mDate:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v1

    iget-object v10, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mEdited:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    sub-int v2, v9, v10

    .line 187
    .local v2, editedTop:I
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mEdited:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mEdited:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v3

    iget-object v11, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mEdited:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v2

    invoke-virtual {v9, v3, v2, v10, v11}, Landroid/widget/TextView;->layout(IIII)V

    .line 190
    .end local v2           #editedTop:I
    :cond_c3
    return-void
.end method

.method protected onMeasure(II)V
    .registers 16
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/16 v11, 0x8

    const/4 v12, 0x0

    .line 115
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 117
    .local v4, paddedWidth:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 118
    .local v8, widthSpecMode:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->getPaddingLeft()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->getPaddingRight()I

    move-result v10

    sub-int v3, v9, v10

    .line 122
    .local v3, nonpaddedWidth:I
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSourceSection:Landroid/view/View;

    invoke-virtual {v9, v12, v12}, Landroid/view/View;->measure(II)V

    .line 123
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSourceSection:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 125
    .local v7, sourceWidth:I
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mDate:Landroid/widget/TextView;

    invoke-virtual {v9, v12, v12}, Landroid/widget/TextView;->measure(II)V

    .line 126
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mDate:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    .line 128
    .local v1, dateWidth:I
    const/4 v6, 0x0

    .line 129
    .local v6, ratingWidth:I
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v9}, Landroid/widget/RatingBar;->getVisibility()I

    move-result v9

    if-eq v9, v11, :cond_4d

    .line 130
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v9, v12, v12}, Landroid/widget/RatingBar;->measure(II)V

    .line 131
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v9}, Landroid/widget/RatingBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 133
    .local v5, ratingLp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v9}, Landroid/widget/RatingBar;->getMeasuredWidth()I

    move-result v9

    iget v10, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v6, v9, v10

    .line 136
    .end local v5           #ratingLp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_4d
    const/4 v2, 0x0

    .line 137
    .local v2, editedWidth:I
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mEdited:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getVisibility()I

    move-result v9

    if-eq v9, v11, :cond_61

    .line 138
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mEdited:Landroid/widget/TextView;

    invoke-virtual {v9, v12, v12}, Landroid/widget/TextView;->measure(II)V

    .line 139
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mEdited:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    .line 142
    :cond_61
    add-int v9, v6, v7

    add-int/2addr v9, v1

    add-int v0, v9, v2

    .line 146
    .local v0, combinedWidth:I
    if-eqz v8, :cond_79

    if-le v0, v3, :cond_79

    .line 147
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSourceSection:Landroid/view/View;

    sub-int v10, v3, v1

    sub-int/2addr v10, v6

    sub-int/2addr v10, v2

    const/high16 v11, 0x4000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v9, v10, v12}, Landroid/view/View;->measure(II)V

    .line 152
    :cond_79
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSourceSection:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    iget-object v10, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mDate:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v10, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mEdited:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    iget-object v11, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v11}, Landroid/widget/RatingBar;->getMeasuredHeight()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {p0, v4, v9}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->setMeasuredDimension(II)V

    .line 156
    return-void
.end method

.method public setReviewInfo(Lcom/google/android/finsky/remoting/protos/Rev$Review;)V
    .registers 15
    .parameter "review"

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x0

    .line 61
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getAuthorName()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, authorName:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getSource()Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, reviewSource:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 65
    .local v6, sourceUrl:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_98

    .line 66
    iget-object v7, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mAuthor:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v7, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mAuthor:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    :goto_1f
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9e

    .line 75
    iget-object v7, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSource:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v7, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSource:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v7, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSource:Landroid/widget/TextView;

    new-instance v8, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout$1;

    invoke-direct {v8, p0, v6}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout$1;-><init>(Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    :goto_3d
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasStarRating()Z

    move-result v7

    if-eqz v7, :cond_a4

    .line 89
    iget-object v7, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v7, v11}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 90
    iget-object v7, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getStarRating()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/widget/RatingBar;->setRating(F)V

    .line 95
    :goto_52
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasTimestampMsec()Z

    move-result v7

    if-eqz v7, :cond_aa

    .line 96
    iget-object v7, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mDate:Landroid/widget/TextView;

    new-instance v8, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getTimestampMsec()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-static {v8}, Lcom/google/android/finsky/utils/DateUtils;->formatShortDisplayDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v7, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mDate:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    :goto_6f
    iget-object v7, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mEdited:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasReplyText()Z

    move-result v7

    if-eqz v7, :cond_97

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasReplyTimestampMsec()Z

    move-result v7

    if-eqz v7, :cond_97

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasTimestampMsec()Z

    move-result v7

    if-eqz v7, :cond_97

    .line 105
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getTimestampMsec()J

    move-result-wide v4

    .line 106
    .local v4, reviewTimestamp:J
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getReplyTimestampMsec()J

    move-result-wide v1

    .line 107
    .local v1, developerReplyTimestamp:J
    cmp-long v7, v4, v1

    if-lez v7, :cond_97

    .line 108
    iget-object v7, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mEdited:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    .end local v1           #developerReplyTimestamp:J
    .end local v4           #reviewTimestamp:J
    :cond_97
    return-void

    .line 69
    :cond_98
    iget-object v7, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mAuthor:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1f

    .line 85
    :cond_9e
    iget-object v7, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSource:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3d

    .line 92
    :cond_a4
    iget-object v7, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v7, v12}, Landroid/widget/RatingBar;->setVisibility(I)V

    goto :goto_52

    .line 99
    :cond_aa
    iget-object v7, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mDate:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6f
.end method
