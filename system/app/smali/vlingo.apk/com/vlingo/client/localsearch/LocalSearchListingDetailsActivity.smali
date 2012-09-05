.class public Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;
.super Landroid/app/Activity;
.source "LocalSearchListingDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$FetchImageTask;,
        Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$LocalSearchRequestListenerImpl;,
        Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$ButtonListenerImpl;
    }
.end annotation


# static fields
.field public static final EXTRA_LISTING_ID:Ljava/lang/String; = "ListingID"


# instance fields
.field private address1View:Landroid/widget/TextView;

.field private address2View:Landroid/widget/TextView;

.field private buttonCall:Landroid/widget/ImageButton;

.field private buttonMap:Landroid/widget/ImageButton;

.field private buttonNavigate:Landroid/widget/ImageButton;

.field private buttonReserve:Landroid/widget/ImageButton;

.field private buttonWeb:Landroid/widget/ImageButton;

.field private distanceView:Landroid/widget/TextView;

.field private imageProgressBar:Landroid/widget/ProgressBar;

.field private imageView:Landroid/widget/ImageView;

.field private layoutReviews:Landroid/widget/LinearLayout;

.field private layoutSecondaryButtonCaptions:Landroid/widget/LinearLayout;

.field private layoutSecondaryButtons:Landroid/widget/LinearLayout;

.field private listingProgressBar:Landroid/widget/ProgressBar;

.field private localSearchService:Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;

.field private numReviewsView:Landroid/widget/TextView;

.field private phoneNumberView:Landroid/widget/TextView;

.field private providerView:Landroid/widget/TextView;

.field private ratingsView:Landroid/widget/RatingBar;

.field private reviewHeader:Lcom/vlingo/client/localsearch/ReviewHeaderView;

.field private sponsoredView:Landroid/widget/TextView;

.field private synopsisView:Landroid/widget/TextView;

.field private taglineView:Landroid/widget/TextView;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 398
    return-void
.end method

