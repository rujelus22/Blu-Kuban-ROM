.class public Lcom/google/android/finsky/activities/CreatorDetailsFragment;
.super Lcom/google/android/finsky/activities/DetailsDataBasedFragment;
.source "CreatorDetailsFragment.java"

# interfaces
.implements Lcom/google/android/finsky/activities/RateReviewDialog$Listener;
.implements Lcom/google/android/finsky/activities/ReviewDialog$Listener;
.implements Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;


# instance fields
.field private final mAlbumsViewBinder:Lcom/google/android/finsky/activities/AlbumPackViewBinder;

.field private final mDefaultDescriptionLines:I

.field private final mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

.field private final mExplorerButtonDisableColor:I

.field private final mHeroImageHeight:I

.field private final mMaxCreatorRelatedItems:I

.field private final mMaxCreatorRelatedItemsPerRow:I

.field private final mMaxRelatedItems:I

.field private final mMaxRelatedItemsPerRow:I

.field private mOwnedActions:Lcom/google/android/finsky/layout/OwnedActions;

.field private final mRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

.field private mReviewDialogListener:Lcom/google/android/finsky/activities/ReviewDialogListener;

.field private final mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

.field private final mSeasonListViewBinder:Lcom/google/android/finsky/activities/SeasonListViewBinder;

.field private final mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

.field private final mSummaryPlusOneViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;-><init>()V

    .line 54
    new-instance v1, Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    .line 57
    new-instance v1, Lcom/google/android/finsky/activities/SeasonListViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/SeasonListViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSeasonListViewBinder:Lcom/google/android/finsky/activities/SeasonListViewBinder;

    .line 60
    new-instance v1, Lcom/google/android/finsky/activities/SongListViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/SongListViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    .line 63
    new-instance v1, Lcom/google/android/finsky/activities/AlbumPackViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/AlbumPackViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mAlbumsViewBinder:Lcom/google/android/finsky/activities/AlbumPackViewBinder;

    .line 66
    new-instance v1, Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    .line 69
    new-instance v1, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    .line 72
    new-instance v1, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSummaryPlusOneViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;

    .line 106
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 107
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0c0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mMaxCreatorRelatedItemsPerRow:I

    .line 108
    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mMaxRelatedItemsPerRow:I

    .line 109
    const v1, 0x7f0c000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mMaxCreatorRelatedItems:I

    .line 110
    const v1, 0x7f0c000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mMaxRelatedItems:I

    .line 111
    const v1, 0x7f0c0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDefaultDescriptionLines:I

    .line 112
    const v1, 0x7f0c0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mHeroImageHeight:I

    .line 113
    const v1, 0x7f0a0044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mExplorerButtonDisableColor:I

    .line 114
    return-void
.end method

