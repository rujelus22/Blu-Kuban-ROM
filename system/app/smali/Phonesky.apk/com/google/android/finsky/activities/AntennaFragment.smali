.class public Lcom/google/android/finsky/activities/AntennaFragment;
.super Lcom/google/android/finsky/activities/DetailsDataBasedFragment;
.source "AntennaFragment.java"


# instance fields
.field private final mBodyOfWorkViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

.field private final mDefaultDescriptionLines:I

.field private final mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

.field private final mMaxRelatedItems:I

.field private final mMaxRelatedItemsPerRow:I

.field private final mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

.field private final mSummaryPlusOneViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;

.field private final mUseWideHeaderImage:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;-><init>()V

    .line 34
    new-instance v1, Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    .line 37
    new-instance v1, Lcom/google/android/finsky/activities/SongListViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/SongListViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    .line 40
    new-instance v1, Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mBodyOfWorkViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    .line 43
    new-instance v1, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mSummaryPlusOneViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;

    .line 68
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 69
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0c0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mMaxRelatedItemsPerRow:I

    .line 70
    const v1, 0x7f0c000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mMaxRelatedItems:I

    .line 71
    const v1, 0x7f0c0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mDefaultDescriptionLines:I

    .line 72
    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mUseWideHeaderImage:Z

    .line 73
    return-void
.end method

