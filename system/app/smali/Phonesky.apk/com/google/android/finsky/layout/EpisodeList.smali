.class public Lcom/google/android/finsky/layout/EpisodeList;
.super Landroid/widget/LinearLayout;
.source "EpisodeList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;
.implements Lcom/google/android/finsky/layout/EpisodeSnippet$OnCollapsedStateChanged;
.implements Lcom/google/android/finsky/library/Libraries$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/EpisodeList$SeasonListAdapter;
    }
.end annotation


# instance fields
.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mBuyButton:Landroid/widget/Button;

.field private final mCorpusColor:I

.field private mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mEpisodeIdFromBundle:Ljava/lang/String;

.field private final mEpisodeSnippets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/layout/EpisodeSnippet;",
            ">;"
        }
    .end annotation
.end field

.field private mEpisodesContainer:Landroid/widget/LinearLayout;

.field private mEpisodesInLibraryFromFirstLoad:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLibraries:Lcom/google/android/finsky/library/Libraries;

.field private mLoadingOverlay:Landroid/view/View;

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private mOldSeason:Lcom/google/android/finsky/api/model/Document;

.field private mPageFragment:Lcom/google/android/finsky/fragments/PageFragment;

.field private mReferrerListCookie:Ljava/lang/String;

.field private mReferrerUrl:Ljava/lang/String;

.field private mSeasonIdFromBundle:Ljava/lang/String;

.field private mSeasonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation
.end field

.field private mSeasonSpinner:Landroid/widget/Spinner;

.field private mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

.field private mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

.field private mSelectedSeasonRequestUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodeSnippets:Ljava/util/Map;

    .line 118
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mCorpusColor:I

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/EpisodeList;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mCorpusColor:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/EpisodeList;)Lcom/google/android/finsky/api/model/Document;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/EpisodeList;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/layout/EpisodeList;)Lcom/google/android/finsky/fragments/PageFragment;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mPageFragment:Lcom/google/android/finsky/fragments/PageFragment;

    return-object v0
.end method

.method private hideUi()V
    .registers 3

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeList;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 283
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_c

    .line 284
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 288
    :goto_b
    return-void

    .line 286
    :cond_c
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/EpisodeList;->setVisibility(I)V

    goto :goto_b
.end method