.method private moveViewOneUp(Landroid/view/View;)V
    .registers 5
    .parameter "child"

    .prologue
    .line 294
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 296
    .local v1, parent:Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1b

    .line 297
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_1c

    .line 298
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 299
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 303
    :cond_1b
    return-void

    .line 296
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public static newInstance(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/CreatorDetailsFragment;
    .registers 6
    .parameter "document"
    .parameter "url"
    .parameter "cookie"
    .parameter "externalReferrer"

    .prologue
    .line 97
    new-instance v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;-><init>()V

    .line 98
    .local v0, fragment:Lcom/google/android/finsky/activities/CreatorDetailsFragment;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->setDfeTocAndUrl(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0, p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->setInitialDocument(Lcom/google/android/finsky/api/model/Document;)V

    .line 100
    const-string v1, "finsky.DetailsDataBasedFragment.cookie"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "finsky.CreatorDetailsFragment.referrerUrl"

    invoke-virtual {v0, v1, p3}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-object v0
.end method

.method private rebindMusicSections(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Landroid/os/Bundle;)V
    .registers 23
    .parameter "fragmentView"
    .parameter "doc"
    .parameter "savedInstanceState"

    .prologue
    .line 342
    const/16 v17, 0x0

    .line 343
    .local v17, isShowingRelatedSongList:Z
    const v3, 0x7f080093

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/layout/SongList;

    .line 345
    .local v4, songList:Lcom/google/android/finsky/layout/SongList;
    if-eqz v4, :cond_4e

    .line 346
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_10a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v3

    if-eqz v3, :cond_10a

    .line 347
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lcom/google/android/finsky/layout/SongList;->setVisibility(I)V

    .line 348
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/google/android/finsky/activities/SongListViewBinder;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 349
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getCoreContentListUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_eb

    .line 350
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    const/4 v5, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getCoreContentHeader()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getCoreContentListUrl()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v12

    invoke-virtual/range {v3 .. v12}, Lcom/google/android/finsky/activities/SongListViewBinder;->bind(Lcom/google/android/finsky/layout/SongList;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZLcom/google/android/finsky/library/Libraries;)V

    .line 365
    :cond_4e
    :goto_4e
    const v3, 0x7f080092

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/google/android/finsky/layout/GooglePlusShareSection;

    .line 367
    .local v18, shareSection:Lcom/google/android/finsky/layout/GooglePlusShareSection;
    if-eqz v18, :cond_77

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v3

    if-eqz v3, :cond_111

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_111

    .line 369
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->setVisibility(I)V

    .line 370
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->bind(Lcom/google/android/finsky/api/model/Document;Landroid/support/v4/app/Fragment;)V

    .line 377
    :cond_77
    :goto_77
    const v3, 0x7f080097

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/google/android/finsky/layout/ListingView;

    .line 379
    .local v16, flagContentPanel:Lcom/google/android/finsky/layout/ListingView;
    if-eqz v16, :cond_9a

    .line 380
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_11a

    .line 381
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v5

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3, v5}, Lcom/google/android/finsky/layout/ListingView;->bindFlagContent(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/navigationmanager/NavigationManager;Z)V

    .line 388
    :cond_9a
    :goto_9a
    const v3, 0x7f080095

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 389
    .local v6, bodyOfWorkPanel:Landroid/view/View;
    if-eqz v6, :cond_ea

    .line 390
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_123

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v3

    if-eqz v3, :cond_123

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getBodyOfWorkListUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_123

    .line 392
    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 393
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mAlbumsViewBinder:Lcom/google/android/finsky/activities/AlbumPackViewBinder;

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getBodyOfWorkHeader()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getBodyOfWorkListUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getBodyOfWorkBrowseUrl()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mMaxRelatedItemsPerRow:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mMaxRelatedItems:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mUrl:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v7, p2

    invoke-virtual/range {v5 .. v15}, Lcom/google/android/finsky/activities/AlbumPackViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 396
    if-eqz v17, :cond_ea

    .line 399
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->moveViewOneUp(Landroid/view/View;)V

    .line 405
    :cond_ea
    :goto_ea
    return-void

    .line 355
    .end local v6           #bodyOfWorkPanel:Landroid/view/View;
    .end local v16           #flagContentPanel:Lcom/google/android/finsky/layout/ListingView;
    .end local v18           #shareSection:Lcom/google/android/finsky/layout/GooglePlusShareSection;
    :cond_eb
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    const/4 v5, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getRelatedDocTypeHeader()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getRelatedDocTypeListUrl()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v12

    invoke-virtual/range {v3 .. v12}, Lcom/google/android/finsky/activities/SongListViewBinder;->bind(Lcom/google/android/finsky/layout/SongList;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZLcom/google/android/finsky/library/Libraries;)V

    .line 358
    const/16 v17, 0x1

    goto/16 :goto_4e

    .line 361
    :cond_10a
    const/16 v3, 0x8

    invoke-virtual {v4, v3}, Lcom/google/android/finsky/layout/SongList;->setVisibility(I)V

    goto/16 :goto_4e

    .line 372
    .restart local v18       #shareSection:Lcom/google/android/finsky/layout/GooglePlusShareSection;
    :cond_111
    const/16 v3, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->setVisibility(I)V

    goto/16 :goto_77

    .line 383
    .restart local v16       #flagContentPanel:Lcom/google/android/finsky/layout/ListingView;
    :cond_11a
    const/16 v3, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/layout/ListingView;->setVisibility(I)V

    goto/16 :goto_9a

    .line 402
    .restart local v6       #bodyOfWorkPanel:Landroid/view/View;
    :cond_123
    const/16 v3, 0x8

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_ea
.end method

.method private rebindTvSections(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Landroid/os/Bundle;)V
    .registers 20
    .parameter "fragmentView"
    .parameter "doc"
    .parameter "savedInstanceState"

    .prologue
    .line 306
    const v1, 0x7f080094

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/layout/EpisodeList;

    .line 307
    .local v3, episodeList:Lcom/google/android/finsky/layout/EpisodeList;
    if-eqz v3, :cond_66

    .line 308
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_e0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v1

    if-eqz v1, :cond_e0

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getCoreContentListUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e0

    .line 310
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/google/android/finsky/layout/EpisodeList;->setVisibility(I)V

    .line 311
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 312
    .local v14, detailsUri:Landroid/net/Uri;
    const-string v1, "cdid"

    invoke-virtual {v14, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 313
    .local v4, seasonId:Ljava/lang/String;
    const-string v1, "gdid"

    invoke-virtual {v14, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 314
    .local v5, episodeId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSeasonListViewBinder:Lcom/google/android/finsky/activities/SeasonListViewBinder;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getCoreContentHeader()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getCoreContentListUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getReferrer()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getCookie()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v1 .. v11}, Lcom/google/android/finsky/activities/SeasonListViewBinder;->bind(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/layout/EpisodeList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSeasonListViewBinder:Lcom/google/android/finsky/activities/SeasonListViewBinder;

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/SeasonListViewBinder;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 324
    .end local v4           #seasonId:Ljava/lang/String;
    .end local v5           #episodeId:Ljava/lang/String;
    .end local v14           #detailsUri:Landroid/net/Uri;
    :cond_66
    :goto_66
    const v1, 0x7f080096

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 325
    .local v15, reviewsPanel:Landroid/view/View;
    if-eqz v15, :cond_df

    .line 326
    const v1, 0x7f08008d

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/OwnedActions;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mOwnedActions:Lcom/google/android/finsky/layout/OwnedActions;

    .line 327
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_e9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v1

    if-eqz v1, :cond_e9

    .line 328
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mOwnedActions:Lcom/google/android/finsky/layout/OwnedActions;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getDetailsData()Lcom/google/android/finsky/api/model/DfeDetails;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v11

    move-object/from16 v7, p2

    move-object/from16 v10, p0

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/finsky/layout/OwnedActions;->setDocument(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeDetails;Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/support/v4/app/Fragment;Z)V

    .line 330
    new-instance v6, Lcom/google/android/finsky/activities/ReviewDialogListener;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getDetailsData()Lcom/google/android/finsky/api/model/DfeDetails;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mOwnedActions:Lcom/google/android/finsky/layout/OwnedActions;

    move-object/from16 v9, p0

    invoke-direct/range {v6 .. v13}, Lcom/google/android/finsky/activities/ReviewDialogListener;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeDetails;Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;Lcom/google/android/finsky/layout/OwnedActions;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mReviewDialogListener:Lcom/google/android/finsky/activities/ReviewDialogListener;

    .line 332
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v2

    move-object/from16 v0, p2

    invoke-virtual {v1, v15, v0, v2}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Z)V

    .line 333
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v1

    if-eqz v1, :cond_e6

    const/4 v1, 0x0

    :goto_dc
    invoke-virtual {v15, v1}, Landroid/view/View;->setVisibility(I)V

    .line 339
    :cond_df
    :goto_df
    return-void

    .line 319
    .end local v15           #reviewsPanel:Landroid/view/View;
    :cond_e0
    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Lcom/google/android/finsky/layout/EpisodeList;->setVisibility(I)V

    goto :goto_66

    .line 333
    .restart local v15       #reviewsPanel:Landroid/view/View;
    :cond_e6
    const/16 v1, 0x8

    goto :goto_dc

    .line 335
    :cond_e9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mOwnedActions:Lcom/google/android/finsky/layout/OwnedActions;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/OwnedActions;->setVisibility(I)V

    .line 336
    const/16 v1, 0x8

    invoke-virtual {v15, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_df
.end method


# virtual methods
.method protected getLayoutRes()I
    .registers 2

    .prologue
    .line 132
    const v0, 0x7f04002f

    return v0
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->recordState()V

    .line 261
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->onDestroyView()V

    .line 262
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/SongListViewBinder;->onDestroyView()V

    .line 263
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSeasonListViewBinder:Lcom/google/android/finsky/activities/SeasonListViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/SeasonListViewBinder;->onDestroyView()V

    .line 264
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mAlbumsViewBinder:Lcom/google/android/finsky/activities/AlbumPackViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/AlbumPackViewBinder;->onDestroyView()V

    .line 265
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->onDestroyView()V

    .line 266
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->onDestroyView()V

    .line 267
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSummaryPlusOneViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->onDestroyView()V

    .line 268
    invoke-super {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->onDestroyView()V

    .line 269
    return-void
.end method

.method protected onInitViewBinders()V
    .registers 8

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget v4, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDefaultDescriptionLines:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;I)V

    .line 120
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/SongListViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 121
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSeasonListViewBinder:Lcom/google/android/finsky/activities/SeasonListViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v5, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v6

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/activities/SeasonListViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/fragments/PageFragment;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/library/Libraries;)V

    .line 123
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mAlbumsViewBinder:Lcom/google/android/finsky/activities/AlbumPackViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/AlbumPackViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 124
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 125
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->init(Landroid/content/Context;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 126
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSummaryPlusOneViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "finsky.DetailsDataBasedFragment.cookie"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .registers 3
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 421
    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .registers 5
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 410
    const/4 v1, 0x5

    if-ne p1, v1, :cond_16

    .line 411
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 412
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 414
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 416
    .end local v0           #intent:Landroid/content/Intent;
    :cond_16
    return-void
.end method

.method public onPositiveClick(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "docId"
    .parameter "rating"
    .parameter "reviewTitle"
    .parameter "reviewComment"

    .prologue
    .line 431
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mReviewDialogListener:Lcom/google/android/finsky/activities/ReviewDialogListener;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/finsky/activities/ReviewDialogListener;->onPositiveClick(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public onPositiveClick(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)V
    .registers 5
    .parameter "docId"
    .parameter "reviewId"
    .parameter "newRating"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mReviewDialogListener:Lcom/google/android/finsky/activities/ReviewDialogListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/finsky/activities/ReviewDialogListener;->onPositiveClick(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)V

    .line 426
    return-void
.end method

.method public rebindActionBar()V
    .registers 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateBreadcrumb(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 251
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateCurrentBackendId(I)V

    .line 253
    :cond_19
    return-void
.end method

.method protected rebindViews(Landroid/os/Bundle;)V
    .registers 38
    .parameter "savedInstanceState"

    .prologue
    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->rebindActionBar()V

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v5

    .line 139
    .local v5, doc:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v17

    .line 140
    .local v17, backend:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mContext:Landroid/content/Context;

    move/from16 v0, v17

    invoke-static {v3, v0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v19

    .line 141
    .local v19, backendHintColor:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mContext:Landroid/content/Context;

    move/from16 v0, v17

    invoke-static {v3, v0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendDarkColor(Landroid/content/Context;I)I

    move-result v18

    .line 143
    .local v18, backendDarkColor:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getView()Landroid/view/View;

    move-result-object v24

    .line 145
    .local v24, fragmentView:Landroid/view/View;
    const v3, 0x7f08009d

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    .line 146
    .local v33, topBanner:Landroid/view/View;
    if-eqz v33, :cond_6b

    .line 147
    move-object/from16 v0, v33

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 148
    const v3, 0x7f08009e

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    .line 149
    .local v31, pinstripeOverlay:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0200cb

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    check-cast v20, Landroid/graphics/drawable/BitmapDrawable;

    .line 151
    .local v20, backgroundTile:Landroid/graphics/drawable/BitmapDrawable;
    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v6}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 152
    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    const v3, 0x7f08009c

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    .line 155
    .local v34, topBannerLeading:Landroid/view/View;
    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 158
    .end local v20           #backgroundTile:Landroid/graphics/drawable/BitmapDrawable;
    .end local v31           #pinstripeOverlay:Landroid/view/View;
    .end local v34           #topBannerLeading:Landroid/view/View;
    :cond_6b
    const v3, 0x7f08008c

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    .line 159
    .local v26, heroSeparator:Landroid/view/View;
    if-eqz v26, :cond_7d

    .line 160
    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 163
    :cond_7d
    const v3, 0x7f080090

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 164
    .local v22, creatorTitleView:Landroid/widget/TextView;
    if-eqz v22, :cond_93

    .line 165
    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :cond_93
    const v3, 0x7f08008a

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Lcom/google/android/finsky/layout/HeroGraphicView;

    .line 170
    .local v25, heroGraphicImageView:Lcom/google/android/finsky/layout/HeroGraphicView;
    const/16 v27, 0x0

    .line 171
    .local v27, heroUrl:Ljava/lang/String;
    const/16 v35, 0x0

    .line 172
    .local v35, usePromoImage:Z
    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v3

    const/16 v6, 0x12

    if-ne v3, v6, :cond_b5

    .line 173
    const/16 v35, 0x1

    .line 174
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mHeroImageHeight:I

    invoke-static {v5, v3, v6}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getPromoBitmapUrlFromDocument(Lcom/google/android/finsky/api/model/Document;II)Ljava/lang/String;

    move-result-object v27

    .line 178
    :cond_b5
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c6

    .line 179
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mHeroImageHeight:I

    invoke-static {v5, v3, v6}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getIconUrlFromDocument(Lcom/google/android/finsky/api/model/Document;II)Ljava/lang/String;

    move-result-object v27

    .line 180
    const/16 v35, 0x0

    .line 182
    :cond_c6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    const/4 v6, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v5, v1, v6}, Lcom/google/android/finsky/layout/HeroGraphicView;->load(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Z)V

    .line 183
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v0, v25

    move/from16 v1, v35

    invoke-virtual {v0, v5, v3, v1}, Lcom/google/android/finsky/layout/HeroGraphicView;->bindLightboxImage(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/navigationmanager/NavigationManager;Z)V

    .line 185
    const v3, 0x7f080098

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    .line 186
    .local v28, leadingStrip:Landroid/view/View;
    if-eqz v28, :cond_ef

    .line 187
    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 192
    :cond_ef
    const v3, 0x7f080091

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 193
    .local v4, descriptionPanel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    const/4 v6, -0x1

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getDescription()Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v8, p1

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;ILjava/lang/CharSequence;Landroid/os/Bundle;)V

    .line 195
    const v3, 0x7f080099

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .line 196
    .local v21, creatorTaglinePanel:Landroid/view/View;
    if-nez v21, :cond_117

    .line 197
    const v3, 0x7f020057

    invoke-virtual {v4, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 201
    :cond_117
    const v3, 0x7f08008f

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 202
    .local v7, relatedPanel:Landroid/view/View;
    if-eqz v7, :cond_159

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v3

    if-eqz v3, :cond_1da

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getRelatedListUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1da

    .line 204
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 205
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getRelatedHeader()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getRelatedListUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getRelatedBrowseUrl()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mMaxCreatorRelatedItemsPerRow:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mMaxCreatorRelatedItems:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mUrl:Ljava/lang/String;

    const/16 v16, 0x0

    move-object v8, v5

    invoke-virtual/range {v6 .. v16}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_159
    :goto_159
    const v3, 0x7f08008e

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Lcom/google/android/finsky/layout/ListingView;

    .line 215
    .local v29, linksPanel:Lcom/google/android/finsky/layout/ListingView;
    if-eqz v29, :cond_16f

    .line 216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mUrl:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v5}, Lcom/google/android/finsky/layout/ListingView;->bindLinks(Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;)V

    .line 220
    :cond_16f
    const v3, 0x7f08008b

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/layout/ExplorePanel;

    move-object/from16 v0, p0

    invoke-virtual {v3, v5, v0}, Lcom/google/android/finsky/layout/ExplorePanel;->configure(Lcom/google/android/finsky/api/model/Document;Landroid/support/v4/app/Fragment;)V

    .line 223
    const v3, 0x7f0800ee

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    .line 224
    .local v32, summaryPlusOnePanel:Landroid/view/View;
    if-eqz v32, :cond_199

    .line 225
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSummaryPlusOneViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v6

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v3, v0, v5, v6, v1}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;ZLandroid/os/Bundle;)V

    .line 230
    :cond_199
    const v3, 0x7f0800fb

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/google/android/finsky/layout/DetailsWishlist;

    .line 232
    .local v23, detailsWishlist:Lcom/google/android/finsky/layout/DetailsWishlist;
    if-eqz v23, :cond_1af

    .line 233
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v3}, Lcom/google/android/finsky/layout/DetailsWishlist;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/DfeApi;)V

    .line 237
    :cond_1af
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->rebindTvSections(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Landroid/os/Bundle;)V

    .line 238
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->rebindMusicSections(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Landroid/os/Bundle;)V

    .line 241
    const v3, 0x7f0800d0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    .line 242
    .local v30, loadingSection:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v3

    if-eqz v3, :cond_1d9

    if-eqz v30, :cond_1d9

    .line 243
    const/16 v3, 0x8

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 245
    :cond_1d9
    return-void

    .line 209
    .end local v23           #detailsWishlist:Lcom/google/android/finsky/layout/DetailsWishlist;
    .end local v29           #linksPanel:Lcom/google/android/finsky/layout/ListingView;
    .end local v30           #loadingSection:Landroid/view/View;
    .end local v32           #summaryPlusOnePanel:Landroid/view/View;
    :cond_1da
    const/16 v3, 0x8

    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_159
.end method

.method protected recordState(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 274
    .local v2, view:Landroid/view/View;
    if-nez v2, :cond_7

    .line 291
    :goto_6
    return-void

    .line 278
    :cond_7
    const v3, 0x7f080091

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 279
    .local v0, descriptionPanel:Landroid/view/View;
    if-eqz v0, :cond_15

    .line 280
    iget-object v3, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-virtual {v3, p1}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->saveInstanceState(Landroid/os/Bundle;)V

    .line 283
    :cond_15
    const v3, 0x7f0800ee

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 284
    .local v1, summaryPlusOnePanel:Landroid/view/View;
    if-eqz v1, :cond_23

    .line 285
    iget-object v3, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSummaryPlusOneViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;

    invoke-virtual {v3, p1}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->saveInstanceState(Landroid/os/Bundle;)V

    .line 288
    :cond_23
    iget-object v3, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSeasonListViewBinder:Lcom/google/android/finsky/activities/SeasonListViewBinder;

    invoke-virtual {v3, p1}, Lcom/google/android/finsky/activities/SeasonListViewBinder;->saveInstanceState(Landroid/os/Bundle;)V

    .line 290
    iget-object v3, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    invoke-virtual {v3, p1}, Lcom/google/android/finsky/activities/SongListViewBinder;->saveInstanceState(Landroid/os/Bundle;)V

    goto :goto_6
.end method
