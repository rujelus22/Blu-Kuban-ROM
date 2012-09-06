.class public Lcom/google/android/finsky/layout/RateReviewSection;
.super Landroid/widget/LinearLayout;
.source "RateReviewSection.java"


# instance fields
.field private mMyRatingBar:Landroid/widget/RatingBar;

.field private mMyRatingText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method


# virtual methods
.method public configure(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/remoting/protos/Rev$Review;Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/library/Libraries;)V
    .registers 13
    .parameter "document"
    .parameter "review"
    .parameter "navigationManager"
    .parameter "fragment"
    .parameter "libraries"

    .prologue
    .line 79
    invoke-virtual {p0, p5, p1}, Lcom/google/android/finsky/layout/RateReviewSection;->updateVisibility(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/api/model/Document;)V

    .line 80
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/RateReviewSection;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_a

    .line 121
    :goto_9
    return-void

    .line 84
    :cond_a
    if-eqz p2, :cond_40

    invoke-virtual {p2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getStarRating()I

    move-result v0

    :goto_10
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/RateReviewSection;->updateRating(I)V

    .line 86
    new-instance v0, Lcom/google/android/finsky/layout/RateReviewSection$1;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/layout/RateReviewSection$1;-><init>(Lcom/google/android/finsky/layout/RateReviewSection;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/remoting/protos/Rev$Review;)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/RateReviewSection;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/RateReviewSection;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v6

    .line 118
    .local v6, color:I
    iget-object v0, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mMyRatingText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/RateReviewSection;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0701dc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/RateReviewSection;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 84
    .end local v6           #color:I
    :cond_40
    const/4 v0, -0x1

    goto :goto_10
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 52
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 54
    const v0, 0x7f0801ca

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/RateReviewSection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mMyRatingText:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f0801cb

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/RateReviewSection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mMyRatingBar:Landroid/widget/RatingBar;

    .line 56
    return-void
.end method

.method public updateRating(I)V
    .registers 5
    .parameter "newRating"

    .prologue
    .line 124
    const v0, 0x7f0701d2

    .line 125
    .local v0, headerId:I
    if-lez p1, :cond_8

    .line 126
    const v0, 0x7f0701d3

    .line 128
    :cond_8
    iget-object v1, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mMyRatingBar:Landroid/widget/RatingBar;

    int-to-float v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 129
    iget-object v1, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mMyRatingText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/RateReviewSection;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    return-void
.end method

.method public updateVisibility(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/api/model/Document;)V
    .registers 4
    .parameter "libraries"
    .parameter "document"

    .prologue
    .line 59
    invoke-static {p1, p2}, Lcom/google/android/finsky/utils/DocUtils;->canRate(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/api/model/Document;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 60
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/RateReviewSection;->setVisibility(I)V

    .line 65
    :goto_b
    return-void

    .line 64
    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/RateReviewSection;->setVisibility(I)V

    goto :goto_b
.end method
