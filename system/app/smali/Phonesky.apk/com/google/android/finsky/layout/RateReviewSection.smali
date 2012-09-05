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
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method


# virtual methods
.method public configure(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/remoting/protos/Rev$Review;Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/support/v4/app/Fragment;)V
    .registers 12
    .parameter "document"
    .parameter "review"
    .parameter "navigationManager"
    .parameter "fragment"

    .prologue
    .line 70
    if-eqz p1, :cond_10

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAssetStore()Lcom/google/android/finsky/local/AssetStore;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/finsky/api/model/Document;->canRate(Lcom/google/android/finsky/local/AssetStore;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 71
    :cond_10
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/RateReviewSection;->setVisibility(I)V

    .line 110
    :goto_15
    return-void

    .line 75
    :cond_16
    if-eqz p2, :cond_3e

    invoke-virtual {p2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getStarRating()I

    move-result v0

    :goto_1c
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/RateReviewSection;->updateRating(I)V

    .line 77
    new-instance v0, Lcom/google/android/finsky/layout/RateReviewSection$1;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/layout/RateReviewSection$1;-><init>(Lcom/google/android/finsky/layout/RateReviewSection;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/remoting/protos/Rev$Review;)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/RateReviewSection;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/RateReviewSection;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v6

    .line 109
    .local v6, color:I
    iget-object v0, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mMyRatingText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_15

    .line 75
    .end local v6           #color:I
    :cond_3e
    const/4 v0, -0x1

    goto :goto_1c
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 51
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 53
    const v0, 0x7f08016a

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/RateReviewSection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mMyRatingText:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f08016b

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/RateReviewSection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mMyRatingBar:Landroid/widget/RatingBar;

    .line 55
    return-void
.end method

.method public setVisibility(I)V
    .registers 5
    .parameter "visibility"

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 127
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/RateReviewSection;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 128
    .local v0, parent:Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    const v2, 0x7f0800d8

    if-ne v1, v2, :cond_15

    .line 129
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 131
    :cond_15
    return-void
.end method

.method public updateRating(I)V
    .registers 5
    .parameter "newRating"

    .prologue
    .line 113
    const v0, 0x7f070198

    .line 114
    .local v0, headerId:I
    if-lez p1, :cond_8

    .line 115
    const v0, 0x7f070199

    .line 117
    :cond_8
    iget-object v1, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mMyRatingBar:Landroid/widget/RatingBar;

    int-to-float v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 118
    iget-object v1, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mMyRatingText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/RateReviewSection;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    return-void
.end method
