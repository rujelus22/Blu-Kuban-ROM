.class public Lcom/google/android/finsky/activities/DetailsFragment;
.super Lcom/google/android/finsky/activities/DetailsDataBasedFragment;
.source "DetailsFragment.java"

# interfaces
.implements Lcom/google/android/finsky/activities/RateReviewDialog$Listener;
.implements Lcom/google/android/finsky/activities/ReviewDialog$Listener;
.implements Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;


# instance fields
.field private final mAlbumDetailsBackgroundColor:I

.field private mAssetChangeListener:Lcom/google/android/finsky/local/AssetStore$LocalAssetChangeListener;

.field private mAvailabilityRestrictionViewBinder:Lcom/google/android/finsky/activities/DetailsAvailabilityRestrictionViewBinder;

.field private final mCastCreditsViewBinder:Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;

.field private final mCreatorRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

.field private final mCrossSellViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

.field private final mDefaultAlbumDescriptionLines:I

.field private final mDefaultDescriptionLines:I

.field private final mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;

.field private mDetailsPanel:Landroid/view/ViewGroup;

.field private mDownloadQueueListener:Lcom/google/android/finsky/download/DownloadQueueListener;

.field private mExternalReferrer:Ljava/lang/String;

.field private final mFlagContentViewBinder:Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder;

.field private final mLinksViewBinder:Lcom/google/android/finsky/activities/DetailsLinksViewBinder;

.field private final mMaxCreatorMoreByItems:I

.field private final mMaxCreatorMoreByItemsPerRow:I

.field private final mMaxRelatedAlbumsPerRow:I

.field private final mMaxRelatedItems:I

.field private final mMaxRelatedItemsPerRow:I

.field private final mOwnedActionsViewBinder:Lcom/google/android/finsky/activities/DetailsOwnedActionsViewBinder;

.field private final mRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

.field private final mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

.field private mReviewSection:Lcom/google/android/finsky/layout/RateReviewSection;

.field private mScreenshotsMaxHeight:I

.field private final mScreenshotsViewBinder:Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;

.field private final mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

.field private final mSummaryPlusOneViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;

.field private mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

.field private mUseDynamicButtonsContainer:Z

.field private final mWhatsNewViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;-><init>()V

    .line 64
    new-instance v1, Lcom/google/android/finsky/activities/DetailsAvailabilityRestrictionViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsAvailabilityRestrictionViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mAvailabilityRestrictionViewBinder:Lcom/google/android/finsky/activities/DetailsAvailabilityRestrictionViewBinder;

    .line 71
    new-instance v1, Lcom/google/android/finsky/activities/DetailsOwnedActionsViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsOwnedActionsViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mOwnedActionsViewBinder:Lcom/google/android/finsky/activities/DetailsOwnedActionsViewBinder;

    .line 75
    new-instance v1, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryPlusOneViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;

    .line 79
    new-instance v1, Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mCreatorRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    .line 82
    new-instance v1, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;

    .line 86
    new-instance v1, Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mWhatsNewViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    .line 89
    new-instance v1, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    .line 92
    new-instance v1, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mScreenshotsViewBinder:Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;

    .line 96
    new-instance v1, Lcom/google/android/finsky/activities/SongListViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/SongListViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    .line 99
    new-instance v1, Lcom/google/android/finsky/activities/DetailsLinksViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsLinksViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mLinksViewBinder:Lcom/google/android/finsky/activities/DetailsLinksViewBinder;

    .line 102
    new-instance v1, Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    .line 105
    new-instance v1, Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mCrossSellViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    .line 108
    new-instance v1, Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mCastCreditsViewBinder:Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;

    .line 112
    new-instance v1, Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mFlagContentViewBinder:Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder;

    .line 171
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 172
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0c0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxCreatorMoreByItemsPerRow:I

    .line 173
    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedItemsPerRow:I

    .line 174
    const v1, 0x7f0c0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedAlbumsPerRow:I

    .line 175
    const v1, 0x7f0c0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxCreatorMoreByItems:I

    .line 176
    const v1, 0x7f0c000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedItems:I

    .line 177
    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mUseDynamicButtonsContainer:Z

    .line 178
    const v1, 0x7f0c0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDefaultDescriptionLines:I

    .line 179
    const v1, 0x7f0c0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDefaultAlbumDescriptionLines:I

    .line 180
    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mAlbumDetailsBackgroundColor:I

    .line 181
    const v1, 0x7f0b003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mScreenshotsMaxHeight:I

    .line 182
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/DetailsFragment;)Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/DetailsFragment;Landroid/os/Bundle;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/DetailsFragment;->updateDetailsSections(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/DetailsFragment;)Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/DetailsFragment;)Lcom/google/android/finsky/layout/RateReviewSection;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mReviewSection:Lcom/google/android/finsky/layout/RateReviewSection;

    return-object v0
