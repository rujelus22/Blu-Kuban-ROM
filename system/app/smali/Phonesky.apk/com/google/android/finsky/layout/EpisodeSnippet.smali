.class public Lcom/google/android/finsky/layout/EpisodeSnippet;
.super Lcom/google/android/finsky/layout/CheckedRelativeLayout;
.source "EpisodeSnippet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/EpisodeSnippet$OnCollapsedStateChanged;
    }
.end annotation


# instance fields
.field private mAddedDrawable:Landroid/view/View;

.field private mAddedState:Landroid/widget/TextView;

.field private final mBaseRowHeight:I

.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mBuyButton:Landroid/widget/Button;

.field private mCollapsedContent:Landroid/view/View;

.field private mCollapsedStateChangedListener:Lcom/google/android/finsky/layout/EpisodeSnippet$OnCollapsedStateChanged;

.field private mEpisode:Lcom/google/android/finsky/api/model/Document;

.field private mEpisodeNumber:Landroid/widget/TextView;

.field private mEpisodeTitle:Landroid/widget/TextView;

.field private mExpandedContent:Landroid/view/View;

.field private mExpandedDescription:Landroid/widget/TextView;

.field private mExpandedEpisodeScreencap:Lcom/google/android/finsky/layout/HeroGraphicView;

.field private mExpandedViewStub:Landroid/view/ViewStub;

.field private final mHandler:Landroid/os/Handler;

.field private mIsNewPurchase:Z

.field private mMaxExpandedHeight:I

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private mParentFragment:Lcom/google/android/finsky/fragments/PageFragment;

.field private mReferrerListCookie:Ljava/lang/String;

.field private mReferrerUrl:Ljava/lang/String;

.field private final mScrollerRunnable:Ljava/lang/Runnable;

.field private mSeasonDocument:Lcom/google/android/finsky/api/model/Document;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/CheckedRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mHandler:Landroid/os/Handler;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mBaseRowHeight:I

    .line 89
    new-instance v0, Lcom/google/android/finsky/layout/EpisodeSnippet$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/EpisodeSnippet$1;-><init>(Lcom/google/android/finsky/layout/EpisodeSnippet;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mScrollerRunnable:Ljava/lang/Runnable;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/EpisodeSnippet;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mBaseRowHeight:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/EpisodeSnippet;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/EpisodeSnippet;)Lcom/google/android/finsky/api/model/Document;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisode:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/layout/EpisodeSnippet;)Lcom/google/android/finsky/fragments/PageFragment;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mParentFragment:Lcom/google/android/finsky/fragments/PageFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/layout/EpisodeSnippet;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->toggleExpandedVisibility()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/finsky/layout/EpisodeSnippet;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->logCurrentState()V

    return-void
.end method

