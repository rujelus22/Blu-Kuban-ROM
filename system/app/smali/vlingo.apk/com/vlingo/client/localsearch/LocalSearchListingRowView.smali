.class public Lcom/vlingo/client/localsearch/LocalSearchListingRowView;
.super Landroid/widget/LinearLayout;
.source "LocalSearchListingRowView.java"


# instance fields
.field private actionButtonClickListener:Landroid/view/View$OnClickListener;

.field protected infoButtonView:Landroid/widget/ImageButton;

.field private listing:Lcom/vlingo/client/localsearch/service/LocalSearchListing;

.field private ratingBarView:Landroid/widget/RatingBar;

.field private ratingSectionView:Landroid/view/View;

.field private textBusinessCaptionView:Landroid/widget/TextView;

.field private textBusinessDetailsView:Landroid/widget/TextView;

.field private textBusinessNameView:Landroid/widget/TextView;

.field private textReviewInfoView:Landroid/widget/TextView;

.field private textSponsored:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/vlingo/client/localsearch/service/LocalSearchListing;Landroid/view/View$OnClickListener;)Lcom/vlingo/client/localsearch/LocalSearchListingRowView;
    .registers 6
    .parameter "context"
    .parameter "listing"
    .parameter "actionButtonClickListener"

    .prologue
    .line 35
    const v1, 0x7f030030

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/localsearch/LocalSearchListingRowView;

    .line 36
    .local v0, v:Lcom/vlingo/client/localsearch/LocalSearchListingRowView;
    iput-object p2, v0, Lcom/vlingo/client/localsearch/LocalSearchListingRowView;->actionButtonClickListener:Landroid/view/View$OnClickListener;

    .line 37
    invoke-direct {v0, p1}, Lcom/vlingo/client/localsearch/LocalSearchListingRowView;->setListing(Lcom/vlingo/client/localsearch/service/LocalSearchListing;)V

    .line 38
    return-object v0
.end method

