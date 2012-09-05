.class public Lcom/vlingo/client/localsearch/ReviewDetailView;
.super Landroid/widget/RelativeLayout;
.source "ReviewDetailView.java"


# instance fields
.field private ratingView:Landroid/widget/RatingBar;

.field private textAuthorView:Landroid/widget/TextView;

.field private textDateView:Landroid/widget/TextView;

.field private textReviewBodyView:Landroid/widget/TextView;

.field private textTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/vlingo/client/localsearch/service/LocalSearchListing$Review;)Lcom/vlingo/client/localsearch/ReviewDetailView;
    .registers 5
    .parameter "context"
    .parameter "review"

    .prologue
    .line 31
    const v1, 0x7f03002e

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/localsearch/ReviewDetailView;

    .line 32
    .local v0, v:Lcom/vlingo/client/localsearch/ReviewDetailView;
    iget-object v1, v0, Lcom/vlingo/client/localsearch/ReviewDetailView;->ratingView:Landroid/widget/RatingBar;

    invoke-virtual {p1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing$Review;->getRating()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 33
    iget-object v1, v0, Lcom/vlingo/client/localsearch/ReviewDetailView;->textTitleView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/vlingo/client/localsearch/service/LocalSearchListing$Review;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v1, v0, Lcom/vlingo/client/localsearch/ReviewDetailView;->textAuthorView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/vlingo/client/localsearch/service/LocalSearchListing$Review;->author:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v1, v0, Lcom/vlingo/client/localsearch/ReviewDetailView;->textDateView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/vlingo/client/localsearch/service/LocalSearchListing$Review;->date:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v1, v0, Lcom/vlingo/client/localsearch/ReviewDetailView;->textReviewBodyView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/vlingo/client/localsearch/service/LocalSearchListing$Review;->body:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    return-object v0
.end method


# virtual methods
.method public getRatingView()Landroid/widget/RatingBar;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vlingo/client/localsearch/ReviewDetailView;->ratingView:Landroid/widget/RatingBar;

    return-object v0
.end method

.method public getTextAuthorView()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vlingo/client/localsearch/ReviewDetailView;->textAuthorView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTextDateView()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vlingo/client/localsearch/ReviewDetailView;->textDateView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTextReviewBodyView()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vlingo/client/localsearch/ReviewDetailView;->textReviewBodyView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTextTitleView()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vlingo/client/localsearch/ReviewDetailView;->textTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 41
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 42
    const v0, 0x7f0f00ad

    invoke-virtual {p0, v0}, Lcom/vlingo/client/localsearch/ReviewDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/vlingo/client/localsearch/ReviewDetailView;->ratingView:Landroid/widget/RatingBar;

    .line 43
    const v0, 0x7f0f0034

    invoke-virtual {p0, v0}, Lcom/vlingo/client/localsearch/ReviewDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/localsearch/ReviewDetailView;->textTitleView:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f0f00ae

    invoke-virtual {p0, v0}, Lcom/vlingo/client/localsearch/ReviewDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/localsearch/ReviewDetailView;->textAuthorView:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0f00b0

    invoke-virtual {p0, v0}, Lcom/vlingo/client/localsearch/ReviewDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/localsearch/ReviewDetailView;->textDateView:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0f00af

    invoke-virtual {p0, v0}, Lcom/vlingo/client/localsearch/ReviewDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/localsearch/ReviewDetailView;->textReviewBodyView:Landroid/widget/TextView;

    .line 47
    return-void
.end method