.method private setDefaultSelectionState(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "selectedSeasonId"
    .parameter "selectedEpisodeId"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonIdFromBundle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 201
    iput-object p1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonIdFromBundle:Ljava/lang/String;

    .line 203
    :cond_a
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodeIdFromBundle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 204
    iput-object p2, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodeIdFromBundle:Ljava/lang/String;

    .line 206
    :cond_14
    return-void
.end method

.method private setEpisodeList(Lcom/google/android/finsky/api/model/Document;Ljava/util/List;)V
    .registers 20
    .parameter "selectedSeason"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/api/model/Document;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p2, episodeList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodeSnippets:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_18

    .line 216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodeSnippets:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 217
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodesContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 220
    :cond_18
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    .line 223
    const/4 v15, 0x0

    .line 224
    .local v15, selectedSnippet:Lcom/google/android/finsky/layout/EpisodeSnippet;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_23
    :goto_23
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/api/model/Document;

    .line 225
    .local v4, episode:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/EpisodeList;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v5, 0x7f04006c

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodesContainer:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v3, v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/EpisodeSnippet;

    .line 228
    .local v2, snippet:Lcom/google/android/finsky/layout/EpisodeSnippet;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v14

    .line 230
    .local v14, library:Lcom/google/android/finsky/library/Library;
    invoke-static {v4, v14}, Lcom/google/android/finsky/utils/LibraryUtils;->isOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;)Z

    move-result v13

    .line 231
    .local v13, isOwned:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodesInLibraryFromFirstLoad:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/Set;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16

    .line 232
    .local v16, wasOwned:Z
    if-eqz v13, :cond_a6

    if-nez v16, :cond_a6

    const/4 v7, 0x1

    .line 234
    .local v7, isNewPurchase:Z
    :goto_66
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/layout/EpisodeList;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/layout/EpisodeList;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/finsky/layout/EpisodeList;->mPageFragment:Lcom/google/android/finsky/fragments/PageFragment;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/finsky/layout/EpisodeList;->mReferrerUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/finsky/layout/EpisodeList;->mReferrerListCookie:Ljava/lang/String;

    move-object/from16 v11, p0

    invoke-virtual/range {v2 .. v11}, Lcom/google/android/finsky/layout/EpisodeSnippet;->setEpisodeDetails(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;ZLcom/google/android/finsky/fragments/PageFragment;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/layout/EpisodeSnippet$OnCollapsedStateChanged;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodesContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodeSnippets:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodeIdFromBundle:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 239
    move-object v15, v2

    goto/16 :goto_23

    .line 232
    .end local v7           #isNewPurchase:Z
    :cond_a6
    const/4 v7, 0x0

    goto :goto_66

    .line 242
    .end local v2           #snippet:Lcom/google/android/finsky/layout/EpisodeSnippet;
    .end local v4           #episode:Lcom/google/android/finsky/api/model/Document;
    .end local v13           #isOwned:Z
    .end local v14           #library:Lcom/google/android/finsky/library/Library;
    .end local v16           #wasOwned:Z
    :cond_a8
    if-eqz v15, :cond_ad

    .line 243
    invoke-virtual {v15}, Lcom/google/android/finsky/layout/EpisodeSnippet;->expand()V

    .line 245
    :cond_ad
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->isInProgressSeason()Z

    move-result v3

    if-eqz v3, :cond_d2

    .line 247
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodesContainer:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/EpisodeList;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04008a

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodesContainer:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 254
    :cond_d2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodeIdFromBundle:Ljava/lang/String;

    .line 255
    return-void
.end method

.method private shouldEnableLoadingOverlay(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 492
    if-eqz p1, :cond_13

    .line 493
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mLoadingOverlay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mLoadingOverlay:Landroid/view/View;

    new-instance v1, Lcom/google/android/finsky/layout/EpisodeList$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/EpisodeList$2;-><init>(Lcom/google/android/finsky/layout/EpisodeList;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    :goto_12
    return-void

    .line 500
    :cond_13
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mLoadingOverlay:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 502
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mLoadingOverlay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_12
.end method

.method private updateSeasonBuyButton()V
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 412
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v0}, Lcom/google/android/finsky/api/DfeApi;->getApiContext()Lcom/google/android/finsky/api/DfeApiContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeApiContext;->getExperiments()Lcom/google/android/finsky/experiments/Experiments;

    move-result-object v0

    const-string v1, "cl:billing.show_tv_season_price_in_button"

    invoke-interface {v0, v1}, Lcom/google/android/finsky/experiments/Experiments;->isEnabled(Ljava/lang/String;)Z

    move-result v8

    .line 414
    .local v8, showPriceInButton:Z
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mBuyButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    if-eqz v8, :cond_2d

    const/4 v6, -0x1

    :goto_1c
    const/4 v7, 0x0

    move-object v3, v2

    move-object v4, v2

    invoke-static/range {v0 .. v7}, Lcom/google/android/finsky/layout/EpisodeSnippet;->updateBuyButtonState(Landroid/content/res/Resources;Landroid/widget/Button;Landroid/widget/TextView;Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;IZ)V

    .line 416
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mBuyButton:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/finsky/layout/EpisodeList$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/EpisodeList$1;-><init>(Lcom/google/android/finsky/layout/EpisodeList;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    return-void

    .line 414
    :cond_2d
    const v6, 0x7f070237

    goto :goto_1c
.end method


# virtual methods
.method public getSelectedEpisodeId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 268
    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodeSnippets:Ljava/util/Map;

    if-eqz v2, :cond_29

    .line 269
    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodeSnippets:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 270
    .local v1, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodeSnippets:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/EpisodeSnippet;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/EpisodeSnippet;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 275
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/String;
    :goto_28
    return-object v1

    :cond_29
    const/4 v1, 0x0

    goto :goto_28
.end method

.method public getSelectedSeasonId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onAllLibrariesLoaded()V
    .registers 1

    .prologue
    .line 430
    return-void
.end method

.method public onCollapsedStateChanged(Lcom/google/android/finsky/layout/EpisodeSnippet;Z)V
    .registers 6
    .parameter "snippet"
    .parameter "collapsed"

    .prologue
    .line 343
    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodeSnippets:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/EpisodeSnippet;

    .line 344
    .local v0, current:Lcom/google/android/finsky/layout/EpisodeSnippet;
    if-eq v0, p1, :cond_a

    .line 345
    invoke-virtual {v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->collapseWithoutNotifyingListeners()V

    goto :goto_a

    .line 348
    .end local v0           #current:Lcom/google/android/finsky/layout/EpisodeSnippet;
    :cond_1c
    return-void
.end method

.method public onDataChanged()V
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 458
    iget-object v6, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/DfeList;->getBucketCount()I

    move-result v6

    if-eqz v6, :cond_74

    iget-object v6, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/DfeList;->getBucketList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Bucket;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v4

    .line 460
    .local v4, listCookie:Ljava/lang/String;
    :goto_19
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/finsky/layout/EpisodeList;->mReferrerUrl:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/finsky/layout/EpisodeList;->mReferrerListCookie:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequestUrl:Ljava/lang/String;

    invoke-interface {v6, v7, v8, v9, v4}, Lcom/google/android/finsky/analytics/Analytics;->logListViewOnPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-direct {p0, v2}, Lcom/google/android/finsky/layout/EpisodeList;->shouldEnableLoadingOverlay(Z)V

    .line 463
    iget-object v6, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodesInLibraryFromFirstLoad:Landroid/util/Pair;

    if-eqz v6, :cond_43

    iget-object v6, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodesInLibraryFromFirstLoad:Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_44

    :cond_43
    const/4 v2, 0x1

    .line 465
    .local v2, firstTimeThroughForSeasonId:Z
    :cond_44
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v5

    .line 468
    .local v5, ownedDocumentsFromLibrary:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 469
    .local v1, episodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_4d
    iget-object v6, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/DfeList;->getCount()I

    move-result v6

    if-ge v3, v6, :cond_76

    .line 470
    iget-object v6, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v6, v3}, Lcom/google/android/finsky/api/model/DfeList;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    .line 471
    .local v0, episode:Lcom/google/android/finsky/api/model/Document;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    if-eqz v2, :cond_71

    iget-object v6, p0, Lcom/google/android/finsky/layout/EpisodeList;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-static {v0, v6}, Lcom/google/android/finsky/utils/LibraryUtils;->isOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;)Z

    move-result v6

    if-eqz v6, :cond_71

    .line 473
    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 469
    :cond_71
    add-int/lit8 v3, v3, 0x1

    goto :goto_4d

    .line 458
    .end local v0           #episode:Lcom/google/android/finsky/api/model/Document;
    .end local v1           #episodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    .end local v2           #firstTimeThroughForSeasonId:Z
    .end local v3           #i:I
    .end local v4           #listCookie:Ljava/lang/String;
    .end local v5           #ownedDocumentsFromLibrary:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_74
    const/4 v4, 0x0

    goto :goto_19

    .line 480
    .restart local v1       #episodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    .restart local v2       #firstTimeThroughForSeasonId:Z
    .restart local v3       #i:I
    .restart local v4       #listCookie:Ljava/lang/String;
    .restart local v5       #ownedDocumentsFromLibrary:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_76
    if-eqz v2, :cond_85

    .line 481
    new-instance v6, Landroid/util/Pair;

    iget-object v7, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodesInLibraryFromFirstLoad:Landroid/util/Pair;

    .line 484
    :cond_85
    iget-object v6, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    invoke-direct {p0, v6, v1}, Lcom/google/android/finsky/layout/EpisodeList;->setEpisodeList(Lcom/google/android/finsky/api/model/Document;Ljava/util/List;)V

    .line 485
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    if-eqz v0, :cond_9

    .line 131
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/library/Libraries;->removeListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    .line 133
    :cond_9
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_17

    .line 134
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 135
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 137
    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

    .line 138
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 139
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 6
    .parameter "error"

    .prologue
    const/4 v3, 0x0

    .line 443
    invoke-direct {p0, v3}, Lcom/google/android/finsky/layout/EpisodeList;->shouldEnableLoadingOverlay(Z)V

    .line 445
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mOldSeason:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mOldSeason:Lcom/google/android/finsky/api/model/Document;

    iget-object v1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    if-eq v0, v1, :cond_1f

    .line 448
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mOldSeason:Lcom/google/android/finsky/api/model/Document;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    .line 449
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonList:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeList;->mOldSeason:Lcom/google/android/finsky/api/model/Document;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 452
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeList;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeList;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 454
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 123
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 124
    const v0, 0x7f080116

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EpisodeList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodesContainer:Landroid/widget/LinearLayout;

    .line 125
    const v0, 0x7f080117

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EpisodeList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mLoadingOverlay:Landroid/view/View;

    .line 126
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 389
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mOldSeason:Lcom/google/android/finsky/api/model/Document;

    .line 390
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    .line 392
    invoke-direct {p0}, Lcom/google/android/finsky/layout/EpisodeList;->updateSeasonBuyButton()V

    .line 394
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/EpisodeList;->shouldEnableLoadingOverlay(Z)V

    .line 397
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_25

    .line 398
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 399
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 403
    :cond_25
    new-instance v0, Lcom/google/android/finsky/api/model/DfeList;

    iget-object v1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getCoreContentListUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

    .line 405
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 406
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 407
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    .line 408
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getCoreContentListUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequestUrl:Ljava/lang/String;

    .line 409
    return-void
.end method

.method public onLibraryContentsChanged(Lcom/google/android/finsky/library/AccountLibrary;)V
    .registers 3
    .parameter "library"

    .prologue
    .line 434
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_a

    .line 435
    invoke-direct {p0}, Lcom/google/android/finsky/layout/EpisodeList;->updateSeasonBuyButton()V

    .line 436
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeList;->onDataChanged()V

    .line 438
    :cond_a
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 426
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 372
    const-string v1, "SeasonListViewBinder.SelectedSeasonId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 373
    const-string v1, "SeasonListViewBinder.SelectedSeasonId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonIdFromBundle:Ljava/lang/String;

    .line 375
    :cond_14
    const-string v1, "SeasonListViewBinder.SelectedEpisodeId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 376
    const-string v1, "SeasonListViewBinder.SelectedEpisodeId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodeIdFromBundle:Ljava/lang/String;

    .line 378
    :cond_28
    const-string v1, "SeasonListViewBinder.OwnedEpisodes"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 379
    .local v0, ownedEpisodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_3e

    .line 380
    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonIdFromBundle:Ljava/lang/String;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodesInLibraryFromFirstLoad:Landroid/util/Pair;

    .line 383
    :cond_3e
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeList;->getSelectedSeasonId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 355
    const-string v1, "SeasonListViewBinder.SelectedSeasonId"

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeList;->getSelectedSeasonId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeList;->getSelectedEpisodeId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 358
    const-string v1, "SeasonListViewBinder.SelectedEpisodeId"

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeList;->getSelectedEpisodeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_26
    iget-object v1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodesInLibraryFromFirstLoad:Landroid/util/Pair;

    if-eqz v1, :cond_40

    iget-object v1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodesInLibraryFromFirstLoad:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_40

    .line 362
    iget-object v1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodesInLibraryFromFirstLoad:Landroid/util/Pair;

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    .line 363
    .local v0, docs:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "SeasonListViewBinder.OwnedEpisodes"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 366
    .end local v0           #docs:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_40
    return-void
.end method

.method public setSeasonList(Lcom/google/android/finsky/fragments/PageFragment;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 19
    .parameter "parentFragment"
    .parameter "dfeApi"
    .parameter "libraries"
    .parameter "navigationManager"
    .parameter "bitmapLoader"
    .parameter "restoreBundle"
    .parameter
    .parameter "selectedSeasonId"
    .parameter "selectedEpisodeId"
    .parameter "referrerUrl"
    .parameter "referrerListCookie"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/fragments/PageFragment;",
            "Lcom/google/android/finsky/api/DfeApi;",
            "Lcom/google/android/finsky/library/Libraries;",
            "Lcom/google/android/finsky/navigationmanager/NavigationManager;",
            "Lcom/google/android/finsky/utils/BitmapLoader;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 150
    .local p7, seasonList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    if-eqz p7, :cond_8

    invoke-interface {p7}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 151
    :cond_8
    invoke-direct {p0}, Lcom/google/android/finsky/layout/EpisodeList;->hideUi()V

    .line 192
    :goto_b
    return-void

    .line 155
    :cond_c
    iput-object p7, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonList:Ljava/util/List;

    .line 156
    iput-object p3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    .line 157
    iput-object p1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mPageFragment:Lcom/google/android/finsky/fragments/PageFragment;

    .line 158
    iput-object p2, p0, Lcom/google/android/finsky/layout/EpisodeList;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 159
    iput-object p4, p0, Lcom/google/android/finsky/layout/EpisodeList;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 160
    iput-object p5, p0, Lcom/google/android/finsky/layout/EpisodeList;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 161
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mReferrerUrl:Ljava/lang/String;

    .line 162
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mReferrerListCookie:Ljava/lang/String;

    .line 164
    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v3, p0}, Lcom/google/android/finsky/library/Libraries;->removeListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    .line 165
    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v3, p0}, Lcom/google/android/finsky/library/Libraries;->addListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    .line 167
    move-object/from16 v0, p9

    invoke-direct {p0, p8, v0}, Lcom/google/android/finsky/layout/EpisodeList;->setDefaultSelectionState(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const v3, 0x7f080115

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/EpisodeList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonSpinner:Landroid/widget/Spinner;

    .line 170
    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonSpinner:Landroid/widget/Spinner;

    new-instance v4, Lcom/google/android/finsky/layout/EpisodeList$SeasonListAdapter;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeList;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonList:Ljava/util/List;

    invoke-direct {v4, p0, v5, v6}, Lcom/google/android/finsky/layout/EpisodeList$SeasonListAdapter;-><init>(Lcom/google/android/finsky/layout/EpisodeList;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 171
    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 174
    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/api/model/Document;

    iput-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    .line 175
    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonIdFromBundle:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_83

    .line 176
    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_68
    :goto_68
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_83

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/api/model/Document;

    .line 177
    .local v2, season:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonIdFromBundle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 178
    iput-object v2, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    goto :goto_68

    .line 183
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #season:Lcom/google/android/finsky/api/model/Document;
    :cond_83
    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonSpinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonList:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 184
    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a5

    .line 185
    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonSpinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 186
    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonSpinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    .line 190
    :cond_a5
    const v3, 0x7f0800aa

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/EpisodeList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mBuyButton:Landroid/widget/Button;

    .line 191
    invoke-direct {p0}, Lcom/google/android/finsky/layout/EpisodeList;->updateSeasonBuyButton()V

    goto/16 :goto_b
.end method