.end method

.method private attachAssetChangeListener()V
    .registers 5

    .prologue
    .line 699
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getRepresentativeBackendId()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_8

    .line 753
    :goto_7
    return-void

    .line 703
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 704
    .local v1, docPackageName:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAssetStore()Lcom/google/android/finsky/local/AssetStore;

    move-result-object v0

    .line 705
    .local v0, assetStore:Lcom/google/android/finsky/local/AssetStore;
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mAssetChangeListener:Lcom/google/android/finsky/local/AssetStore$LocalAssetChangeListener;

    if-eqz v2, :cond_25

    .line 706
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mAssetChangeListener:Lcom/google/android/finsky/local/AssetStore$LocalAssetChangeListener;

    invoke-interface {v0, v2}, Lcom/google/android/finsky/local/AssetStore;->removeListener(Lcom/google/android/finsky/local/AssetStore$LocalAssetChangeListener;)V

    .line 712
    :cond_25
    new-instance v2, Lcom/google/android/finsky/activities/DetailsFragment$3;

    invoke-direct {v2, p0, v1}, Lcom/google/android/finsky/activities/DetailsFragment$3;-><init>(Lcom/google/android/finsky/activities/DetailsFragment;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mAssetChangeListener:Lcom/google/android/finsky/local/AssetStore$LocalAssetChangeListener;

    .line 752
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mAssetChangeListener:Lcom/google/android/finsky/local/AssetStore$LocalAssetChangeListener;

    invoke-interface {v0, v2}, Lcom/google/android/finsky/local/AssetStore;->addListener(Lcom/google/android/finsky/local/AssetStore$LocalAssetChangeListener;)V

    goto :goto_7
.end method

.method private attachDownloadQueueListener()V
    .registers 3

    .prologue
    .line 647
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getDownloadQueue()Lcom/google/android/finsky/download/DownloadQueue;

    move-result-object v0

    .line 648
    .local v0, downloadQueue:Lcom/google/android/finsky/download/DownloadQueue;
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDownloadQueueListener:Lcom/google/android/finsky/download/DownloadQueueListener;

    if-eqz v1, :cond_11

    .line 649
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDownloadQueueListener:Lcom/google/android/finsky/download/DownloadQueueListener;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/download/DownloadQueue;->removeListener(Lcom/google/android/finsky/download/DownloadQueueListener;)V

    .line 652
    :cond_11
    new-instance v1, Lcom/google/android/finsky/activities/DetailsFragment$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/DetailsFragment$2;-><init>(Lcom/google/android/finsky/activities/DetailsFragment;)V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDownloadQueueListener:Lcom/google/android/finsky/download/DownloadQueueListener;

    .line 695
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDownloadQueueListener:Lcom/google/android/finsky/download/DownloadQueueListener;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/download/DownloadQueue;->addListener(Lcom/google/android/finsky/download/DownloadQueueListener;)V

    .line 696
    return-void
.end method

.method private getRepresentativeBackendId()I
    .registers 2

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    return v0
.end method

.method public static newInstance(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/DetailsFragment;
    .registers 7
    .parameter "document"
    .parameter "url"
    .parameter "listCookie"
    .parameter "referrer"
    .parameter "externalReferrer"

    .prologue
    .line 161
    new-instance v0, Lcom/google/android/finsky/activities/DetailsFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/DetailsFragment;-><init>()V

    .line 162
    .local v0, fragment:Lcom/google/android/finsky/activities/DetailsFragment;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/activities/DetailsFragment;->setDfeTocAndUrl(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0, p0}, Lcom/google/android/finsky/activities/DetailsFragment;->setInitialDocument(Lcom/google/android/finsky/api/model/Document;)V

    .line 164
    const-string v1, "finsky.DetailsDataBasedFragment.cookie"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/finsky/activities/DetailsFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v1, "finsk.DetailsDatabasedFragment.referrer"

    invoke-virtual {v0, v1, p3}, Lcom/google/android/finsky/activities/DetailsFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v1, "finsky.DetailsFragment.externalReferrerUrl"

    invoke-virtual {v0, v1, p4}, Lcom/google/android/finsky/activities/DetailsFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-object v0
.end method

.method private updateDetailsSections(Landroid/os/Bundle;)V
    .registers 19
    .parameter

    .prologue
    .line 330
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080022

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 332
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v5

    .line 335
    if-nez v5, :cond_17

    .line 593
    :cond_16
    :goto_16
    return-void

    .line 339
    :cond_17
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 341
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoCache()Lcom/google/android/finsky/utils/PackageInfoCache;

    move-result-object v2

    .line 343
    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_392

    .line 348
    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/finsky/utils/PackageInfoCache;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v2

    .line 355
    :goto_3a
    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v4

    packed-switch v4, :pswitch_data_3fe

    .line 365
    if-eqz v2, :cond_39d

    const v2, 0x7f04004a

    .line 370
    :goto_46
    const/4 v4, 0x1

    invoke-virtual {v3, v2, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 372
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v15

    .line 374
    const v1, 0x7f0800ae

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/google/android/finsky/layout/DetailsSummaryByline;

    .line 376
    if-eqz v14, :cond_6c

    .line 377
    invoke-virtual {v14, v5}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->setDocument(Lcom/google/android/finsky/api/model/Document;)V

    .line 380
    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6c

    .line 381
    if-eqz v14, :cond_6c

    .line 382
    const v1, 0x7f02003d

    invoke-virtual {v14, v1}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->setBackgroundResource(I)V

    .line 388
    :cond_6c
    const v1, 0x7f0800af

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/BadgeSection;

    .line 389
    if-eqz v1, :cond_8c

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getReferrer()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/finsky/layout/BadgeSection;->configure(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Landroid/os/Bundle;)V

    .line 394
    :cond_8c
    const v1, 0x7f080090

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 395
    if-eqz v1, :cond_a0

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryPlusOneViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->hasDetailsDataLoaded()Z

    move-result v3

    invoke-virtual {v2, v1, v5, v3}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Z)V

    .line 399
    :cond_a0
    const v1, 0x7f080169

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/RateReviewSection;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mReviewSection:Lcom/google/android/finsky/layout/RateReviewSection;

    .line 401
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mReviewSection:Lcom/google/android/finsky/layout/RateReviewSection;

    if-eqz v1, :cond_e0

    .line 402
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->hasDetailsDataLoaded()Z

    move-result v1

    if-eqz v1, :cond_3a5

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->hasDetailsDataLoaded()Z

    move-result v1

    if-eqz v1, :cond_3a2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getDetailsData()Lcom/google/android/finsky/api/model/DfeDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeDetails;->getUserReview()Lcom/google/android/finsky/remoting/protos/Rev$Review;

    move-result-object v1

    .line 404
    :goto_c7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mReviewSection:Lcom/google/android/finsky/layout/RateReviewSection;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/RateReviewSection;->setVisibility(I)V

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mReviewSection:Lcom/google/android/finsky/layout/RateReviewSection;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v0, p0

    invoke-virtual {v2, v3, v1, v4, v0}, Lcom/google/android/finsky/layout/RateReviewSection;->configure(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/remoting/protos/Rev$Review;Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/support/v4/app/Fragment;)V

    .line 412
    :cond_e0
    :goto_e0
    const v1, 0x7f0800b0

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 413
    if-eqz v1, :cond_f0

    .line 414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mOwnedActionsViewBinder:Lcom/google/android/finsky/activities/DetailsOwnedActionsViewBinder;

    invoke-virtual {v2, v1, v5}, Lcom/google/android/finsky/activities/DetailsOwnedActionsViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;)V

    .line 418
    :cond_f0
    const v1, 0x7f0800b1

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 419
    if-eqz v4, :cond_127

    .line 420
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->hasDetailsDataLoaded()Z

    move-result v1

    if-eqz v1, :cond_3b0

    .line 421
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 422
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mCreatorRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getMoreByHeader()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getMoreByListUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getMoreByBrowseUrl()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxCreatorMoreByItemsPerRow:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxCreatorMoreByItems:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mExternalReferrer:Ljava/lang/String;

    invoke-virtual/range {v3 .. v13}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 432
    :cond_127
    :goto_127
    const v1, 0x7f0800d7

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 433
    if-eqz v1, :cond_168

    .line 434
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->hasDetailsDataLoaded()Z

    move-result v2

    if-eqz v2, :cond_3b7

    .line 435
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;

    move-object/from16 v0, p1

    invoke-virtual {v2, v1, v5, v0}, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Landroid/os/Bundle;)V

    .line 438
    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_168

    .line 439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mDefaultAlbumDescriptionLines:I

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->setDefaultMaxLines(I)V

    .line 440
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_168

    .line 441
    const v2, 0x7f02003d

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 443
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mAlbumDetailsBackgroundColor:I

    invoke-virtual {v14, v1}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->setBackgroundColor(I)V

    .line 452
    :cond_168
    :goto_168
    const v1, 0x7f0800b2

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 453
    if-eqz v1, :cond_17c

    .line 454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mCastCreditsViewBinder:Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->hasDetailsDataLoaded()Z

    move-result v3

    invoke-virtual {v2, v1, v5, v3}, Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Z)V

    .line 458
    :cond_17c
    const v1, 0x7f0800dc

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 459
    if-eqz v7, :cond_196

    .line 460
    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getWhatsNew()Ljava/lang/CharSequence;

    move-result-object v10

    .line 461
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mWhatsNewViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    const v9, 0x7f07011e

    move-object v8, v5

    move-object/from16 v11, p1

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;ILjava/lang/CharSequence;Landroid/os/Bundle;)V

    .line 466
    :cond_196
    const v1, 0x7f0800d9

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 467
    if-eqz v2, :cond_1b4

    .line 468
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->hasDetailsDataLoaded()Z

    move-result v3

    invoke-virtual {v1, v2, v5, v3}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Z)V

    .line 469
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->hasDetailsDataLoaded()Z

    move-result v1

    if-eqz v1, :cond_3be

    const/4 v1, 0x0

    :goto_1b1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 473
    :cond_1b4
    const v1, 0x7f080091

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 474
    if-eqz v1, :cond_1c4

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mLinksViewBinder:Lcom/google/android/finsky/activities/DetailsLinksViewBinder;

    invoke-virtual {v2, v1, v5}, Lcom/google/android/finsky/activities/DetailsLinksViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;)V

    .line 480
    :cond_1c4
    const v1, 0x7f080092

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 481
    if-eqz v14, :cond_217

    .line 482
    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3c2

    const/4 v1, 0x1

    .line 483
    :goto_1d5
    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3c5

    const/4 v2, 0x1

    .line 485
    :goto_1dd
    if-eqz v2, :cond_3c8

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedAlbumsPerRow:I

    .line 487
    :goto_1e3
    if-eqz v1, :cond_1ed

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->hasCreatorRelatedContent()Z

    move-result v1

    if-nez v1, :cond_1ed

    if-nez v4, :cond_3ce

    :cond_1ed
    const/4 v1, 0x1

    .line 490
    :goto_1ee
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->hasDetailsDataLoaded()Z

    move-result v2

    if-eqz v2, :cond_3d1

    if-eqz v1, :cond_3d1

    .line 491
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getRelatedHeader()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getRelatedListUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getRelatedBrowseUrl()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedItems:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mExternalReferrer:Ljava/lang/String;

    move-object v4, v14

    invoke-virtual/range {v3 .. v13}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 500
    :cond_217
    :goto_217
    const v1, 0x7f0800dd

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 501
    if-eqz v4, :cond_24a

    .line 502
    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->hasCrossSellContent()Z

    move-result v1

    if-eqz v1, :cond_3d8

    .line 503
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mCrossSellViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getCrossSellHeader()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getCrossSellListUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getCrossSellBrowseUrl()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedItemsPerRow:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedItems:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mExternalReferrer:Ljava/lang/String;

    invoke-virtual/range {v3 .. v13}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 513
    :cond_24a
    :goto_24a
    const v1, 0x7f0800da

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 514
    if-eqz v16, :cond_260

    .line 515
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mScreenshotsViewBinder:Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->hasDetailsDataLoaded()Z

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v5, v2}, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Z)V

    .line 519
    :cond_260
    const v1, 0x7f0800db

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/HeroGraphicView;

    .line 520
    if-eqz v1, :cond_2bd

    .line 522
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mUseDynamicButtonsContainer:Z

    if-eqz v2, :cond_278

    .line 523
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mScreenshotsMaxHeight:I

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/HeroGraphicView;->setHeight(I)V

    .line 526
    :cond_278
    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getMovieTrailers()Ljava/util/List;

    move-result-object v3

    .line 527
    if-eqz v3, :cond_3df

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3df

    const/4 v2, 0x0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3df

    .line 529
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;

    .line 530
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v1, v3, v4, v6}, Lcom/google/android/finsky/layout/HeroGraphicView;->load(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;Z)V

    .line 531
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getWatchUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/layout/HeroGraphicView;->showPlayIcon(Ljava/lang/String;)V

    .line 532
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getDuration()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/HeroGraphicView;->showOverlayCaption(Ljava/lang/String;)V

    .line 533
    invoke-virtual {v1}, Lcom/google/android/finsky/layout/HeroGraphicView;->showBlackCurtain()V

    .line 534
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/HeroGraphicView;->setVisibility(I)V

    .line 541
    :cond_2bd
    :goto_2bd
    const v1, 0x7f080098

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 542
    if-eqz v1, :cond_2d1

    .line 543
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mFlagContentViewBinder:Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->hasDetailsDataLoaded()Z

    move-result v3

    invoke-virtual {v2, v1, v5, v3}, Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Z)V

    .line 546
    :cond_2d1
    const v1, 0x7f080096

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/layout/SongList;

    .line 547
    if-eqz v7, :cond_326

    .line 548
    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getCoreContentListUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3e6

    .line 549
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lcom/google/android/finsky/layout/SongList;->setVisibility(I)V

    .line 550
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v8

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getCoreContentHeader()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getCoreContentListUrl()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    const v13, 0x7fffffff

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->hasDetailsDataLoaded()Z

    move-result v14

    invoke-virtual/range {v6 .. v14}, Lcom/google/android/finsky/activities/SongListViewBinder;->bind(Lcom/google/android/finsky/layout/SongList;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)V

    .line 554
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 555
    const-string v2, "tid"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 556
    if-eqz v2, :cond_326

    .line 557
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v3, 0x7f0800bf

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    .line 559
    invoke-virtual {v7, v2, v1}, Lcom/google/android/finsky/layout/SongList;->setHighlightedSong(Ljava/lang/String;Landroid/widget/ScrollView;)V

    .line 566
    :cond_326
    :goto_326
    const v1, 0x7f080095

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/GooglePlusShareSection;

    .line 568
    if-eqz v1, :cond_33c

    .line 569
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->hasDetailsDataLoaded()Z

    move-result v2

    if-eqz v2, :cond_3ed

    .line 570
    move-object/from16 v0, p0

    invoke-virtual {v1, v5, v0}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->bind(Lcom/google/android/finsky/api/model/Document;Landroid/support/v4/app/Fragment;)V

    .line 577
    :cond_33c
    :goto_33c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    const v2, 0x7f08001a

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 579
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0800ad

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 581
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mUseDynamicButtonsContainer:Z

    if-eqz v2, :cond_3f4

    const/4 v6, 0x0

    .line 582
    :goto_35f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mUseDynamicButtonsContainer:Z

    if-eqz v2, :cond_3f8

    const/4 v7, 0x0

    .line 583
    :goto_366
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mAvailabilityRestrictionViewBinder:Lcom/google/android/finsky/activities/DetailsAvailabilityRestrictionViewBinder;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/finsky/activities/DetailsAvailabilityRestrictionViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;IILcom/google/android/finsky/api/model/DfeToc;)V

    .line 587
    const v1, 0x7f0800c7

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 588
    if-eqz v16, :cond_3fc

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3fc

    const/4 v1, 0x1

    .line 590
    :goto_381
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->hasDetailsDataLoaded()Z

    move-result v3

    if-nez v3, :cond_389

    if-eqz v1, :cond_16

    :cond_389
    if-eqz v2, :cond_16

    .line 591
    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_16

    .line 351
    :cond_392
    invoke-virtual {v5, v2}, Lcom/google/android/finsky/api/model/Document;->ownedByUser(Lcom/google/android/finsky/utils/PackageInfoCache;)Z

    move-result v2

    goto/16 :goto_3a

    .line 359
    :pswitch_398
    const v2, 0x7f040048

    .line 360
    goto/16 :goto_46

    .line 365
    :cond_39d
    const v2, 0x7f040049

    goto/16 :goto_46

    .line 403
    :cond_3a2
    const/4 v1, 0x0

    goto/16 :goto_c7

    .line 408
    :cond_3a5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mReviewSection:Lcom/google/android/finsky/layout/RateReviewSection;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/RateReviewSection;->setVisibility(I)V

    goto/16 :goto_e0

    .line 427
    :cond_3b0
    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_127

    .line 447
    :cond_3b7
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_168

    .line 469
    :cond_3be
    const/16 v1, 0x8

    goto/16 :goto_1b1

    .line 482
    :cond_3c2
    const/4 v1, 0x0

    goto/16 :goto_1d5

    .line 483
    :cond_3c5
    const/4 v2, 0x0

    goto/16 :goto_1dd

    .line 485
    :cond_3c8
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedItemsPerRow:I

    goto/16 :goto_1e3

    .line 487
    :cond_3ce
    const/4 v1, 0x0

    goto/16 :goto_1ee

    .line 495
    :cond_3d1
    const/16 v1, 0x8

    invoke-virtual {v14, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_217

    .line 508
    :cond_3d8
    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_24a

    .line 536
    :cond_3df
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/HeroGraphicView;->setVisibility(I)V

    goto/16 :goto_2bd

    .line 562
    :cond_3e6
    const/16 v1, 0x8

    invoke-virtual {v7, v1}, Lcom/google/android/finsky/layout/SongList;->setVisibility(I)V

    goto/16 :goto_326

    .line 572
    :cond_3ed
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->setVisibility(I)V

    goto/16 :goto_33c

    .line 581
    :cond_3f4
    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto/16 :goto_35f

    .line 582
    :cond_3f8
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_366

    .line 588
    :cond_3fc
    const/4 v1, 0x0

    goto :goto_381

    .line 355
    :pswitch_data_3fe
    .packed-switch 0x2
        :pswitch_398
    .end packed-switch
.end method


# virtual methods
.method protected getLayoutRes()I
    .registers 2

    .prologue
    .line 214
    const v0, 0x7f040037

    return v0
.end method

.method public onDataChanged()V
    .registers 10

    .prologue
    const/4 v5, 0x1

    .line 597
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 600
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    if-nez v0, :cond_32

    .line 601
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getRepresentativeBackendId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/activities/BinderFactory;->getSummaryViewBinder(Lcom/google/android/finsky/api/model/DfeToc;I)Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    .line 603
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getReferrer()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mExternalReferrer:Ljava/lang/String;

    move-object v4, p0

    move v6, v5

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/fragments/PageFragment;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 608
    :cond_32
    invoke-super {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->onDataChanged()V

    .line 609
    return-void
.end method

.method public onDestroyView()V
    .registers 4

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->recordState()V

    .line 617
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mAvailabilityRestrictionViewBinder:Lcom/google/android/finsky/activities/DetailsAvailabilityRestrictionViewBinder;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/DetailsAvailabilityRestrictionViewBinder;->onDestroyView()V

    .line 618
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    if-eqz v2, :cond_11

    .line 619
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->onDestroyView()V

    .line 621
    :cond_11
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mOwnedActionsViewBinder:Lcom/google/android/finsky/activities/DetailsOwnedActionsViewBinder;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/DetailsOwnedActionsViewBinder;->onDestroyView()V

    .line 622
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryPlusOneViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->onDestroyView()V

    .line 623
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mCreatorRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->onDestroyView()V

    .line 624
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->onDestroyView()V

    .line 625
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mCrossSellViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->onDestroyView()V

    .line 626
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mCastCreditsViewBinder:Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;->onDestroyView()V

    .line 627
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->onDestroyView()V

    .line 628
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mWhatsNewViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->onDestroyView()V

    .line 629
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mScreenshotsViewBinder:Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;

    invoke-virtual {v2}, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->onDestroyView()V

    .line 630
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mLinksViewBinder:Lcom/google/android/finsky/activities/DetailsLinksViewBinder;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/DetailsLinksViewBinder;->onDestroyView()V

    .line 631
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->onDestroyView()V

    .line 632
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mFlagContentViewBinder:Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder;->onDestroyView()V

    .line 634
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDownloadQueueListener:Lcom/google/android/finsky/download/DownloadQueueListener;

    if-eqz v2, :cond_5e

    .line 635
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getDownloadQueue()Lcom/google/android/finsky/download/DownloadQueue;

    move-result-object v1

    .line 636
    .local v1, downloadQueue:Lcom/google/android/finsky/download/DownloadQueue;
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDownloadQueueListener:Lcom/google/android/finsky/download/DownloadQueueListener;

    invoke-interface {v1, v2}, Lcom/google/android/finsky/download/DownloadQueue;->removeListener(Lcom/google/android/finsky/download/DownloadQueueListener;)V

    .line 638
    .end local v1           #downloadQueue:Lcom/google/android/finsky/download/DownloadQueue;
    :cond_5e
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mAssetChangeListener:Lcom/google/android/finsky/local/AssetStore$LocalAssetChangeListener;

    if-eqz v2, :cond_6f

    .line 639
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAssetStore()Lcom/google/android/finsky/local/AssetStore;

    move-result-object v0

    .line 640
    .local v0, assetStore:Lcom/google/android/finsky/local/AssetStore;
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mAssetChangeListener:Lcom/google/android/finsky/local/AssetStore$LocalAssetChangeListener;

    invoke-interface {v0, v2}, Lcom/google/android/finsky/local/AssetStore;->removeListener(Lcom/google/android/finsky/local/AssetStore$LocalAssetChangeListener;)V

    .line 643
    .end local v0           #assetStore:Lcom/google/android/finsky/local/AssetStore;
    :cond_6f
    invoke-super {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->onDestroyView()V

    .line 644
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 6
    .parameter "error"

    .prologue
    .line 875
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/ErrorDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/ErrorDialog;

    .line 877
    return-void
.end method

.method protected onInitViewBinders()V
    .registers 7

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mAvailabilityRestrictionViewBinder:Lcom/google/android/finsky/activities/DetailsAvailabilityRestrictionViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/DetailsAvailabilityRestrictionViewBinder;->init(Landroid/content/Context;)V

    .line 187
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

    .line 189
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mOwnedActionsViewBinder:Lcom/google/android/finsky/activities/DetailsOwnedActionsViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/finsky/activities/DetailsOwnedActionsViewBinder;->init(Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 190
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mCreatorRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 192
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 193
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mCrossSellViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 195
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mCastCreditsViewBinder:Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 196
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget v4, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDefaultDescriptionLines:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;I)V

    .line 198
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mWhatsNewViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget v4, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDefaultDescriptionLines:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;I)V

    .line 199
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mScreenshotsViewBinder:Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 200
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mLinksViewBinder:Lcom/google/android/finsky/activities/DetailsLinksViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/DetailsLinksViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 201
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->init(Landroid/content/Context;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 202
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mFlagContentViewBinder:Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 203
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/SongListViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 204
    return-void
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .registers 4
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 774
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    if-eqz v0, :cond_9

    .line 775
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->onNegativeClick(ILandroid/os/Bundle;)V

    .line 777
    :cond_9
    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .registers 4
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 762
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    if-eqz v0, :cond_9

    .line 763
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->onPositiveClick(ILandroid/os/Bundle;)V

    .line 765
    :cond_9
    return-void
.end method

.method public onPositiveClick(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 786
    const v0, 0x7f070138

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/activities/DetailsFragment;->toast(II)V

    .line 787
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    new-instance v5, Lcom/google/android/finsky/activities/DetailsFragment$4;

    invoke-direct {v5, p0, p2}, Lcom/google/android/finsky/activities/DetailsFragment$4;-><init>(Lcom/google/android/finsky/activities/DetailsFragment;I)V

    new-instance v6, Lcom/google/android/finsky/activities/DetailsFragment$5;

    invoke-direct {v6, p0}, Lcom/google/android/finsky/activities/DetailsFragment$5;-><init>(Lcom/google/android/finsky/activities/DetailsFragment;)V

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/api/DfeApi;->addReview(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 809
    return-void
.end method

.method public onPositiveClick(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 818
    const v0, 0x7f070144

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/activities/DetailsFragment;->toast(II)V

    .line 819
    new-instance v0, Lcom/google/android/finsky/api/model/DfeRateReview;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->getRpcId()I

    move-result v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/google/android/finsky/api/model/DfeRateReview;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;I)V

    .line 821
    new-instance v1, Lcom/google/android/finsky/activities/DetailsFragment$6;

    invoke-direct {v1, p0, p3}, Lcom/google/android/finsky/activities/DetailsFragment$6;-><init>(Lcom/google/android/finsky/activities/DetailsFragment;Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeRateReview;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 832
    new-instance v1, Lcom/google/android/finsky/activities/DetailsFragment$7;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/DetailsFragment$7;-><init>(Lcom/google/android/finsky/activities/DetailsFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeRateReview;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 838
    return-void
.end method

.method public rebindActionBar()V
    .registers 3

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateBreadcrumb(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 321
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateCurrentBackendId(I)V

    .line 323
    :cond_19
    return-void
.end method

.method protected rebindViews(Landroid/os/Bundle;)V
    .registers 30
    .parameter "savedInstanceState"

    .prologue
    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v23

    const v24, 0x7f0800ac

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/view/ViewGroup;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/finsky/activities/DetailsFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v23

    const v24, 0x7f0800b8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    .line 226
    .local v17, summaryContainer:Landroid/view/ViewGroup;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v23

    const v24, 0x7f0800ba

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    .line 227
    .local v20, summaryPanel:Landroid/view/ViewGroup;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v23

    const v24, 0x7f0800b3

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/view/ViewGroup;

    .line 229
    .local v18, summaryDynamicPanel:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mUseDynamicButtonsContainer:Z

    move/from16 v23, v0

    if-nez v23, :cond_4b

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 233
    :cond_4b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->rebindActionBar()V

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v9

    .line 235
    .local v9, doc:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual {v9}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    .line 236
    .local v3, backend:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v0, v3}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v5

    .line 237
    .local v5, backendHintColor:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v0, v3}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendDarkColor(Landroid/content/Context;I)I

    move-result v4

    .line 239
    .local v4, backendDarkColor:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v10

    .line 240
    .local v10, fragmentView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 242
    .local v11, inflater:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mUseDynamicButtonsContainer:Z

    move/from16 v23, v0

    if-nez v23, :cond_97

    .line 244
    invoke-static {v3}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusDetailsLayoutResource(I)I

    move-result v8

    .line 245
    .local v8, detailsLayoutId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v11, v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 248
    .end local v8           #detailsLayoutId:I
    :cond_97
    const v23, 0x7f080021

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 249
    .local v12, leadingStrip:Landroid/view/View;
    if-eqz v12, :cond_a5

    .line 250
    invoke-virtual {v12, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 253
    :cond_a5
    const v23, 0x7f0800a6

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .line 254
    .local v21, topBanner:Landroid/view/View;
    if-eqz v21, :cond_eb

    .line 255
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 256
    const v23, 0x7f0800a8

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 257
    .local v16, pinstripeOverlay:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f020092

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 259
    .local v6, backgroundTile:Landroid/graphics/drawable/BitmapDrawable;
    sget-object v23, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v24, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 260
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 262
    const v23, 0x7f0800a7

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 263
    .local v22, topBannerLeading:Landroid/view/View;
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 266
    .end local v6           #backgroundTile:Landroid/graphics/drawable/BitmapDrawable;
    .end local v16           #pinstripeOverlay:Landroid/view/View;
    .end local v22           #topBannerLeading:Landroid/view/View;
    :cond_eb
    if-eqz v17, :cond_11f

    .line 267
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f020092

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 270
    .restart local v6       #backgroundTile:Landroid/graphics/drawable/BitmapDrawable;
    sget-object v23, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v24, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 271
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 273
    const v23, 0x7f0800b9

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 274
    .local v19, summaryLeading:Landroid/view/View;
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 279
    .end local v6           #backgroundTile:Landroid/graphics/drawable/BitmapDrawable;
    .end local v19           #summaryLeading:Landroid/view/View;
    :cond_11f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mUseDynamicButtonsContainer:Z

    move/from16 v23, v0

    if-eqz v23, :cond_142

    .line 280
    const v23, 0x7f08001b

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 282
    .local v7, buttonContainer:Landroid/view/ViewGroup;
    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 283
    invoke-static {v3}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusDetailsButtonLayoutResource(I)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v11, v0, v7, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 287
    .end local v7           #buttonContainer:Landroid/view/ViewGroup;
    :cond_142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x1

    aput-object v20, v25, v26

    const/16 v26, 0x2

    aput-object v18, v25, v26

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v9, v1, v2}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->bind(Lcom/google/android/finsky/api/model/Document;Z[Landroid/view/View;)V

    .line 291
    const v23, 0x7f0800aa

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/google/android/finsky/layout/ObservableScrollView;

    .line 293
    .local v14, leftColumnScroller:Lcom/google/android/finsky/layout/ObservableScrollView;
    if-eqz v14, :cond_19c

    .line 294
    const v23, 0x7f0800ab

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/google/android/finsky/layout/ObservableScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/google/android/finsky/layout/DetailsLeftColumnSummary;

    .line 296
    .local v13, leftColumnContainer:Lcom/google/android/finsky/layout/DetailsLeftColumnSummary;
    const v23, 0x7f0800b3

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/google/android/finsky/layout/DetailsLeftColumnSummary;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 298
    .local v15, leftColumnSummary:Landroid/view/View;
    new-instance v23, Lcom/google/android/finsky/activities/DetailsFragment$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15, v13}, Lcom/google/android/finsky/activities/DetailsFragment$1;-><init>(Lcom/google/android/finsky/activities/DetailsFragment;Landroid/view/View;Lcom/google/android/finsky/layout/DetailsLeftColumnSummary;)V

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/google/android/finsky/layout/ObservableScrollView;->setOnScrollListener(Lcom/google/android/finsky/layout/ObservableScrollView$ScrollListener;)V

    .line 311
    .end local v13           #leftColumnContainer:Lcom/google/android/finsky/layout/DetailsLeftColumnSummary;
    .end local v15           #leftColumnSummary:Landroid/view/View;
    :cond_19c
    invoke-direct/range {p0 .. p1}, Lcom/google/android/finsky/activities/DetailsFragment;->updateDetailsSections(Landroid/os/Bundle;)V

    .line 313
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->attachDownloadQueueListener()V

    .line 314
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->attachAssetChangeListener()V

    .line 315
    return-void
.end method

.method protected recordState(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 842
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v3

    .line 843
    .local v3, view:Landroid/view/View;
    if-nez v3, :cond_7

    .line 864
    :cond_6
    :goto_6
    return-void

    .line 847
    :cond_7
    const v5, 0x7f080022

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 850
    .local v2, detailsContainer:Landroid/view/ViewGroup;
    const v5, 0x7f0800d7

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 851
    .local v1, descriptionPanel:Landroid/view/View;
    if-eqz v1, :cond_1e

    .line 852
    iget-object v5, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;

    invoke-virtual {v5, p1}, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->saveInstanceState(Landroid/os/Bundle;)V

    .line 855
    :cond_1e
    const v5, 0x7f0800dc

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 856
    .local v4, whatsNewPanel:Landroid/view/View;
    if-eqz v4, :cond_2c

    .line 857
    iget-object v5, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mWhatsNewViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-virtual {v5, p1}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->saveInstanceState(Landroid/os/Bundle;)V

    .line 860
    :cond_2c
    const v5, 0x7f0800af

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/BadgeSection;

    .line 861
    .local v0, badgeSection:Lcom/google/android/finsky/layout/BadgeSection;
    if-eqz v0, :cond_6

    .line 862
    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/BadgeSection;->saveInstanceState(Landroid/os/Bundle;)V

    goto :goto_6
.end method

.method protected requestData()V
    .registers 3

    .prologue
    .line 208
    invoke-super {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->requestData()V

    .line 209
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "finsky.DetailsFragment.externalReferrerUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mExternalReferrer:Ljava/lang/String;

    .line 210
    return-void
.end method

.method protected toast(II)V
    .registers 4
    .parameter "resourceId"
    .parameter "duration"

    .prologue
    .line 870
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 871
    return-void
.end method