.method private setListing(Lcom/vlingo/client/localsearch/service/LocalSearchListing;)V
    .registers 8
    .parameter "listing"

    .prologue
    const/4 v3, 0x0

    const/16 v5, 0x8

    .line 63
    iput-object p1, p0, Lcom/vlingo/client/localsearch/LocalSearchListingRowView;->listing:Lcom/vlingo/client/localsearch/service/LocalSearchListing;

    .line 65
    invoke-virtual {p1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->hasReviews()Z

    move-result v2

    if-eqz v2, :cond_87

    .line 66
    iget-object v2, p0, Lcom/vlingo/client/localsearch/LocalSearchListingRowView;->ratingSectionView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 67
    iget-object v2, p0, Lcom/vlingo/client/localsearch/LocalSearchListingRowView;->ratingBarView:Landroid/widget/RatingBar;

    invoke-virtual {p1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getRating()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setRating(F)V

    .line 68
    iget-object v2, p0, Lcom/vlingo/client/localsearch/LocalSearchListingRowView;->textReviewInfoView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getReviewCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :goto_3c
    invoke-virtual {p1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->hasPhoneNumber()Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 77
    iget-object v2, p0, Lcom/vlingo/client/localsearch/LocalSearchListingRowView;->infoButtonView:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/vlingo/client/localsearch/LocalSearchListingRowView;->actionButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    :goto_49
    iget-object v2, p0, Lcom/vlingo/client/localsearch/LocalSearchListingRowView;->textBusinessNameView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {p1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->isSponsored()Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 86
    const v2, 0x7f0f0033

    invoke-virtual {p0, v2}, Lcom/vlingo/client/localsearch/LocalSearchListingRowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x20ffffff

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 88
    const-string v2, "Caption"

    invoke-virtual {p1, v2}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->hasValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 89
    iget-object v2, p0, Lcom/vlingo/client/localsearch/LocalSearchListingRowView;->textBusinessCaptionView:Landroid/widget/TextView;

    const-string v3, "Caption"

    invoke-virtual {p1, v3}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v2, p0, Lcom/vlingo/client/localsearch/LocalSearchListingRowView;->ratingSectionView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 96
    :goto_7d
    iget-object v2, p0, Lcom/vlingo/client/localsearch/LocalSearchListingRowView;->textBusinessDetailsView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getCityState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :goto_86
    return-void

    .line 70
    :cond_87
    iget-object v2, p0, Lcom/vlingo/client/localsearch/LocalSearchListingRowView;->ratingSectionView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-object v2, p0, Lcom/vlingo/client/localsearch/LocalSearchListingRowView;->ratingBarView:Landroid/widget/RatingBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setRating(F)V

    .line 72
    iget-object v2, p0, Lcom/vlingo/client/localsearch/LocalSearchListingRowView;->textReviewInfoView:Landroid/widget/TextView;

    const-string v3, "(0)"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3c

    .line 79
    :cond_9a
    iget-object v2, p0, Lcom/vlingo/client/localsearch/LocalSearchListingRowView;->infoButtonView:Landroid/widget/ImageButton;

    const v3, 0x7f020039

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_49

    .line 93
    :cond_a3
    iget-object v2, p0, Lcom/vlingo/client/localsearch/LocalSearchListingRowView;->textBusinessCaptionView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7d

    .line 99
    :cond_a9
    iget-object v2, p0, Lcom/vlingo/client/localsearch/LocalSearchListingRowView;->textSponsored:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object v2, p0, Lcom/vlingo/client/localsearch/LocalSearchListingRowView;->textBusinessCaptionView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    invoke-virtual {p1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getFullAddress()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, details:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getDistanceString()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, distance:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d8

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    :cond_d8
    iget-object v2, p0, Lcom/vlingo/client/localsearch/LocalSearchListingRowView;->textBusinessDetailsView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_86
.end method


# virtual methods
.method public getListing()Lcom/vlingo/client/localsearch/service/LocalSearchListing;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vlingo/client/localsearch/LocalSearchListingRowView;->listing:Lcom/vlingo/client/localsearch/service/LocalSearchListing;

    return-object v0
.end method

.method public hasFocusable()Z
    .registers 2

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 46
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 47
    const v0, 0x7f0f00d1

    invoke-virtual {p0, v0}, Lcom/vlingo/client/localsearch/LocalSearchListingRowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/localsearch/LocalSearchListingRowView;->textBusinessNameView:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f0f00d6

    invoke-virtual {p0, v0}, Lcom/vlingo/client/localsearch/LocalSearchListingRowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/localsearch/LocalSearchListingRowView;->textBusinessDetailsView:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f0f00d7

    invoke-virtual {p0, v0}, Lcom/vlingo/client/localsearch/LocalSearchListingRowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/vlingo/client/localsearch/LocalSearchListingRowView;->infoButtonView:Landroid/widget/ImageButton;

    .line 51
    const v0, 0x7f0f00d3

    invoke-virtual {p0, v0}, Lcom/vlingo/client/localsearch/LocalSearchListingRowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/vlingo/client/localsearch/LocalSearchListingRowView;->ratingBarView:Landroid/widget/RatingBar;

    .line 52
    const v0, 0x7f0f00d2

    invoke-virtual {p0, v0}, Lcom/vlingo/client/localsearch/LocalSearchListingRowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/localsearch/LocalSearchListingRowView;->ratingSectionView:Landroid/view/View;

    .line 53
    const v0, 0x7f0f00d4

    invoke-virtual {p0, v0}, Lcom/vlingo/client/localsearch/LocalSearchListingRowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/localsearch/LocalSearchListingRowView;->textReviewInfoView:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f0f00b2

    invoke-virtual {p0, v0}, Lcom/vlingo/client/localsearch/LocalSearchListingRowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/localsearch/LocalSearchListingRowView;->textSponsored:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f0f00d5

    invoke-virtual {p0, v0}, Lcom/vlingo/client/localsearch/LocalSearchListingRowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/localsearch/LocalSearchListingRowView;->textBusinessCaptionView:Landroid/widget/TextView;

    .line 56
    return-void
.end method
