.class public Lcom/google/android/finsky/activities/DetailsFragment;
.super Lcom/google/android/finsky/activities/DetailsDataBasedFragment;
.source "DetailsFragment.java"

# interfaces
.implements Lcom/google/android/finsky/activities/OfferResolutionDialog$OfferResolutionListener;
.implements Lcom/google/android/finsky/activities/RateReviewDialog$Listener;
.implements Lcom/google/android/finsky/activities/ReviewDialog$Listener;
.implements Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;
.implements Lcom/google/android/finsky/library/Libraries$Listener;


# instance fields
.field private final mAboutAuthorBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

.field private final mAlbumDetailsBackgroundColor:I

.field private final mCastCreditsViewBinder:Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;

.field private mContinueUrl:Ljava/lang/String;

.field private final mCreatorRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

.field private final mCrossSellViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

.field private final mDefaultAlbumDescriptionLines:I

.field private final mDefaultDescriptionLines:I

.field private final mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;

.field private mDetailsPanel:Landroid/view/ViewGroup;

.field private mExternalReferrer:Ljava/lang/String;

.field private mLastUsedSectionOrderId:I

.field private final mMaxCreatorMoreByItems:I

.field private final mMaxCreatorMoreByItemsPerRow:I

.field private final mMaxRelatedAlbumsPerRow:I

.field private final mMaxRelatedItems:I

.field private final mMaxRelatedItemsPerRow:I

.field private final mMaxRelatedMagazinesPerRow:I

.field private final mMoreByViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

.field private mOwnedActions:Lcom/google/android/finsky/layout/OwnedActions;

.field private final mRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

.field private mReturnAfterPurchase:Z

.field private mReviewDialogListener:Lcom/google/android/finsky/activities/ReviewDialogListener;

.field private final mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

.field private final mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

.field private final mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

.field private final mSummaryPlusOneViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;

.field private mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

.field private mUseDynamicButtonsContainer:Z

.field private final mWhatsNewViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;-><init>()V

    .line 70
    new-instance v1, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryPlusOneViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;

    .line 74
    new-instance v1, Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mCreatorRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    .line 77
    new-instance v1, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;

    .line 81
    new-instance v1, Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mWhatsNewViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    .line 84
    new-instance v1, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    .line 87
    new-instance v1, Lcom/google/android/finsky/activities/SongListViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/SongListViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    .line 90
    new-instance v1, Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    .line 93
    new-instance v1, Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mCrossSellViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    .line 96
    new-instance v1, Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mMoreByViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    .line 99
    new-instance v1, Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mCastCreditsViewBinder:Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;

    .line 103
    new-instance v1, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    .line 107
    new-instance v1, Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mAboutAuthorBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    .line 138
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mLastUsedSectionOrderId:I

    .line 169
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 170
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0c0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxCreatorMoreByItemsPerRow:I

    .line 171
    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedItemsPerRow:I

    .line 172
    const v1, 0x7f0c0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedAlbumsPerRow:I

    .line 173
    const v1, 0x7f0c0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedMagazinesPerRow:I

    .line 174
    const v1, 0x7f0c0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxCreatorMoreByItems:I

    .line 175
    const v1, 0x7f0c000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedItems:I

    .line 176
    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mUseDynamicButtonsContainer:Z

    .line 177
    const v1, 0x7f0c0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDefaultDescriptionLines:I

    .line 178
    const v1, 0x7f0c0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDefaultAlbumDescriptionLines:I

    .line 179
    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mAlbumDetailsBackgroundColor:I

    .line 180
    return-void
.end method

.method private getRepresentativeBackendId()I
    .registers 2

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    return v0
.end method

