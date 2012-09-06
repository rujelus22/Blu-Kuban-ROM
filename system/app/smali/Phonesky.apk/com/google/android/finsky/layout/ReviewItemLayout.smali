.class public Lcom/google/android/finsky/layout/ReviewItemLayout;
.super Landroid/widget/LinearLayout;
.source "ReviewItemLayout.java"


# instance fields
.field private mBody:Landroid/widget/TextView;

.field private mHeader:Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;

.field private mMetadata:Landroid/widget/TextView;

.field private mRatingImage:Landroid/view/View;

.field private mRatingSeparator:Landroid/view/View;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method private getReviewExtraInfo(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/remoting/protos/Rev$Review;)Ljava/lang/String;
    .registers 15
    .parameter "doc"
    .parameter "review"

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 94
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_c

    move-object v2, v9

    .line 117
    :cond_b
    :goto_b
    return-object v2

    .line 97
    :cond_c
    invoke-virtual {p2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getDocumentVersion()Ljava/lang/String;

    move-result-object v6

    .line 98
    .local v6, version:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, deviceName:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_28

    move v4, v7

    .line 100
    .local v4, hasVersion:Z
    :goto_1b
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2a

    move v3, v7

    .line 102
    .local v3, hasDeviceName:Z
    :goto_22
    if-nez v4, :cond_2c

    .line 103
    if-nez v3, :cond_b

    move-object v2, v9

    goto :goto_b

    .end local v3           #hasDeviceName:Z
    .end local v4           #hasVersion:Z
    :cond_28
    move v4, v8

    .line 99
    goto :goto_1b

    .restart local v4       #hasVersion:Z
    :cond_2a
    move v3, v8

    .line 100
    goto :goto_22

    .line 106
    .restart local v3       #hasDeviceName:Z
    :cond_2c
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    .line 108
    .local v0, appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasVersionString()Z

    move-result v10

    if-eqz v10, :cond_47

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getVersionString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_47

    move v5, v7

    .line 111
    .local v5, isCurrentVersion:Z
    :goto_41
    if-eqz v5, :cond_49

    .line 113
    if-nez v3, :cond_b

    move-object v2, v9

    goto :goto_b

    .end local v5           #isCurrentVersion:Z
    :cond_47
    move v5, v8

    .line 108
    goto :goto_41

    .line 116
    .restart local v5       #isCurrentVersion:Z
    :cond_49
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ReviewItemLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 117
    .local v1, context:Landroid/content/Context;
    if-eqz v3, :cond_5c

    const v9, 0x7f070161

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v8

    invoke-virtual {v1, v9, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_5a
    move-object v2, v7

    goto :goto_b

    :cond_5c
    const v7, 0x7f070162

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_5a
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 54
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 56
    const v0, 0x7f0801f5

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mTitle:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f0801f6

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mHeader:Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;

    .line 58
    const v0, 0x7f0801fe

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mBody:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f0801fd

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mMetadata:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f080200

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mRatingImage:Landroid/view/View;

    .line 62
    const v0, 0x7f0801ff

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mRatingSeparator:Landroid/view/View;

    .line 63
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 11
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 128
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 131
    iget-object v1, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mRatingSeparator:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3c

    .line 132
    iget-object v1, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mRatingImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mRatingImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mRatingSeparator:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    .line 134
    .local v0, ratingSeparatorTop:I
    iget-object v1, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mRatingSeparator:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mRatingSeparator:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mRatingSeparator:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mRatingSeparator:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 137
    .end local v0           #ratingSeparatorTop:I
    :cond_3c
    return-void
.end method

.method public setRateReviewClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mRatingImage:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    return-void
.end method

.method public setReviewInfo(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/remoting/protos/Rev$Review;)V
    .registers 11
    .parameter "doc"
    .parameter "review"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 66
    invoke-virtual {p2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, title:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_46

    .line 69
    iget-object v6, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v6, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    :goto_17
    iget-object v6, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mHeader:Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;

    invoke-virtual {v6, p2}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->setReviewInfo(Lcom/google/android/finsky/remoting/protos/Rev$Review;)V

    .line 77
    iget-object v6, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mBody:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getComment()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v6

    invoke-static {v6}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->canRateReview(I)Z

    move-result v0

    .line 80
    .local v0, canRateReview:Z
    if-eqz v0, :cond_4c

    move v2, v4

    .line 81
    .local v2, ratingVisibility:I
    :goto_30
    iget-object v6, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mRatingImage:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v6, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mRatingSeparator:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/ReviewItemLayout;->getReviewExtraInfo(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/remoting/protos/Rev$Review;)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, extraInfo:Ljava/lang/String;
    if-nez v1, :cond_4e

    .line 86
    iget-object v4, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mMetadata:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    :goto_45
    return-void

    .line 72
    .end local v0           #canRateReview:Z
    .end local v1           #extraInfo:Ljava/lang/String;
    .end local v2           #ratingVisibility:I
    :cond_46
    iget-object v6, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_17

    .restart local v0       #canRateReview:Z
    :cond_4c
    move v2, v5

    .line 80
    goto :goto_30

    .line 88
    .restart local v1       #extraInfo:Ljava/lang/String;
    .restart local v2       #ratingVisibility:I
    :cond_4e
    iget-object v5, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mMetadata:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    iget-object v4, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mMetadata:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_45
.end method
