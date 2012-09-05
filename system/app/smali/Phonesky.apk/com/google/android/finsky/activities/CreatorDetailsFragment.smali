.class public Lcom/google/android/finsky/activities/CreatorDetailsFragment;
.super Lcom/google/android/finsky/activities/DetailsDataBasedFragment;
.source "CreatorDetailsFragment.java"


# instance fields
.field private final mAlbumsViewBinder:Lcom/google/android/finsky/activities/AlbumPackViewBinder;

.field private final mDefaultDescriptionLines:I

.field private final mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

.field private final mFlagContentViewBinder:Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder;

.field private final mHeroImageHeight:I

.field private final mLinksViewBinder:Lcom/google/android/finsky/activities/DetailsLinksViewBinder;

.field private final mMaxRelatedItems:I

.field private final mMaxRelatedItemsPerRow:I

.field private final mRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

.field private final mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

.field private final mSummaryPlusOneViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;-><init>()V

    .line 28
    new-instance v1, Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    .line 31
    new-instance v1, Lcom/google/android/finsky/activities/SongListViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/SongListViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    .line 34
    new-instance v1, Lcom/google/android/finsky/activities/AlbumPackViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/AlbumPackViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mAlbumsViewBinder:Lcom/google/android/finsky/activities/AlbumPackViewBinder;

    .line 37
    new-instance v1, Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    .line 40
    new-instance v1, Lcom/google/android/finsky/activities/DetailsLinksViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsLinksViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mLinksViewBinder:Lcom/google/android/finsky/activities/DetailsLinksViewBinder;

    .line 43
    new-instance v1, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSummaryPlusOneViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;

    .line 47
    new-instance v1, Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mFlagContentViewBinder:Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder;

    .line 70
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 71
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0c0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mMaxRelatedItemsPerRow:I

    .line 72
    const v1, 0x7f0c0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mMaxRelatedItems:I

    .line 73
    const v1, 0x7f0c0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDefaultDescriptionLines:I

    .line 74
    const v1, 0x7f0c0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mHeroImageHeight:I

    .line 75
    return-void
.end method