.method public static handleBuyButtonClick(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/fragments/PageFragment;)V
    .registers 20
    .parameter "navMgr"
    .parameter "doc"
    .parameter "containerFragment"

    .prologue
    .line 356
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v3

    .line 357
    .local v3, currentAccount:Landroid/accounts/Account;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwnerWithCurrentAccount(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v14

    .line 359
    .local v14, owner:Landroid/accounts/Account;
    if-eqz v14, :cond_20

    .line 360
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v14, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->openItem(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;)V

    .line 392
    :cond_1f
    :goto_1f
    return-void

    .line 362
    :cond_20
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v13

    .line 363
    .local v13, offers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Common$Offer;>;"
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/api/model/Document;->getOffer(I)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v15

    .line 364
    .local v15, purchase:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    if-eqz v15, :cond_30

    .line 365
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    :cond_30
    const/4 v2, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/api/model/Document;->getOffer(I)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v16

    .line 368
    .local v16, purchaseHd:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    if-eqz v16, :cond_3e

    .line 369
    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_3e
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_80

    .line 373
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/fragments/PageFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v11

    .line 374
    .local v11, fragMgr:Landroid/support/v4/app/FragmentManager;
    const-string v2, "tv_offer_resolution_dialog"

    invoke-virtual {v11, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_1f

    .line 378
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v10

    .line 379
    .local v10, docs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/finsky/api/model/Document;>;"
    const/4 v12, 0x0

    .local v12, i:I
    :goto_56
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    if-ge v12, v2, :cond_64

    .line 380
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    add-int/lit8 v12, v12, 0x1

    goto :goto_56

    .line 383
    :cond_64
    const v2, 0x7f070125

    const/4 v4, 0x1

    invoke-static {v13, v4}, Lcom/google/android/finsky/utils/DocUtils;->getLowestPricedOffer(Ljava/util/List;Z)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v13, v10, v2, v4}, Lcom/google/android/finsky/activities/OfferResolutionDialog;->newInstance(Ljava/util/List;Ljava/util/ArrayList;II)Lcom/google/android/finsky/activities/OfferResolutionDialog;

    move-result-object v9

    .line 386
    .local v9, dialog:Lcom/google/android/finsky/activities/OfferResolutionDialog;
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v9, v0, v2}, Lcom/google/android/finsky/activities/OfferResolutionDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 387
    const-string v2, "tv_offer_resolution_dialog"

    invoke-virtual {v9, v11, v2}, Lcom/google/android/finsky/activities/OfferResolutionDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1f

    .line 388
    .end local v9           #dialog:Lcom/google/android/finsky/activities/OfferResolutionDialog;
    .end local v10           #docs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/finsky/api/model/Document;>;"
    .end local v11           #fragMgr:Landroid/support/v4/app/FragmentManager;
    .end local v12           #i:I
    :cond_80
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1f

    .line 389
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getOfferType()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->buy(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f
.end method

.method private inflateViewStubIfNecessary()V
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mExpandedContent:Landroid/view/View;

    if-nez v0, :cond_22

    .line 203
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mExpandedViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mExpandedContent:Landroid/view/View;

    .line 204
    const v0, 0x7f080127

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mExpandedDescription:Landroid/widget/TextView;

    .line 205
    const v0, 0x7f080126

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/HeroGraphicView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mExpandedEpisodeScreencap:Lcom/google/android/finsky/layout/HeroGraphicView;

    .line 207
    :cond_22
    return-void
.end method

.method private logCurrentState()V
    .registers 5

    .prologue
    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "episodeSelected?doc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisode:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&expanded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->isExpanded()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, newLogState:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mReferrerUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mReferrerListCookie:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method private setExpandedContentVisibility(I)V
    .registers 11
    .parameter "visibility"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 210
    invoke-direct {p0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->inflateViewStubIfNecessary()V

    .line 211
    iget-object v4, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mExpandedContent:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->setVisibility(I)V

    .line 212
    if-nez p1, :cond_8d

    .line 214
    iget-object v4, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisode:Lcom/google/android/finsky/api/model/Document;

    iget v5, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mMaxExpandedHeight:I

    invoke-static {v4, v3, v5}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getScreenshotUrlFromDocument(Lcom/google/android/finsky/api/model/Document;II)Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, imageUrl:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 217
    iget-object v4, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mExpandedEpisodeScreencap:Lcom/google/android/finsky/layout/HeroGraphicView;

    iget-object v5, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v6, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mSeasonDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4, v5, v6, v1, v2}, Lcom/google/android/finsky/layout/HeroGraphicView;->load(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Z)V

    .line 219
    :cond_23
    iget-object v4, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisode:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_83

    .line 220
    iget-object v4, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisode:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, episodeDescription:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisode:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getTvEpisodeDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;

    move-result-object v4

    if-eqz v4, :cond_7e

    .line 222
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070111

    new-array v7, v2, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisode:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v8}, Lcom/google/android/finsky/api/model/Document;->getTvEpisodeDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->getReleaseDate()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    :cond_7e
    iget-object v4, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mExpandedDescription:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    .end local v0           #episodeDescription:Ljava/lang/String;
    :cond_83
    iget-object v4, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mExpandedContent:Landroid/view/View;

    new-instance v5, Lcom/google/android/finsky/layout/EpisodeSnippet$5;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/layout/EpisodeSnippet$5;-><init>(Lcom/google/android/finsky/layout/EpisodeSnippet;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    .end local v1           #imageUrl:Ljava/lang/String;
    :cond_8d
    iget-object v4, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mCollapsedStateChangedListener:Lcom/google/android/finsky/layout/EpisodeSnippet$OnCollapsedStateChanged;

    if-eqz v4, :cond_9a

    .line 238
    iget-object v4, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mCollapsedStateChangedListener:Lcom/google/android/finsky/layout/EpisodeSnippet$OnCollapsedStateChanged;

    const/16 v5, 0x8

    if-ne p1, v5, :cond_a2

    :goto_97
    invoke-interface {v4, p0, v2}, Lcom/google/android/finsky/layout/EpisodeSnippet$OnCollapsedStateChanged;->onCollapsedStateChanged(Lcom/google/android/finsky/layout/EpisodeSnippet;Z)V

    .line 244
    :cond_9a
    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mScrollerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 245
    return-void

    :cond_a2
    move v2, v3

    .line 238
    goto :goto_97
.end method

.method private toggleExpandedVisibility()V
    .registers 2

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x8

    :goto_8
    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->setExpandedContentVisibility(I)V

    .line 199
    return-void

    .line 198
    :cond_c
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static updateBuyButtonState(Landroid/content/res/Resources;Landroid/widget/Button;Landroid/widget/TextView;Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;IZ)V
    .registers 16
    .parameter "resources"
    .parameter "buyButton"
    .parameter "addedButton"
    .parameter "addedDrawable"
    .parameter "parentDoc"
    .parameter "doc"
    .parameter "stringOverrideForPrice"
    .parameter "isNewPurchase"

    .prologue
    .line 293
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 294
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 295
    .local v0, currentAccount:Landroid/accounts/Account;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v1

    .line 296
    .local v1, libraries:Lcom/google/android/finsky/library/Libraries;
    invoke-static {p5, v1, v0}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwnerWithCurrentAccount(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v2

    .line 299
    .local v2, owner:Landroid/accounts/Account;
    const v4, 0x7f020053

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 301
    invoke-virtual {p1}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/widget/Button;->getPaddingRight()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/widget/Button;->setPadding(IIII)V

    .line 302
    const v4, 0x7f0a0002

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 303
    if-eqz v2, :cond_7d

    .line 305
    invoke-virtual {p5}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v4

    const/16 v5, 0x13

    if-ne v4, v5, :cond_55

    .line 306
    const v4, 0x7f0700ed

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setText(I)V

    .line 307
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 342
    :goto_49
    if-eqz p2, :cond_54

    .line 343
    if-eqz p7, :cond_d5

    const/4 v3, 0x0

    .line 344
    .local v3, visibility:I
    :goto_4e
    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 345
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 347
    .end local v3           #visibility:I
    :cond_54
    return-void

    .line 310
    :cond_55
    const v4, 0x7f020047

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 312
    invoke-virtual {p1}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/widget/Button;->getPaddingRight()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/widget/Button;->setPadding(IIII)V

    .line 313
    const v4, 0x7f070100

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setText(I)V

    .line 314
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 315
    const v4, 0x7f0a0049

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_49

    .line 317
    :cond_7d
    const/4 v4, 0x1

    invoke-virtual {p5, v4}, Lcom/google/android/finsky/api/model/Document;->getOffer(I)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v4

    if-eqz v4, :cond_98

    .line 319
    const/4 v4, -0x1

    if-eq p6, v4, :cond_8f

    .line 320
    invoke-virtual {p1, p6}, Landroid/widget/Button;->setText(I)V

    .line 324
    :goto_8a
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_49

    .line 322
    :cond_8f
    const/4 v4, 0x1

    invoke-virtual {p5, v4}, Lcom/google/android/finsky/api/model/Document;->getFormattedPrice(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8a

    .line 325
    :cond_98
    const/4 v4, 0x7

    invoke-virtual {p5, v4}, Lcom/google/android/finsky/api/model/Document;->getOffer(I)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v4

    if-eqz v4, :cond_b3

    .line 327
    const/4 v4, -0x1

    if-eq p6, v4, :cond_aa

    .line 328
    invoke-virtual {p1, p6}, Landroid/widget/Button;->setText(I)V

    .line 332
    :goto_a5
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_49

    .line 330
    :cond_aa
    const/4 v4, 0x7

    invoke-virtual {p5, v4}, Lcom/google/android/finsky/api/model/Document;->getFormattedPrice(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a5

    .line 333
    :cond_b3
    if-eqz p4, :cond_cf

    const/4 v4, 0x1

    invoke-virtual {p4, v4}, Lcom/google/android/finsky/api/model/Document;->getOffer(I)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v4

    if-nez v4, :cond_c3

    const/4 v4, 0x7

    invoke-virtual {p4, v4}, Lcom/google/android/finsky/api/model/Document;->getOffer(I)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v4

    if-eqz v4, :cond_cf

    .line 336
    :cond_c3
    const v4, 0x7f070236

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setText(I)V

    .line 337
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_49

    .line 339
    :cond_cf
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_49

    .line 343
    :cond_d5
    const/16 v3, 0x8

    goto/16 :goto_4e
.end method


# virtual methods
.method public collapseWithoutNotifyingListeners()V
    .registers 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mExpandedContent:Landroid/view/View;

    if-nez v0, :cond_5

    .line 184
    :goto_4
    return-void

    .line 183
    :cond_5
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mExpandedContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method public expand()V
    .registers 2

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->setExpandedContentVisibility(I)V

    .line 188
    return-void
.end method

.method public isExpanded()Z
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mExpandedContent:Landroid/view/View;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mExpandedContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected onAttachedToWindow()V
    .registers 10

    .prologue
    .line 118
    invoke-super {p0}, Lcom/google/android/finsky/layout/CheckedRelativeLayout;->onAttachedToWindow()V

    .line 120
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisode:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getTvEpisodeDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;

    move-result-object v8

    .line 121
    .local v8, episodeDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;
    if-nez v8, :cond_11

    .line 122
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->setVisibility(I)V

    .line 167
    :goto_10
    return-void

    .line 126
    :cond_11
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisodeNumber:Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->getEpisodeIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisodeTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisode:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mBuyButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mAddedState:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mAddedDrawable:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mSeasonDocument:Lcom/google/android/finsky/api/model/Document;

    iget-object v5, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisode:Lcom/google/android/finsky/api/model/Document;

    const/4 v6, -0x1

    iget-boolean v7, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mIsNewPurchase:Z

    invoke-static/range {v0 .. v7}, Lcom/google/android/finsky/layout/EpisodeSnippet;->updateBuyButtonState(Landroid/content/res/Resources;Landroid/widget/Button;Landroid/widget/TextView;Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;IZ)V

    .line 132
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mBuyButton:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/finsky/layout/EpisodeSnippet$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/EpisodeSnippet$2;-><init>(Lcom/google/android/finsky/layout/EpisodeSnippet;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisodeNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 143
    sget-object v0, Lcom/google/android/finsky/config/G;->prePurchaseSharingEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 144
    new-instance v0, Lcom/google/android/finsky/layout/EpisodeSnippet$3;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/EpisodeSnippet$3;-><init>(Lcom/google/android/finsky/layout/EpisodeSnippet;)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 158
    :cond_63
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mCollapsedContent:Landroid/view/View;

    new-instance v1, Lcom/google/android/finsky/layout/EpisodeSnippet$4;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/EpisodeSnippet$4;-><init>(Lcom/google/android/finsky/layout/EpisodeSnippet;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisode:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_10
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mScrollerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 250
    invoke-super {p0}, Lcom/google/android/finsky/layout/CheckedRelativeLayout;->onDetachedFromWindow()V

    .line 251
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 255
    invoke-super {p0}, Lcom/google/android/finsky/layout/CheckedRelativeLayout;->onFinishInflate()V

    .line 257
    const v0, 0x7f080119

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mCollapsedContent:Landroid/view/View;

    .line 258
    const v0, 0x7f080120

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mExpandedViewStub:Landroid/view/ViewStub;

    .line 259
    const v0, 0x7f08011b

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisodeNumber:Landroid/widget/TextView;

    .line 260
    const v0, 0x7f0800aa

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mBuyButton:Landroid/widget/Button;

    .line 261
    const v0, 0x7f08011f

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisodeTitle:Landroid/widget/TextView;

    .line 262
    const v0, 0x7f08011e

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mAddedState:Landroid/widget/TextView;

    .line 263
    const v0, 0x7f0800f3

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mAddedDrawable:Landroid/view/View;

    .line 264
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mMaxExpandedHeight:I

    .line 265
    return-void
.end method

.method public setEpisodeDetails(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;ZLcom/google/android/finsky/fragments/PageFragment;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/layout/EpisodeSnippet$OnCollapsedStateChanged;)V
    .registers 10
    .parameter "season"
    .parameter "episode"
    .parameter "bitmapLoader"
    .parameter "navigationManager"
    .parameter "isNewPurchase"
    .parameter "parentFragment"
    .parameter "referrerUrl"
    .parameter "referrerListCookie"
    .parameter "listener"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mSeasonDocument:Lcom/google/android/finsky/api/model/Document;

    .line 271
    iput-object p2, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisode:Lcom/google/android/finsky/api/model/Document;

    .line 272
    iput-object p4, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 273
    iput-object p3, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 274
    iput-boolean p5, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mIsNewPurchase:Z

    .line 275
    iput-object p9, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mCollapsedStateChangedListener:Lcom/google/android/finsky/layout/EpisodeSnippet$OnCollapsedStateChanged;

    .line 276
    iput-object p6, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mParentFragment:Lcom/google/android/finsky/fragments/PageFragment;

    .line 277
    iput-object p7, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mReferrerUrl:Ljava/lang/String;

    .line 278
    iput-object p8, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mReferrerListCookie:Ljava/lang/String;

    .line 279
    return-void
.end method