.method public static newInstance(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/AntennaFragment;
    .registers 6
    .parameter "document"
    .parameter "url"
    .parameter "cookie"
    .parameter "referrer"

    .prologue
    .line 59
    new-instance v0, Lcom/google/android/finsky/activities/AntennaFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/AntennaFragment;-><init>()V

    .line 60
    .local v0, fragment:Lcom/google/android/finsky/activities/AntennaFragment;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/activities/AntennaFragment;->setDfeTocAndUrl(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0, p0}, Lcom/google/android/finsky/activities/AntennaFragment;->setInitialDocument(Lcom/google/android/finsky/api/model/Document;)V

    .line 62
    const-string v1, "finsky.DetailsDataBasedFragment.cookie"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/finsky/activities/AntennaFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v1, "finsk.DetailsDatabasedFragment.referrer"

    invoke-virtual {v0, v1, p3}, Lcom/google/android/finsky/activities/AntennaFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-object v0
.end method


# virtual methods
.method protected getLayoutRes()I
    .registers 2

    .prologue
    .line 87
    const v0, 0x7f040066

    return v0
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AntennaFragment;->recordState()V

    .line 185
    iget-object v0, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->onDestroyView()V

    .line 186
    iget-object v0, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/SongListViewBinder;->onDestroyView()V

    .line 187
    iget-object v0, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mBodyOfWorkViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->onDestroyView()V

    .line 188
    iget-object v0, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mSummaryPlusOneViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->onDestroyView()V

    .line 190
    invoke-super {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->onDestroyView()V

    .line 191
    return-void
.end method

.method protected onInitViewBinders()V
    .registers 7

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget v4, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mDefaultDescriptionLines:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;I)V

    .line 79
    iget-object v0, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/SongListViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 80
    iget-object v0, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mBodyOfWorkViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AntennaFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 81
    iget-object v0, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mSummaryPlusOneViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AntennaFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "finsky.DetailsDataBasedFragment.cookie"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public rebindActionBar()V
    .registers 4

    .prologue
    .line 170
    iget-object v1, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateBreadcrumb(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AntennaFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 172
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AntennaFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    .line 173
    .local v0, doc:Lcom/google/android/finsky/api/model/Document;
    if-eqz v0, :cond_1b

    .line 174
    iget-object v1, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateCurrentBackendId(I)V

    .line 177
    .end local v0           #doc:Lcom/google/android/finsky/api/model/Document;
    :cond_1b
    return-void
.end method

.method protected rebindViews(Landroid/os/Bundle;)V
    .registers 32
    .parameter "savedInstanceState"

    .prologue
    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/AntennaFragment;->rebindActionBar()V

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/AntennaFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v4

    .line 94
    .local v4, doc:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getAntennaInfo()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;

    move-result-object v22

    .line 96
    .local v22, antennaInfo:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/AntennaFragment;->getView()Landroid/view/View;

    move-result-object v24

    .line 98
    .local v24, fragmentView:Landroid/view/View;
    const v2, 0x7f08010d

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Lcom/google/android/finsky/layout/HeroGraphicView;

    .line 100
    .local v25, headerHero:Lcom/google/android/finsky/layout/HeroGraphicView;
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/finsky/layout/HeroGraphicView;->hideAccessibilityOverlay()V

    .line 101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/AntennaFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/finsky/activities/AntennaFragment;->mUseWideHeaderImage:Z

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v4, v5, v7, v9}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getPageHeaderBannerUrlFromDocument(Lcom/google/android/finsky/api/model/Document;ZII)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v4, v5, v7}, Lcom/google/android/finsky/layout/HeroGraphicView;->load(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Z)V

    .line 105
    const v2, 0x7f08010e

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/google/android/finsky/layout/EditorialPageHeader;

    .line 107
    .local v21, antennaHeader:Lcom/google/android/finsky/layout/EditorialPageHeader;
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getSeriesTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getSeriesSubtitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getColorThemeArgb()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v5, v7}, Lcom/google/android/finsky/layout/EditorialPageHeader;->showSeriesInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/finsky/activities/AntennaFragment;->mUseWideHeaderImage:Z

    if-eqz v2, :cond_6f

    .line 110
    const v2, 0x7f08010a

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .line 111
    .local v23, bottomStripWide:Landroid/view/View;
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getColorThemeArgb()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    .line 112
    .local v19, antennaColor:I
    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 115
    .end local v19           #antennaColor:I
    .end local v23           #bottomStripWide:Landroid/view/View;
    :cond_6f
    const v2, 0x7f08010c

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/google/android/finsky/layout/DescriptionEditorialHeader;

    .line 117
    .local v20, antennaEpisodeHeader:Lcom/google/android/finsky/layout/DescriptionEditorialHeader;
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getEpisodeTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getEpisodeSubtitle()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v5}, Lcom/google/android/finsky/layout/DescriptionEditorialHeader;->showEpisodeInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const v2, 0x7f080091

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 122
    .local v3, descriptionPanel:Landroid/view/View;
    if-eqz v3, :cond_ab

    .line 123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/AntennaFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    const/4 v5, -0x1

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDescription()Ljava/lang/CharSequence;

    move-result-object v6

    move-object/from16 v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;ILjava/lang/CharSequence;Landroid/os/Bundle;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/AntennaFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->hideHeader()V

    .line 128
    :cond_ab
    const v2, 0x7f08010b

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Lcom/google/android/finsky/layout/HeroGraphicView;

    .line 130
    .local v28, videoHero:Lcom/google/android/finsky/layout/HeroGraphicView;
    const/4 v2, 0x3

    invoke-virtual {v4, v2}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v29

    .line 131
    .local v29, videoLinks:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Doc$Image;>;"
    if-eqz v29, :cond_190

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_190

    const/4 v2, 0x0

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_190

    .line 133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/AntennaFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v7}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getPreviewUrlFromDocument(Lcom/google/android/finsky/api/model/Document;II)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v4, v5, v7}, Lcom/google/android/finsky/layout/HeroGraphicView;->load(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Z)V

    .line 135
    const/4 v2, 0x0

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/HeroGraphicView;->showPlayIcon(Ljava/lang/String;)V

    .line 136
    const v2, 0x7f07016a

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/HeroGraphicView;->setContentDescription(I)V

    .line 137
    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/HeroGraphicView;->setVisibility(I)V

    .line 142
    :goto_106
    const v2, 0x7f080093

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/layout/SongList;

    .line 143
    .local v6, songList:Lcom/google/android/finsky/layout/SongList;
    if-eqz v6, :cond_13e

    .line 144
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getSectionTracks()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v26

    .line 145
    .local v26, sectionTracks:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/AntennaFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/AntennaFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v9, 0x7f070239

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v26 .. v26}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getHeader()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v26 .. v26}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getListUrl()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const v12, 0x7fffffff

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/AntennaFragment;->hasDetailsDataLoaded()Z

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/AntennaFragment;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v14

    invoke-virtual/range {v5 .. v14}, Lcom/google/android/finsky/activities/SongListViewBinder;->bind(Lcom/google/android/finsky/layout/SongList;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZLcom/google/android/finsky/library/Libraries;)V

    .line 152
    .end local v26           #sectionTracks:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    :cond_13e
    const v2, 0x7f080095

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 153
    .local v8, bodyOfWorkPanel:Landroid/view/View;
    if-eqz v8, :cond_175

    .line 154
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getSectionAlbums()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v18

    .line 155
    .local v18, albumMetadata:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/finsky/activities/AntennaFragment;->mBodyOfWorkViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getHeader()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getListUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getBrowseUrl()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/finsky/activities/AntennaFragment;->mMaxRelatedItemsPerRow:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/activities/AntennaFragment;->mMaxRelatedItems:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/AntennaFragment;->mUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object v9, v4

    invoke-virtual/range {v7 .. v17}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 161
    .end local v18           #albumMetadata:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    :cond_175
    const v2, 0x7f0800ee

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    .line 162
    .local v27, summaryPlusOnePanel:Landroid/view/View;
    if-eqz v27, :cond_18f

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/AntennaFragment;->mSummaryPlusOneViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/AntennaFragment;->hasDetailsDataLoaded()Z

    move-result v5

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v2, v0, v4, v5, v1}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;ZLandroid/os/Bundle;)V

    .line 166
    :cond_18f
    return-void

    .line 139
    .end local v6           #songList:Lcom/google/android/finsky/layout/SongList;
    .end local v8           #bodyOfWorkPanel:Landroid/view/View;
    .end local v27           #summaryPlusOnePanel:Landroid/view/View;
    :cond_190
    const/16 v2, 0x8

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/HeroGraphicView;->setVisibility(I)V

    goto/16 :goto_106
.end method

.method protected recordState(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AntennaFragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 196
    .local v2, view:Landroid/view/View;
    if-nez v2, :cond_7

    .line 209
    :cond_6
    :goto_6
    return-void

    .line 200
    :cond_7
    const v3, 0x7f080091

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 201
    .local v0, descriptionPanel:Landroid/view/View;
    if-eqz v0, :cond_15

    .line 202
    iget-object v3, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-virtual {v3, p1}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->saveInstanceState(Landroid/os/Bundle;)V

    .line 205
    :cond_15
    const v3, 0x7f0800ee

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 206
    .local v1, summaryPlusOnePanel:Landroid/view/View;
    if-eqz v1, :cond_6

    .line 207
    iget-object v3, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mSummaryPlusOneViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;

    invoke-virtual {v3, p1}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->saveInstanceState(Landroid/os/Bundle;)V

    goto :goto_6
.end method