.method static synthetic access$1000(Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;Lcom/vlingo/client/localsearch/service/LocalSearchListing;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->bindData(Lcom/vlingo/client/localsearch/service/LocalSearchListing;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->imageProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->toggleReviewsVisibility()V

    return-void
.end method

.method static synthetic access$300(Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->buttonCall:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->buttonMap:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->buttonNavigate:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->buttonWeb:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->buttonReserve:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;)Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->localSearchService:Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->listingProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private areMoreDetailsAvailable(Lcom/vlingo/client/localsearch/service/LocalSearchListing;)Z
    .registers 3
    .parameter "listing"

    .prologue
    .line 132
    const-string v0, "Name"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->areMoreDetailsAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_68

    const-string v0, "RevCnt"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->areMoreDetailsAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_68

    const-string v0, "ImgUrl"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->areMoreDetailsAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_68

    const-string v0, "City"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->areMoreDetailsAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_68

    const-string v0, "State"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->areMoreDetailsAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_68

    const-string v0, "StName"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->areMoreDetailsAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_68

    const-string v0, "StNum"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->areMoreDetailsAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_68

    const-string v0, "Zip"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->areMoreDetailsAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_68

    const-string v0, "Dist"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->areMoreDetailsAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_68

    const-string v0, "Lat"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->areMoreDetailsAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_68

    const-string v0, "Lon"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->areMoreDetailsAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_68

    const-string v0, "PhoneNumber"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->areMoreDetailsAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_68

    const-string v0, "Url"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->areMoreDetailsAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    :cond_68
    const/4 v0, 0x1

    :goto_69
    return v0

    :cond_6a
    const/4 v0, 0x0

    goto :goto_69
.end method

.method private bindData(Lcom/vlingo/client/localsearch/service/LocalSearchListing;Z)V
    .registers 16
    .parameter "listing"
    .parameter "fetchMoreDetail"

    .prologue
    .line 143
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->titleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    const-string v10, "Caption"

    invoke-virtual {p1, v10}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->hasValue(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_227

    .line 146
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->taglineView:Landroid/widget/TextView;

    const-string v11, "Caption"

    invoke-virtual {p1, v11}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->taglineView:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    :goto_22
    const-string v10, "Synopsis"

    invoke-virtual {p1, v10}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->hasValue(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_230

    .line 153
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->synopsisView:Landroid/widget/TextView;

    const-string v11, "Synopsis"

    invoke-virtual {p1, v11}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->synopsisView:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    :goto_3b
    const-string v10, "Provider"

    invoke-virtual {p1, v10}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->hasValue(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_239

    .line 160
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->providerView:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x7f090308

    invoke-virtual {p0, v12}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Provider"

    invoke-virtual {p1, v12}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->providerView:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    :goto_6c
    const-string v10, "ReservationURL"

    invoke-virtual {p1, v10}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->hasValue(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_242

    .line 167
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->layoutSecondaryButtons:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 168
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->layoutSecondaryButtonCaptions:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 174
    :goto_80
    invoke-virtual {p1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getReviewCount()I

    move-result v7

    .line 175
    .local v7, numReviews:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const v11, 0x7f090310

    invoke-virtual {p0, v11}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 176
    .local v8, reviews:Ljava/lang/String;
    const/4 v10, 0x1

    if-eq v7, v10, :cond_b7

    .line 177
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v11, 0x7f09030d

    invoke-virtual {p0, v11}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 178
    :cond_b7
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->numReviewsView:Landroid/widget/TextView;

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    invoke-virtual {p1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getAddressLine1()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, addr1:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getAddressLine2()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, addr2:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getDistanceString()Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, distance:Ljava/lang/String;
    invoke-static {v0}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_252

    .line 185
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->address1View:Landroid/widget/TextView;

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->address1View:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    :goto_d9
    invoke-static {v1}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_25b

    .line 191
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->address2View:Landroid/widget/TextView;

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->address2View:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    :goto_ea
    invoke-static {v3}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_264

    .line 197
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->distanceView:Landroid/widget/TextView;

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->distanceView:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    :goto_fb
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->ratingsView:Landroid/widget/RatingBar;

    invoke-virtual {p1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getRating()D

    move-result-wide v11

    double-to-float v11, v11

    invoke-virtual {v10, v11}, Landroid/widget/RatingBar;->setRating(F)V

    .line 205
    invoke-virtual {p1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->isSponsored()Z

    move-result v10

    if-eqz v10, :cond_26d

    .line 206
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->sponsoredView:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    :goto_111
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->phoneNumberView:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    new-instance v2, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$ButtonListenerImpl;

    invoke-direct {v2, p0, p1}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$ButtonListenerImpl;-><init>(Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;Lcom/vlingo/client/localsearch/service/LocalSearchListing;)V

    .line 216
    .local v2, buttonListener:Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$ButtonListenerImpl;
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->buttonMap:Landroid/widget/ImageButton;

    invoke-virtual {v10, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->buttonNavigate:Landroid/widget/ImageButton;

    invoke-virtual {v10, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->buttonReserve:Landroid/widget/ImageButton;

    invoke-virtual {v10, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    invoke-virtual {p1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->hasPhoneNumber()Z

    move-result v10

    if-eqz v10, :cond_276

    .line 221
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->buttonCall:Landroid/widget/ImageButton;

    const v11, 0x7f020016

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 222
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->buttonCall:Landroid/widget/ImageButton;

    invoke-virtual {v10, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    :goto_13f
    const-string v10, "ClickUrl"

    invoke-virtual {p1, v10}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->hasValue(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_14f

    const-string v10, "Url"

    invoke-virtual {p1, v10}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->hasValue(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_28a

    .line 234
    :cond_14f
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->buttonWeb:Landroid/widget/ImageButton;

    const v11, 0x7f020014

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 235
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->buttonWeb:Landroid/widget/ImageButton;

    invoke-virtual {v10, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    :goto_15c
    const-string v10, "ImgUrl"

    invoke-virtual {p1, v10}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 249
    .local v5, imageUrl:Ljava/lang/String;
    if-eqz p2, :cond_181

    .line 250
    if-eqz v5, :cond_29e

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_29e

    .line 251
    new-instance v9, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$FetchImageTask;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$FetchImageTask;-><init>(Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$1;)V

    .line 252
    .local v9, task:Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$FetchImageTask;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    invoke-virtual {v9, v10}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$FetchImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 253
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->imageProgressBar:Landroid/widget/ProgressBar;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 261
    .end local v9           #task:Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$FetchImageTask;
    :cond_181
    :goto_181
    if-eqz p2, :cond_2ae

    invoke-direct {p0, p1}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->areMoreDetailsAvailable(Lcom/vlingo/client/localsearch/service/LocalSearchListing;)Z

    move-result v10

    if-eqz v10, :cond_2ae

    .line 262
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->listingProgressBar:Landroid/widget/ProgressBar;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 263
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->localSearchService:Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;

    new-instance v11, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$LocalSearchRequestListenerImpl;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$LocalSearchRequestListenerImpl;-><init>(Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$1;)V

    invoke-virtual {v10, p1, v11}, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;->sendMoreDetailsRequest(Lcom/vlingo/client/localsearch/service/LocalSearchListing;Lcom/vlingo/client/localsearch/service/LocalSearchRequestListener;)V

    .line 268
    :goto_19a
    const v10, 0x7f0f00cc

    invoke-virtual {p0, v10}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 271
    .local v6, layoutReviewsContainer:Landroid/widget/LinearLayout;
    invoke-virtual {p1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getReviews()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_2b7

    .line 272
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 273
    invoke-virtual {p1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getReviews()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 274
    const v10, 0x7f09030e

    invoke-virtual {p0, v10}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x66

    invoke-static {p0, v10, v11, v12}, Lcom/vlingo/client/localsearch/ReviewHeaderView;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/vlingo/client/localsearch/ReviewHeaderView;

    move-result-object v10

    iput-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->reviewHeader:Lcom/vlingo/client/localsearch/ReviewHeaderView;

    .line 275
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->reviewHeader:Lcom/vlingo/client/localsearch/ReviewHeaderView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/vlingo/client/localsearch/ReviewHeaderView;->setCollpased(Z)V

    .line 276
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->reviewHeader:Lcom/vlingo/client/localsearch/ReviewHeaderView;

    const v11, 0x7f0f00ce

    invoke-virtual {v10, v11}, Lcom/vlingo/client/localsearch/ReviewHeaderView;->setId(I)V

    .line 277
    const v10, 0x7f0f00ce

    invoke-virtual {p0, v10}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 278
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->reviewHeader:Lcom/vlingo/client/localsearch/ReviewHeaderView;

    const/4 v11, 0x1

    invoke-virtual {v6, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 279
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->reviewHeader:Lcom/vlingo/client/localsearch/ReviewHeaderView;

    new-instance v11, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$3;

    invoke-direct {v11, p0}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$3;-><init>(Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;)V

    invoke-virtual {v10, v11}, Lcom/vlingo/client/localsearch/ReviewHeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    const v10, 0x7f0f00cf

    invoke-virtual {p0, v10}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->layoutReviews:Landroid/widget/LinearLayout;

    .line 285
    const/4 v4, 0x0

    .local v4, i:I
    :goto_215
    if-ge v4, v7, :cond_2bc

    .line 288
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->layoutReviews:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getReview(I)Lcom/vlingo/client/localsearch/service/LocalSearchListing$Review;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/vlingo/client/localsearch/ReviewDetailView;->create(Landroid/content/Context;Lcom/vlingo/client/localsearch/service/LocalSearchListing$Review;)Lcom/vlingo/client/localsearch/ReviewDetailView;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 285
    add-int/lit8 v4, v4, 0x1

    goto :goto_215

    .line 149
    .end local v0           #addr1:Ljava/lang/String;
    .end local v1           #addr2:Ljava/lang/String;
    .end local v2           #buttonListener:Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$ButtonListenerImpl;
    .end local v3           #distance:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #imageUrl:Ljava/lang/String;
    .end local v6           #layoutReviewsContainer:Landroid/widget/LinearLayout;
    .end local v7           #numReviews:I
    .end local v8           #reviews:Ljava/lang/String;
    :cond_227
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->taglineView:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_22

    .line 156
    :cond_230
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->synopsisView:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3b

    .line 163
    :cond_239
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->providerView:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6c

    .line 170
    :cond_242
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->layoutSecondaryButtons:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 171
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->layoutSecondaryButtonCaptions:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_80

    .line 188
    .restart local v0       #addr1:Ljava/lang/String;
    .restart local v1       #addr2:Ljava/lang/String;
    .restart local v3       #distance:Ljava/lang/String;
    .restart local v7       #numReviews:I
    .restart local v8       #reviews:Ljava/lang/String;
    :cond_252
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->address1View:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_d9

    .line 194
    :cond_25b
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->address2View:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_ea

    .line 200
    :cond_264
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->distanceView:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_fb

    .line 208
    :cond_26d
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->sponsoredView:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_111

    .line 225
    .restart local v2       #buttonListener:Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$ButtonListenerImpl;
    :cond_276
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->buttonCall:Landroid/widget/ImageButton;

    const v11, 0x7f020017

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 226
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->buttonCall:Landroid/widget/ImageButton;

    new-instance v11, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$1;

    invoke-direct {v11, p0}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$1;-><init>(Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_13f

    .line 238
    :cond_28a
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->buttonWeb:Landroid/widget/ImageButton;

    const v11, 0x7f020015

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 239
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->buttonWeb:Landroid/widget/ImageButton;

    new-instance v11, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$2;

    invoke-direct {v11, p0}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$2;-><init>(Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_15c

    .line 255
    .restart local v5       #imageUrl:Ljava/lang/String;
    :cond_29e
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->imageProgressBar:Landroid/widget/ProgressBar;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 256
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->imageView:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_181

    .line 265
    :cond_2ae
    iget-object v10, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->listingProgressBar:Landroid/widget/ProgressBar;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_19a

    .line 291
    .restart local v6       #layoutReviewsContainer:Landroid/widget/LinearLayout;
    :cond_2b7
    const/16 v10, 0x8

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 293
    :cond_2bc
    return-void
.end method

.method private toggleReviewsVisibility()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 296
    iget-object v0, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->reviewHeader:Lcom/vlingo/client/localsearch/ReviewHeaderView;

    if-eqz v0, :cond_22

    .line 297
    iget-object v2, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->reviewHeader:Lcom/vlingo/client/localsearch/ReviewHeaderView;

    iget-object v0, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->reviewHeader:Lcom/vlingo/client/localsearch/ReviewHeaderView;

    invoke-virtual {v0}, Lcom/vlingo/client/localsearch/ReviewHeaderView;->isCollapsed()Z

    move-result v0

    if-nez v0, :cond_23

    const/4 v0, 0x1

    :goto_10
    invoke-virtual {v2, v0}, Lcom/vlingo/client/localsearch/ReviewHeaderView;->setCollpased(Z)V

    .line 298
    iget-object v0, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->reviewHeader:Lcom/vlingo/client/localsearch/ReviewHeaderView;

    invoke-virtual {v0}, Lcom/vlingo/client/localsearch/ReviewHeaderView;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 299
    iget-object v0, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->layoutReviews:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 304
    :cond_22
    :goto_22
    return-void

    :cond_23
    move v0, v1

    .line 297
    goto :goto_10

    .line 301
    :cond_25
    iget-object v0, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->layoutReviews:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_22
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0, v5}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->requestWindowFeature(I)Z

    .line 80
    const v3, 0x7f03002f

    invoke-virtual {p0, v3}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->setContentView(I)V

    .line 82
    const v3, 0x7f0f0034

    invoke-virtual {p0, v3}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->titleView:Landroid/widget/TextView;

    .line 83
    const v3, 0x7f0f00b1

    invoke-virtual {p0, v3}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->taglineView:Landroid/widget/TextView;

    .line 84
    const v3, 0x7f0f00b7

    invoke-virtual {p0, v3}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->numReviewsView:Landroid/widget/TextView;

    .line 85
    const v3, 0x7f0f00b9

    invoke-virtual {p0, v3}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->address1View:Landroid/widget/TextView;

    .line 86
    const v3, 0x7f0f00ba

    invoke-virtual {p0, v3}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->address2View:Landroid/widget/TextView;

    .line 87
    const v3, 0x7f0f00bb

    invoke-virtual {p0, v3}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->distanceView:Landroid/widget/TextView;

    .line 88
    const v3, 0x7f0f00b2

    invoke-virtual {p0, v3}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->sponsoredView:Landroid/widget/TextView;

    .line 89
    const v3, 0x7f0f00b8

    invoke-virtual {p0, v3}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->phoneNumberView:Landroid/widget/TextView;

    .line 91
    const v3, 0x7f0f00cb

    invoke-virtual {p0, v3}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->synopsisView:Landroid/widget/TextView;

    .line 93
    const v3, 0x7f0f00d0

    invoke-virtual {p0, v3}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->providerView:Landroid/widget/TextView;

    .line 95
    const v3, 0x7f0f00b6

    invoke-virtual {p0, v3}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RatingBar;

    iput-object v3, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->ratingsView:Landroid/widget/RatingBar;

    .line 96
    const v3, 0x7f0f00bc

    invoke-virtual {p0, v3}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->imageView:Landroid/widget/ImageView;

    .line 97
    const v3, 0x7f0f00bd

    invoke-virtual {p0, v3}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->imageProgressBar:Landroid/widget/ProgressBar;

    .line 98
    const v3, 0x7f0f00b3

    invoke-virtual {p0, v3}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->listingProgressBar:Landroid/widget/ProgressBar;

    .line 100
    const v3, 0x7f0f00bf

    invoke-virtual {p0, v3}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->buttonCall:Landroid/widget/ImageButton;

    .line 101
    const v3, 0x7f0f00c0

    invoke-virtual {p0, v3}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->buttonMap:Landroid/widget/ImageButton;

    .line 102
    const v3, 0x7f0f00c1

    invoke-virtual {p0, v3}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->buttonNavigate:Landroid/widget/ImageButton;

    .line 103
    const v3, 0x7f0f00c2

    invoke-virtual {p0, v3}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->buttonWeb:Landroid/widget/ImageButton;

    .line 105
    const v3, 0x7f0f00c5

    invoke-virtual {p0, v3}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->layoutSecondaryButtons:Landroid/widget/LinearLayout;

    .line 106
    const v3, 0x7f0f00ca

    invoke-virtual {p0, v3}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->layoutSecondaryButtonCaptions:Landroid/widget/LinearLayout;

    .line 108
    const v3, 0x7f0f00c6

    invoke-virtual {p0, v3}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->buttonReserve:Landroid/widget/ImageButton;

    .line 110
    new-instance v3, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;

    invoke-direct {v3}, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;-><init>()V

    iput-object v3, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->localSearchService:Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;

    .line 112
    invoke-virtual {p0}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "ListingID"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, listingID:Ljava/lang/String;
    if-eqz v2, :cond_118

    .line 114
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vlingo/client/VlingoApplication;->getBusinessItemCache()Lcom/vlingo/client/localsearch/service/LocalSearchListingCache;

    move-result-object v0

    .line 115
    .local v0, businessItemCache:Lcom/vlingo/client/localsearch/service/LocalSearchListingCache;
    invoke-virtual {v0, v2}, Lcom/vlingo/client/localsearch/service/LocalSearchListingCache;->get(Ljava/lang/Object;)Lcom/vlingo/client/localsearch/service/LocalSearchListing;

    move-result-object v1

    .line 116
    .local v1, listing:Lcom/vlingo/client/localsearch/service/LocalSearchListing;
    if-eqz v1, :cond_118

    .line 117
    invoke-direct {p0, v1, v5}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->bindData(Lcom/vlingo/client/localsearch/service/LocalSearchListing;Z)V

    .line 121
    .end local v0           #businessItemCache:Lcom/vlingo/client/localsearch/service/LocalSearchListingCache;
    .end local v1           #listing:Lcom/vlingo/client/localsearch/service/LocalSearchListing;
    :cond_118
    return-void
.end method