.method public static newInstance(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/CreatorDetailsFragment;
    .registers 6
    .parameter "document"
    .parameter "url"
    .parameter "cookie"
    .parameter "externalReferrer"

    .prologue
    .line 61
    new-instance v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;-><init>()V

    .line 62
    .local v0, fragment:Lcom/google/android/finsky/activities/CreatorDetailsFragment;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->setDfeTocAndUrl(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0, p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->setInitialDocument(Lcom/google/android/finsky/api/model/Document;)V

    .line 64
    const-string v1, "finsky.DetailsDataBasedFragment.cookie"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v1, "finsky.CreatorDetailsFragment.referrerUrl"

    invoke-virtual {v0, v1, p3}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-object v0
.end method


# virtual methods
.method protected getLayoutRes()I
    .registers 2

    .prologue
    .line 92
    const v0, 0x7f04002a

    return v0
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->recordState()V

    .line 233
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->onDestroyView()V

    .line 234
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/SongListViewBinder;->onDestroyView()V

    .line 235
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mAlbumsViewBinder:Lcom/google/android/finsky/activities/AlbumPackViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/AlbumPackViewBinder;->onDestroyView()V

    .line 236
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->onDestroyView()V

    .line 237
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mLinksViewBinder:Lcom/google/android/finsky/activities/DetailsLinksViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsLinksViewBinder;->onDestroyView()V

    .line 238
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSummaryPlusOneViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->onDestroyView()V

    .line 239
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mFlagContentViewBinder:Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder;->onDestroyView()V

    .line 241
    invoke-super {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->onDestroyView()V

    .line 242
    return-void
.end method

.method protected onInitViewBinders()V
    .registers 7

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget v4, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDefaultDescriptionLines:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;I)V

    .line 81
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/SongListViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 82
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mAlbumsViewBinder:Lcom/google/android/finsky/activities/AlbumPackViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/AlbumPackViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 83
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 84
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mLinksViewBinder:Lcom/google/android/finsky/activities/DetailsLinksViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/DetailsLinksViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 85
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

    .line 87
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mFlagContentViewBinder:Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 88
    return-void
.end method

.method public rebindActionBar()V
    .registers 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateBreadcrumb(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 223
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateCurrentBackendId(I)V

    .line 225
    :cond_19
    return-void
.end method

.method protected rebindViews(Landroid/os/Bundle;)V
    .registers 37
    .parameter "savedInstanceState"

    .prologue
    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->rebindActionBar()V

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v4

    .line 99
    .local v4, doc:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v20

    .line 100
    .local v20, backend:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mContext:Landroid/content/Context;

    move/from16 v0, v20

    invoke-static {v2, v0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v21

    .line 102
    .local v21, backendHintColor:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getView()Landroid/view/View;

    move-result-object v25

    .line 104
    .local v25, fragmentView:Landroid/view/View;
    const v2, 0x7f0800a6

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    .line 105
    .local v34, topBanner:Landroid/view/View;
    if-eqz v34, :cond_51

    .line 106
    move-object/from16 v0, v34

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 107
    const v2, 0x7f0800a8

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    .line 108
    .local v31, pinstripeOverlay:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f020092

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    check-cast v22, Landroid/graphics/drawable/BitmapDrawable;

    .line 110
    .local v22, backgroundTile:Landroid/graphics/drawable/BitmapDrawable;
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v5}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 111
    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    .end local v22           #backgroundTile:Landroid/graphics/drawable/BitmapDrawable;
    .end local v31           #pinstripeOverlay:Landroid/view/View;
    :cond_51
    const v2, 0x7f08008f

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    .line 115
    .local v27, heroSeparator:Landroid/view/View;
    if-eqz v27, :cond_63

    .line 116
    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 119
    :cond_63
    const v2, 0x7f080093

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 120
    .local v23, creatorTitleView:Landroid/widget/TextView;
    if-eqz v23, :cond_7d

    .line 121
    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getArtistDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :cond_7d
    const v2, 0x7f08008e

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/google/android/finsky/layout/HeroGraphicView;

    .line 126
    .local v26, heroGraphicImageView:Lcom/google/android/finsky/layout/HeroGraphicView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mHeroImageHeight:I

    invoke-static {v4, v5, v7}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getIconUrlFromDocument(Lcom/google/android/finsky/api/model/Document;II)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v5, v7}, Lcom/google/android/finsky/layout/HeroGraphicView;->load(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;Z)V

    .line 129
    const v2, 0x7f080021

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    .line 130
    .local v28, leadingStrip:Landroid/view/View;
    if-eqz v28, :cond_ad

    .line 131
    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 136
    :cond_ad
    const v2, 0x7f080094

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 137
    .local v3, descriptionPanel:Landroid/view/View;
    if-eqz v3, :cond_d3

    .line 138
    const v2, 0x7f02003d

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    const/4 v5, -0x1

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDescription()Ljava/lang/CharSequence;

    move-result-object v6

    move-object/from16 v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;ILjava/lang/CharSequence;Landroid/os/Bundle;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->hideHeader()V

    .line 144
    :cond_d3
    const v2, 0x7f080096

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/layout/SongList;

    .line 145
    .local v6, songList:Lcom/google/android/finsky/layout/SongList;
    if-eqz v6, :cond_107

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v2

    if-eqz v2, :cond_107

    .line 146
    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getCoreContentListUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1fc

    .line 147
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    const/4 v7, 0x0

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getCoreContentHeader()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getCoreContentListUrl()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v13

    invoke-virtual/range {v5 .. v13}, Lcom/google/android/finsky/activities/SongListViewBinder;->bind(Lcom/google/android/finsky/layout/SongList;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)V

    .line 159
    :cond_107
    :goto_107
    const v2, 0x7f080097

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 160
    .local v8, bodyOfWorkPanel:Landroid/view/View;
    if-eqz v8, :cond_141

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v2

    if-eqz v2, :cond_215

    .line 162
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    .line 163
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mAlbumsViewBinder:Lcom/google/android/finsky/activities/AlbumPackViewBinder;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getBodyOfWorkHeader()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getBodyOfWorkListUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getBodyOfWorkBrowseUrl()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mMaxRelatedItemsPerRow:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mMaxRelatedItems:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object v9, v4

    invoke-virtual/range {v7 .. v17}, Lcom/google/android/finsky/activities/AlbumPackViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_141
    :goto_141
    const v2, 0x7f080092

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 173
    .local v10, relatedPanel:Landroid/view/View;
    if-eqz v10, :cond_17f

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v2

    if-eqz v2, :cond_21c

    .line 175
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/view/View;->setVisibility(I)V

    .line 176
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getRelatedHeader()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getRelatedListUrl()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getRelatedBrowseUrl()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mMaxRelatedItemsPerRow:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mMaxRelatedItems:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object v11, v4

    invoke-virtual/range {v9 .. v19}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_17f
    :goto_17f
    const v2, 0x7f080091

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    .line 186
    .local v29, linksPanel:Landroid/view/View;
    if-eqz v29, :cond_193

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mLinksViewBinder:Lcom/google/android/finsky/activities/DetailsLinksViewBinder;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0, v4}, Lcom/google/android/finsky/activities/DetailsLinksViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;)V

    .line 191
    :cond_193
    const v2, 0x7f080090

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    .line 192
    .local v33, summaryPlusOnePanel:Landroid/view/View;
    if-eqz v33, :cond_1ab

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSummaryPlusOneViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v5

    move-object/from16 v0, v33

    invoke-virtual {v2, v0, v4, v5}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Z)V

    .line 196
    :cond_1ab
    const v2, 0x7f080098

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    .line 197
    .local v24, flagContentPanel:Landroid/view/View;
    if-eqz v24, :cond_1c3

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mFlagContentViewBinder:Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v5

    move-object/from16 v0, v24

    invoke-virtual {v2, v0, v4, v5}, Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Z)V

    .line 201
    :cond_1c3
    const v2, 0x7f080095

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Lcom/google/android/finsky/layout/GooglePlusShareSection;

    .line 203
    .local v32, shareSection:Lcom/google/android/finsky/layout/GooglePlusShareSection;
    if-eqz v32, :cond_1e3

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v2

    if-eqz v2, :cond_223

    .line 205
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->setVisibility(I)V

    .line 206
    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v4, v1}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->bind(Lcom/google/android/finsky/api/model/Document;Landroid/support/v4/app/Fragment;)V

    .line 213
    :cond_1e3
    :goto_1e3
    const v2, 0x7f0800c7

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    .line 214
    .local v30, loadingSection:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v2

    if-eqz v2, :cond_1fb

    if-eqz v30, :cond_1fb

    .line 215
    const/16 v2, 0x8

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 217
    :cond_1fb
    return-void

    .line 151
    .end local v8           #bodyOfWorkPanel:Landroid/view/View;
    .end local v10           #relatedPanel:Landroid/view/View;
    .end local v24           #flagContentPanel:Landroid/view/View;
    .end local v29           #linksPanel:Landroid/view/View;
    .end local v30           #loadingSection:Landroid/view/View;
    .end local v32           #shareSection:Lcom/google/android/finsky/layout/GooglePlusShareSection;
    .end local v33           #summaryPlusOnePanel:Landroid/view/View;
    :cond_1fc
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    const/4 v7, 0x0

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getRelatedDocTypeHeader()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getRelatedDocTypeListUrl()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v13

    invoke-virtual/range {v5 .. v13}, Lcom/google/android/finsky/activities/SongListViewBinder;->bind(Lcom/google/android/finsky/layout/SongList;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)V

    goto/16 :goto_107

    .line 167
    .restart local v8       #bodyOfWorkPanel:Landroid/view/View;
    :cond_215
    const/16 v2, 0x8

    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_141

    .line 180
    .restart local v10       #relatedPanel:Landroid/view/View;
    :cond_21c
    const/16 v2, 0x8

    invoke-virtual {v10, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_17f

    .line 208
    .restart local v24       #flagContentPanel:Landroid/view/View;
    .restart local v29       #linksPanel:Landroid/view/View;
    .restart local v32       #shareSection:Lcom/google/android/finsky/layout/GooglePlusShareSection;
    .restart local v33       #summaryPlusOnePanel:Landroid/view/View;
    :cond_223
    const/16 v2, 0x8

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->setVisibility(I)V

    goto :goto_1e3
.end method

.method protected recordState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 247
    .local v1, view:Landroid/view/View;
    if-nez v1, :cond_7

    .line 255
    :cond_6
    :goto_6
    return-void

    .line 251
    :cond_7
    const v2, 0x7f0800d7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 252
    .local v0, descriptionPanel:Landroid/view/View;
    if-eqz v0, :cond_6

    .line 253
    iget-object v2, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-virtual {v2, p1}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->saveInstanceState(Landroid/os/Bundle;)V

    goto :goto_6
.end method