.method public static newInstance(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/DetailsFragment;
    .registers 9
    .parameter "document"
    .parameter "url"
    .parameter "listCookie"
    .parameter "referrer"
    .parameter "externalReferrer"
    .parameter "continueUrl"
    .parameter "returnAfterPurchase"

    .prologue
    .line 157
    new-instance v0, Lcom/google/android/finsky/activities/DetailsFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/DetailsFragment;-><init>()V

    .line 158
    .local v0, fragment:Lcom/google/android/finsky/activities/DetailsFragment;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/activities/DetailsFragment;->setDfeTocAndUrl(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0, p0}, Lcom/google/android/finsky/activities/DetailsFragment;->setInitialDocument(Lcom/google/android/finsky/api/model/Document;)V

    .line 160
    const-string v1, "finsky.DetailsDataBasedFragment.cookie"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/finsky/activities/DetailsFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v1, "finsk.DetailsDatabasedFragment.referrer"

    invoke-virtual {v0, v1, p3}, Lcom/google/android/finsky/activities/DetailsFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v1, "finsky.DetailsFragment.externalReferrerUrl"

    invoke-virtual {v0, v1, p4}, Lcom/google/android/finsky/activities/DetailsFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v1, "finsky.DetailsFragment.continueUrl"

    invoke-virtual {v0, v1, p5}, Lcom/google/android/finsky/activities/DetailsFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v1, "finsky.DetailsFragment.returnAfterPurchase"

    invoke-virtual {v0, v1, p6}, Lcom/google/android/finsky/activities/DetailsFragment;->setArgument(Ljava/lang/String;Z)V

    .line 165
    return-object v0
.end method

.method private trackLeftColumnScrollingIfNecessary(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    .line 829
    const v0, 0x7f0800b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/ObservableScrollView;

    .line 831
    if-nez v0, :cond_c

    .line 859
    :goto_b
    return-void

    .line 834
    :cond_c
    const v1, 0x7f0800b4

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/ObservableScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;

    .line 836
    const v2, 0x7f0800bc

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 838
    const v3, 0x7f080098

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 840
    new-instance v4, Lcom/google/android/finsky/activities/DetailsFragment$1;

    invoke-direct {v4, p0, v2, v1, v3}, Lcom/google/android/finsky/activities/DetailsFragment$1;-><init>(Lcom/google/android/finsky/activities/DetailsFragment;Landroid/view/View;Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/ObservableScrollView;->setOnScrollListener(Lcom/google/android/finsky/layout/ObservableScrollView$ScrollListener;)V

    goto :goto_b
.end method

.method private trackSingleColumnScrollingIfNecessary(Landroid/view/View;)V
    .registers 6
    .parameter "fragmentView"

    .prologue
    .line 866
    const v3, 0x7f0800c6

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/ObservableScrollView;

    .line 868
    .local v2, singleColumnScroller:Lcom/google/android/finsky/layout/ObservableScrollView;
    if-nez v2, :cond_c

    .line 899
    :cond_b
    :goto_b
    return-void

    .line 872
    :cond_c
    const v3, 0x7f0800c7

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/ObservableScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 873
    .local v1, scrollContainer:Landroid/view/View;
    instance-of v3, v1, Lcom/google/android/finsky/layout/DetailsContentLayout;

    if-eqz v3, :cond_b

    move-object v0, v1

    .line 877
    check-cast v0, Lcom/google/android/finsky/layout/DetailsContentLayout;

    .line 878
    .local v0, detailsContent:Lcom/google/android/finsky/layout/DetailsContentLayout;
    new-instance v3, Lcom/google/android/finsky/activities/DetailsFragment$2;

    invoke-direct {v3, p0, v0}, Lcom/google/android/finsky/activities/DetailsFragment$2;-><init>(Lcom/google/android/finsky/activities/DetailsFragment;Lcom/google/android/finsky/layout/DetailsContentLayout;)V

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/ObservableScrollView;->setOnScrollListener(Lcom/google/android/finsky/layout/ObservableScrollView$ScrollListener;)V

    goto :goto_b
.end method

.method private updateDetailsSections(Landroid/os/Bundle;)V
    .registers 18
    .parameter

    .prologue
    .line 315
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v4

    .line 316
    if-nez v4, :cond_7

    .line 629
    :cond_6
    :goto_6
    return-void

    .line 320
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0800c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 322
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 323
    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_456

    .line 324
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 325
    const v2, 0x7f04004b

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 352
    :goto_2d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v15

    .line 354
    const v1, 0x7f0800b7

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/layout/SubscriptionsSection;

    .line 356
    if-eqz v3, :cond_4a

    .line 357
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    const v5, 0x7f0400ff

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->bind(Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/layout/SubscriptionsSection;Lcom/google/android/finsky/api/model/Document;ILandroid/os/Bundle;)V

    .line 361
    :cond_4a
    const v1, 0x7f0800b8

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/DetailsSummaryByline;

    .line 363
    if-eqz v1, :cond_67

    .line 364
    invoke-virtual {v1, v4}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->setDocument(Lcom/google/android/finsky/api/model/Document;)V

    .line 367
    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_67

    .line 368
    if-eqz v1, :cond_67

    .line 369
    const v2, 0x7f020057

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->setBackgroundResource(I)V

    .line 375
    :cond_67
    const v2, 0x7f0800b9

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/layout/BadgeSection;

    .line 376
    if-eqz v5, :cond_88

    .line 377
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getReferrer()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object v9, v4

    move-object/from16 v11, p1

    invoke-virtual/range {v5 .. v11}, Lcom/google/android/finsky/layout/BadgeSection;->configure(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Landroid/os/Bundle;)V

    .line 381
    :cond_88
    const v2, 0x7f0800ee

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 382
    if-eqz v2, :cond_9e

    .line 383
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryPlusOneViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->hasDetailsDataLoaded()Z

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v3, v2, v4, v5, v0}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;ZLandroid/os/Bundle;)V

    .line 387
    :cond_9e
    const v2, 0x7f0800fb

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/DetailsWishlist;

    .line 389
    if-eqz v2, :cond_b0

    .line 390
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual {v2, v4, v3}, Lcom/google/android/finsky/layout/DetailsWishlist;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/DfeApi;)V

    .line 393
    :cond_b0
    const v2, 0x7f08008d

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/OwnedActions;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mOwnedActions:Lcom/google/android/finsky/layout/OwnedActions;

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mOwnedActions:Lcom/google/android/finsky/layout/OwnedActions;

    if-eqz v2, :cond_d8

    .line 395
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mOwnedActions:Lcom/google/android/finsky/layout/OwnedActions;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getDetailsData()Lcom/google/android/finsky/api/model/DfeDetails;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->hasDetailsDataLoaded()Z

    move-result v8

    move-object/from16 v7, p0

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/finsky/layout/OwnedActions;->setDocument(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeDetails;Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/support/v4/app/Fragment;Z)V

    .line 399
    :cond_d8
    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v2

    .line 400
    const/16 v3, 0x10

    if-eq v2, v3, :cond_e4

    const/16 v3, 0x11

    if-ne v2, v3, :cond_4ae

    :cond_e4
    const/4 v2, 0x1

    move v13, v2

    .line 404
    :goto_e6
    const v2, 0x7f0800ba

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 405
    if-eqz v3, :cond_11f

    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->hasDetailsDataLoaded()Z

    move-result v2

    if-eqz v2, :cond_4b2

    if-nez v13, :cond_4b2

    .line 407
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mCreatorRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getMoreByHeader()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getMoreByListUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getMoreByBrowseUrl()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxCreatorMoreByItemsPerRow:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxCreatorMoreByItems:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mUrl:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getReferrer()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v2 .. v12}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_11f
    :goto_11f
    const v2, 0x7f080091

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 419
    if-eqz v2, :cond_160

    .line 420
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->hasDetailsDataLoaded()Z

    move-result v5

    if-eqz v5, :cond_4b9

    .line 421
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 423
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;

    move-object/from16 v0, p1

    invoke-virtual {v5, v2, v4, v0}, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Landroid/os/Bundle;)V

    .line 424
    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_160

    .line 425
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mDefaultAlbumDescriptionLines:I

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->setDefaultMaxLines(I)V

    .line 426
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_160

    .line 427
    const v5, 0x7f020057

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 429
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mAlbumDetailsBackgroundColor:I

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->setBackgroundColor(I)V

    .line 438
    :cond_160
    :goto_160
    const v1, 0x7f0800bb

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 439
    if-eqz v1, :cond_174

    .line 440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mCastCreditsViewBinder:Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->hasDetailsDataLoaded()Z

    move-result v5

    invoke-virtual {v2, v1, v4, v5}, Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Z)V

    .line 444
    :cond_174
    const v1, 0x7f0800de

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 445
    if-eqz v6, :cond_18e

    .line 446
    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getWhatsNew()Ljava/lang/CharSequence;

    move-result-object v9

    .line 447
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mWhatsNewViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    const v8, 0x7f070132

    move-object v7, v4

    move-object/from16 v10, p1

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;ILjava/lang/CharSequence;Landroid/os/Bundle;)V

    .line 452
    :cond_18e
    const v1, 0x7f080096

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 453
    if-eqz v2, :cond_1cf

    .line 454
    new-instance v5, Lcom/google/android/finsky/activities/ReviewDialogListener;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getDetailsData()Lcom/google/android/finsky/api/model/DfeDetails;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mOwnedActions:Lcom/google/android/finsky/layout/OwnedActions;

    move-object/from16 v8, p0

    invoke-direct/range {v5 .. v12}, Lcom/google/android/finsky/activities/ReviewDialogListener;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeDetails;Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;Lcom/google/android/finsky/layout/OwnedActions;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mReviewDialogListener:Lcom/google/android/finsky/activities/ReviewDialogListener;

    .line 456
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->hasDetailsDataLoaded()Z

    move-result v5

    invoke-virtual {v1, v2, v4, v5}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Z)V

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->hasDetailsDataLoaded()Z

    move-result v1

    if-eqz v1, :cond_4c0

    const/4 v1, 0x0

    :goto_1cc
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 461
    :cond_1cf
    const v1, 0x7f08008e

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/ListingView;

    .line 462
    if-eqz v1, :cond_1e1

    .line 463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/google/android/finsky/layout/ListingView;->bindLinks(Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;)V

    .line 468
    :cond_1e1
    const v1, 0x7f08008f

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 469
    if-eqz v14, :cond_242

    .line 470
    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4c4

    const/4 v1, 0x1

    .line 471
    :goto_1f2
    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_4c7

    const/4 v2, 0x1

    .line 473
    :goto_1fa
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedItemsPerRow:I

    .line 474
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedItems:I

    .line 475
    if-eqz v2, :cond_208

    .line 476
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedAlbumsPerRow:I

    .line 478
    :cond_208
    if-eqz v13, :cond_212

    .line 480
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedMagazinesPerRow:I

    .line 481
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedMagazinesPerRow:I

    .line 484
    :cond_212
    if-eqz v1, :cond_21c

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->hasCreatorRelatedContent()Z

    move-result v1

    if-nez v1, :cond_21c

    if-nez v3, :cond_4ca

    :cond_21c
    const/4 v1, 0x1

    .line 487
    :goto_21d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->hasDetailsDataLoaded()Z

    move-result v2

    if-eqz v2, :cond_4cd

    if-eqz v1, :cond_4cd

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getRelatedHeader()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getRelatedListUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getRelatedBrowseUrl()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mUrl:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getReferrer()Ljava/lang/String;

    move-result-object v12

    move-object v3, v14

    invoke-virtual/range {v2 .. v12}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 497
    :cond_242
    :goto_242
    const v1, 0x7f0800df

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 498
    if-eqz v3, :cond_275

    .line 499
    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->hasCrossSellContent()Z

    move-result v1

    if-eqz v1, :cond_4d4

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mCrossSellViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getCrossSellHeader()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getCrossSellListUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getCrossSellBrowseUrl()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedItemsPerRow:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedItems:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mUrl:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getReferrer()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v2 .. v12}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 510
    :cond_275
    :goto_275
    const v1, 0x7f0800e0

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 511
    if-eqz v3, :cond_2aa

    .line 512
    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->hasMoreBy()Z

    move-result v1

    if-eqz v1, :cond_4db

    if-eqz v13, :cond_4db

    .line 513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMoreByViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getMoreByHeader()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getMoreByListUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getMoreByBrowseUrl()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedMagazinesPerRow:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedMagazinesPerRow:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mUrl:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getReferrer()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v2 .. v12}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 524
    :cond_2aa
    :goto_2aa
    const v1, 0x7f0800db

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/ScreenshotGallery;

    .line 526
    if-eqz v1, :cond_2c4

    .line 527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->hasDetailsDataLoaded()Z

    move-result v5

    invoke-virtual {v1, v4, v2, v3, v5}, Lcom/google/android/finsky/layout/ScreenshotGallery;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;Z)V

    .line 531
    :cond_2c4
    const v2, 0x7f0800dc

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/MovieTrailerView;

    .line 533
    if-eqz v2, :cond_310

    .line 534
    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getMovieTrailers()Ljava/util/List;

    move-result-object v5

    .line 535
    if-eqz v5, :cond_4e2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4e2

    const/4 v3, 0x0

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4e2

    .line 537
    const/4 v3, 0x0

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;

    .line 538
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/google/android/finsky/layout/MovieTrailerView;->load(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;)V

    .line 539
    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getWatchUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/android/finsky/layout/MovieTrailerView;->showPlayIcon(Ljava/lang/String;)V

    .line 540
    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getDuration()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/MovieTrailerView;->setCurtainCaption(Ljava/lang/String;)V

    .line 541
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/MovieTrailerView;->setVisibility(I)V

    .line 548
    :cond_310
    :goto_310
    const v2, 0x7f080097

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/ListingView;

    .line 550
    if-eqz v2, :cond_326

    .line 551
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->hasDetailsDataLoaded()Z

    move-result v5

    invoke-virtual {v2, v4, v3, v5}, Lcom/google/android/finsky/layout/ListingView;->bindFlagContent(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/navigationmanager/NavigationManager;Z)V

    .line 554
    :cond_326
    const v2, 0x7f080093

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/layout/SongList;

    .line 555
    if-eqz v6, :cond_388

    .line 556
    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getCoreContentListUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4e9

    .line 557
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Lcom/google/android/finsky/layout/SongList;->setVisibility(I)V

    .line 558
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/android/finsky/activities/SongListViewBinder;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 559
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v7

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getCoreContentHeader()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getCoreContentListUrl()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    const v12, 0x7fffffff

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->hasDetailsDataLoaded()Z

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v14

    invoke-virtual/range {v5 .. v14}, Lcom/google/android/finsky/activities/SongListViewBinder;->bind(Lcom/google/android/finsky/layout/SongList;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZLcom/google/android/finsky/library/Libraries;)V

    .line 563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 564
    const-string v3, "tid"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 565
    if-eqz v3, :cond_388

    .line 566
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v5, 0x7f0800c6

    invoke-virtual {v2, v5}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    .line 568
    invoke-virtual {v6, v3, v2}, Lcom/google/android/finsky/layout/SongList;->setHighlightedSong(Ljava/lang/String;Landroid/widget/ScrollView;)V

    .line 575
    :cond_388
    :goto_388
    const v2, 0x7f080092

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/GooglePlusShareSection;

    .line 577
    if-eqz v2, :cond_39e

    .line 578
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->hasDetailsDataLoaded()Z

    move-result v3

    if-eqz v3, :cond_4f0

    .line 579
    move-object/from16 v0, p0

    invoke-virtual {v2, v4, v0}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->bind(Lcom/google/android/finsky/api/model/Document;Landroid/support/v4/app/Fragment;)V

    .line 586
    :cond_39e
    :goto_39e
    const v2, 0x7f0800e1

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 587
    if-eqz v3, :cond_3d6

    .line 588
    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v2

    const/4 v5, 0x5

    if-ne v2, v5, :cond_4f7

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getBookDetails()Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    move-result-object v2

    if-eqz v2, :cond_4f7

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getBookDetails()Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasAboutTheAuthor()Z

    move-result v2

    if-eqz v2, :cond_4f7

    .line 590
    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getBookDetails()Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getAboutTheAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/utils/FastHtmlParser;->fromHtml(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mAboutAuthorBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    const v5, 0x7f07025e

    move-object/from16 v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;ILjava/lang/CharSequence;Landroid/os/Bundle;)V

    .line 600
    :cond_3d6
    :goto_3d6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0800b6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/layout/WarningMessageSection;

    .line 602
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mUseDynamicButtonsContainer:Z

    if-eqz v2, :cond_4fe

    const/4 v5, 0x0

    :goto_3ea
    check-cast v5, Landroid/widget/ImageView;

    .line 604
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v2}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/finsky/layout/WarningMessageSection;->bind(Lcom/google/android/finsky/api/model/Document;Landroid/widget/ImageView;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)V

    .line 607
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0800cc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 608
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getDetailsData()Lcom/google/android/finsky/api/model/DfeDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/DfeDetails;->getFooterHtml()Ljava/lang/String;

    move-result-object v3

    .line 609
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_50b

    .line 610
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 611
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    :goto_425
    const v2, 0x7f08008b

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/ExplorePanel;

    .line 618
    if-eqz v2, :cond_435

    .line 619
    move-object/from16 v0, p0

    invoke-virtual {v2, v4, v0}, Lcom/google/android/finsky/layout/ExplorePanel;->configure(Lcom/google/android/finsky/api/model/Document;Landroid/support/v4/app/Fragment;)V

    .line 623
    :cond_435
    const v2, 0x7f0800d0

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 624
    if-eqz v1, :cond_512

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/ScreenshotGallery;->getVisibility()I

    move-result v1

    if-nez v1, :cond_512

    const/4 v1, 0x1

    .line 626
    :goto_445
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->hasDetailsDataLoaded()Z

    move-result v3

    if-nez v3, :cond_44d

    if-eqz v1, :cond_6

    :cond_44d
    if-eqz v2, :cond_6

    .line 627
    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 327
    :cond_456
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v5}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v5

    invoke-static {v4, v2, v5}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwnerWithCurrentAccount(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v2

    .line 330
    if-eqz v2, :cond_486

    const v2, 0x7f04004e

    .line 334
    :goto_46f
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-nez v5, :cond_48a

    .line 336
    const v5, 0x7f04004c

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 338
    const/4 v5, 0x1

    invoke-virtual {v3, v2, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 349
    :cond_480
    :goto_480
    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mLastUsedSectionOrderId:I

    goto/16 :goto_2d

    .line 330
    :cond_486
    const v2, 0x7f04004d

    goto :goto_46f

    .line 339
    :cond_48a
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mLastUsedSectionOrderId:I

    if-eq v2, v5, :cond_480

    .line 342
    const v5, 0x7f0800dd

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 343
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 344
    :goto_49b
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v7, v5, 0x1

    if-le v6, v7, :cond_4a9

    .line 345
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_49b

    .line 347
    :cond_4a9
    const/4 v5, 0x1

    invoke-virtual {v3, v2, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_480

    .line 400
    :cond_4ae
    const/4 v2, 0x0

    move v13, v2

    goto/16 :goto_e6

    .line 413
    :cond_4b2
    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_11f

    .line 433
    :cond_4b9
    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_160

    .line 457
    :cond_4c0
    const/16 v1, 0x8

    goto/16 :goto_1cc

    .line 470
    :cond_4c4
    const/4 v1, 0x0

    goto/16 :goto_1f2

    .line 471
    :cond_4c7
    const/4 v2, 0x0

    goto/16 :goto_1fa

    .line 484
    :cond_4ca
    const/4 v1, 0x0

    goto/16 :goto_21d

    .line 492
    :cond_4cd
    const/16 v1, 0x8

    invoke-virtual {v14, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_242

    .line 505
    :cond_4d4
    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_275

    .line 519
    :cond_4db
    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2aa

    .line 543
    :cond_4e2
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/MovieTrailerView;->setVisibility(I)V

    goto/16 :goto_310

    .line 571
    :cond_4e9
    const/16 v2, 0x8

    invoke-virtual {v6, v2}, Lcom/google/android/finsky/layout/SongList;->setVisibility(I)V

    goto/16 :goto_388

    .line 581
    :cond_4f0
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->setVisibility(I)V

    goto/16 :goto_39e

    .line 595
    :cond_4f7
    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3d6

    .line 602
    :cond_4fe
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    const v5, 0x7f0800b5

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    goto/16 :goto_3ea

    .line 613
    :cond_50b
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_425

    .line 624
    :cond_512
    const/4 v1, 0x0

    goto/16 :goto_445
.end method


# virtual methods
.method protected getLayoutRes()I
    .registers 2

    .prologue
    .line 216
    const v0, 0x7f040040

    return v0
.end method

.method public onAllLibrariesLoaded()V
    .registers 1

    .prologue
    .line 906
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 651
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 652
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/library/Libraries;->addListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    .line 653
    return-object v0
.end method

.method public onDataChanged()V
    .registers 11

    .prologue
    .line 633
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 636
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    if-nez v0, :cond_3b

    .line 637
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getRepresentativeBackendId()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v2}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/activities/BinderFactory;->getSummaryViewBinder(Lcom/google/android/finsky/api/model/DfeToc;ILandroid/accounts/Account;)Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    .line 639
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getReferrer()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mExternalReferrer:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContinueUrl:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mReturnAfterPurchase:Z

    move-object v4, p0

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/fragments/PageFragment;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 645
    :cond_3b
    invoke-super {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->onDataChanged()V

    .line 646
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 658
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/library/Libraries;->removeListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    .line 661
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->recordState()V

    .line 663
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    if-eqz v0, :cond_13

    .line 664
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->onDestroyView()V

    .line 666
    :cond_13
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryPlusOneViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->onDestroyView()V

    .line 667
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mCreatorRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->onDestroyView()V

    .line 668
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->onDestroyView()V

    .line 669
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mCrossSellViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->onDestroyView()V

    .line 670
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mMoreByViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->onDestroyView()V

    .line 671
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mCastCreditsViewBinder:Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;->onDestroyView()V

    .line 672
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->onDestroyView()V

    .line 673
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mWhatsNewViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->onDestroyView()V

    .line 674
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->onDestroyView()V

    .line 675
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->onDestroyView()V

    .line 676
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mAboutAuthorBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->onDestroyView()V

    .line 678
    invoke-super {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->onDestroyView()V

    .line 679
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 815
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->canChangeFragmentManagerState()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 816
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/ErrorDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/ErrorDialog;

    .line 821
    :goto_17
    return-void

    .line 819
    :cond_18
    const-string v0, "Volley error: %s"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_17
.end method

.method protected onInitViewBinders()V
    .registers 7

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryPlusOneViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "finsky.DetailsDataBasedFragment.cookie"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mCreatorRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 188
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 189
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mCrossSellViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 191
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mMoreByViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 193
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mCastCreditsViewBinder:Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 194
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget v4, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDefaultDescriptionLines:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;I)V

    .line 196
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mWhatsNewViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget v4, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDefaultDescriptionLines:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;I)V

    .line 197
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->init(Landroid/content/Context;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 198
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/SongListViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 199
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/library/Libraries;)V

    .line 201
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mAboutAuthorBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget v4, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDefaultDescriptionLines:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;I)V

    .line 202
    return-void
.end method

.method public onLibraryContentsChanged(Lcom/google/android/finsky/library/AccountLibrary;)V
    .registers 3
    .parameter "library"

    .prologue
    .line 913
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    if-eqz v0, :cond_7

    .line 914
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->refresh()V

    .line 916
    :cond_7
    return-void
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 721
    packed-switch p1, :pswitch_data_28

    .line 734
    const-string v0, "Unknown request code %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 737
    :cond_12
    :goto_12
    return-void

    .line 723
    :pswitch_13
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    if-eqz v0, :cond_12

    .line 724
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->onNegativeClick(ILandroid/os/Bundle;)V

    goto :goto_12

    .line 729
    :pswitch_1d
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    if-eqz v0, :cond_12

    .line 730
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->onNegativeClick(ILandroid/os/Bundle;)V

    goto :goto_12

    .line 721
    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1d
        :pswitch_13
        :pswitch_1d
    .end packed-switch
.end method

.method public onOfferSelected(Lcom/google/android/finsky/api/model/Document;I)V
    .registers 11
    .parameter "document"
    .parameter "offerType"

    .prologue
    .line 762
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v1}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getReferrer()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mExternalReferrer:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContinueUrl:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->buy(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 764
    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 689
    packed-switch p1, :pswitch_data_3c

    .line 708
    const-string v0, "Unknown request code %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 711
    :cond_12
    :goto_12
    return-void

    .line 691
    :pswitch_13
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    if-eqz v0, :cond_12

    .line 692
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->onPositiveClick(ILandroid/os/Bundle;)V

    goto :goto_12

    .line 697
    :pswitch_1d
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    if-eqz v0, :cond_12

    .line 698
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->onPositiveClick(ILandroid/os/Bundle;)V

    goto :goto_12

    .line 702
    :pswitch_27
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 703
    const/high16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 705
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_12

    .line 689
    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1d
        :pswitch_13
        :pswitch_1d
        :pswitch_27
    .end packed-switch
.end method

.method public onPositiveClick(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "docId"
    .parameter "rating"
    .parameter "title"
    .parameter "comment"

    .prologue
    .line 747
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mReviewDialogListener:Lcom/google/android/finsky/activities/ReviewDialogListener;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/finsky/activities/ReviewDialogListener;->onPositiveClick(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 748
    return-void
.end method

.method public onPositiveClick(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)V
    .registers 5
    .parameter "docId"
    .parameter "reviewId"
    .parameter "newRating"

    .prologue
    .line 757
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mReviewDialogListener:Lcom/google/android/finsky/activities/ReviewDialogListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/finsky/activities/ReviewDialogListener;->onPositiveClick(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)V

    .line 758
    return-void
.end method

.method public rebindActionBar()V
    .registers 3

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateBreadcrumb(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 291
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateCurrentBackendId(I)V

    .line 293
    :cond_19
    return-void
.end method

.method protected rebindViews(Landroid/os/Bundle;)V
    .registers 26
    .parameter "savedInstanceState"

    .prologue
    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v19

    const v20, 0x7f08009a

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/view/ViewGroup;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/finsky/activities/DetailsFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v19

    const v20, 0x7f0800c3

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    .line 228
    .local v13, summaryContainer:Landroid/view/ViewGroup;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v19

    const v20, 0x7f0800c5

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    .line 229
    .local v16, summaryPanel:Landroid/view/ViewGroup;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v19

    const v20, 0x7f0800bc

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    .line 231
    .local v14, summaryDynamicPanel:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mUseDynamicButtonsContainer:Z

    move/from16 v19, v0

    if-nez v19, :cond_4b

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 235
    :cond_4b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->rebindActionBar()V

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v8

    .line 237
    .local v8, doc:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual {v8}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    .line 238
    .local v3, backend:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v5

    .line 239
    .local v5, backendHintColor:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendDarkColor(Landroid/content/Context;I)I

    move-result v4

    .line 241
    .local v4, backendDarkColor:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v9

    .line 242
    .local v9, fragmentView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 244
    .local v10, inflater:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mUseDynamicButtonsContainer:Z

    move/from16 v19, v0

    if-nez v19, :cond_97

    .line 246
    invoke-static {v3}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusDetailsLayoutResource(I)I

    move-result v7

    .line 247
    .local v7, detailsLayoutId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 250
    .end local v7           #detailsLayoutId:I
    :cond_97
    const v19, 0x7f08009d

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 251
    .local v17, topBanner:Landroid/view/View;
    if-eqz v17, :cond_db

    .line 252
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 253
    const v19, 0x7f08009e

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 254
    .local v12, pinstripeOverlay:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0200cb

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 256
    .local v6, backgroundTile:Landroid/graphics/drawable/BitmapDrawable;
    sget-object v19, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v20, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 257
    invoke-virtual {v12, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 259
    const v19, 0x7f08009c

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 260
    .local v18, topBannerLeading:Landroid/view/View;
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 263
    .end local v6           #backgroundTile:Landroid/graphics/drawable/BitmapDrawable;
    .end local v12           #pinstripeOverlay:Landroid/view/View;
    .end local v18           #topBannerLeading:Landroid/view/View;
    :cond_db
    if-eqz v13, :cond_109

    .line 264
    invoke-virtual {v13, v5}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0200cb

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 267
    .restart local v6       #backgroundTile:Landroid/graphics/drawable/BitmapDrawable;
    sget-object v19, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v20, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 268
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 270
    const v19, 0x7f0800c4

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 271
    .local v15, summaryLeading:Landroid/view/View;
    invoke-virtual {v15, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 274
    .end local v6           #backgroundTile:Landroid/graphics/drawable/BitmapDrawable;
    .end local v15           #summaryLeading:Landroid/view/View;
    :cond_109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v16, v21, v22

    const/16 v22, 0x2

    aput-object v14, v21, v22

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v8, v1, v2}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->bind(Lcom/google/android/finsky/api/model/Document;Z[Landroid/view/View;)V

    .line 276
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/google/android/finsky/activities/DetailsFragment;->trackSingleColumnScrollingIfNecessary(Landroid/view/View;)V

    .line 277
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/google/android/finsky/activities/DetailsFragment;->trackLeftColumnScrollingIfNecessary(Landroid/view/View;)V

    .line 279
    invoke-direct/range {p0 .. p1}, Lcom/google/android/finsky/activities/DetailsFragment;->updateDetailsSections(Landroid/os/Bundle;)V

    .line 281
    const v19, 0x7f080098

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 282
    .local v11, leadingStrip:Landroid/view/View;
    if-eqz v11, :cond_14f

    .line 283
    invoke-virtual {v11, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 285
    :cond_14f
    return-void
.end method

.method protected recordState(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v7

    .line 769
    .local v7, view:Landroid/view/View;
    if-nez v7, :cond_7

    .line 811
    :cond_6
    :goto_6
    return-void

    .line 773
    :cond_7
    const v9, 0x7f0800c7

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 776
    .local v3, detailsContainer:Landroid/view/ViewGroup;
    const v9, 0x7f080091

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 777
    .local v2, descriptionPanel:Landroid/view/View;
    if-eqz v2, :cond_1e

    .line 778
    iget-object v9, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;

    invoke-virtual {v9, p1}, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->saveInstanceState(Landroid/os/Bundle;)V

    .line 781
    :cond_1e
    const v9, 0x7f0800de

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 782
    .local v8, whatsNewPanel:Landroid/view/View;
    if-eqz v8, :cond_2c

    .line 783
    iget-object v9, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mWhatsNewViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-virtual {v9, p1}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->saveInstanceState(Landroid/os/Bundle;)V

    .line 786
    :cond_2c
    const v9, 0x7f0800b9

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/BadgeSection;

    .line 787
    .local v1, badgeSection:Lcom/google/android/finsky/layout/BadgeSection;
    if-eqz v1, :cond_3a

    .line 788
    invoke-virtual {v1, p1}, Lcom/google/android/finsky/layout/BadgeSection;->saveInstanceState(Landroid/os/Bundle;)V

    .line 791
    :cond_3a
    const v9, 0x7f0800ee

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 792
    .local v6, summaryPlusOnePanel:Landroid/view/View;
    if-eqz v6, :cond_48

    .line 793
    iget-object v9, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryPlusOneViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;

    invoke-virtual {v9, p1}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->saveInstanceState(Landroid/os/Bundle;)V

    .line 796
    :cond_48
    const v9, 0x7f0800b7

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/layout/SubscriptionsSection;

    .line 798
    .local v5, subscriptionsSection:Lcom/google/android/finsky/layout/SubscriptionsSection;
    if-eqz v5, :cond_58

    .line 799
    iget-object v9, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    invoke-virtual {v9, p1}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->saveInstanceState(Landroid/os/Bundle;)V

    .line 802
    :cond_58
    const v9, 0x7f080093

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/layout/SongList;

    .line 803
    .local v4, songList:Lcom/google/android/finsky/layout/SongList;
    if-eqz v4, :cond_68

    .line 804
    iget-object v9, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    invoke-virtual {v9, p1}, Lcom/google/android/finsky/activities/SongListViewBinder;->saveInstanceState(Landroid/os/Bundle;)V

    .line 807
    :cond_68
    const v9, 0x7f0800e1

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 808
    .local v0, aboutAuthorPanel:Landroid/view/View;
    if-eqz v0, :cond_6

    .line 809
    iget-object v9, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mAboutAuthorBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-virtual {v9, p1}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->saveInstanceState(Landroid/os/Bundle;)V

    goto :goto_6
.end method

.method protected requestData()V
    .registers 3

    .prologue
    .line 206
    invoke-super {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->requestData()V

    .line 209
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "finsky.DetailsFragment.externalReferrerUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mExternalReferrer:Ljava/lang/String;

    .line 210
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "finsky.DetailsFragment.continueUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContinueUrl:Ljava/lang/String;

    .line 211
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "finsky.DetailsFragment.returnAfterPurchase"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mReturnAfterPurchase:Z

    .line 212
    return-void
.end method

.method public updateDetailsSections()V
    .registers 2

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 305
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/DetailsFragment;->updateDetailsSections(Landroid/os/Bundle;)V

    .line 306
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/DetailsFragment;->trackSingleColumnScrollingIfNecessary(Landroid/view/View;)V

    .line 308
    :cond_12
    return-void
.end method
