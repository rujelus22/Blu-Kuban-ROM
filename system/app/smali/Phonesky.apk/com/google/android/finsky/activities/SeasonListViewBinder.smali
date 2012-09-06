.class public Lcom/google/android/finsky/activities/SeasonListViewBinder;
.super Lcom/google/android/finsky/fragments/DetailsViewBinder;
.source "SeasonListViewBinder.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# instance fields
.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mLibraries:Lcom/google/android/finsky/library/Libraries;

.field private mPageFragment:Lcom/google/android/finsky/fragments/PageFragment;

.field private mReferrerCookie:Ljava/lang/String;

.field private mReferrerUrl:Ljava/lang/String;

.field private mRestoreBundle:Landroid/os/Bundle;

.field private mSeasonListUrl:Ljava/lang/String;

.field private mSeasonsListRequest:Lcom/google/android/finsky/api/model/DfeList;

.field private mSelectedEpisodeId:Ljava/lang/String;

.field private mSelectedSeasonId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;-><init>()V

    return-void
.end method

.method private detachListeners()V
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSeasonsListRequest:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_e

    .line 160
    iget-object v0, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSeasonsListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 161
    iget-object v0, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSeasonsListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 163
    :cond_e
    return-void
.end method


# virtual methods
.method public bind(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/layout/EpisodeList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter "libraries"
    .parameter "view"
    .parameter "selectedSeasonId"
    .parameter "selectedEpisodeId"
    .parameter "title"
    .parameter "subtitle"
    .parameter "seasonsListUrl"
    .parameter "hasDetailsLoaded"
    .parameter "referrerUrl"
    .parameter "referrerCookie"

    .prologue
    const/4 v2, 0x0

    .line 91
    const/4 v0, 0x4

    invoke-super {p0, p2, p5, v0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->bind(Landroid/view/View;Ljava/lang/String;I)V

    .line 93
    if-nez p8, :cond_f

    .line 94
    iget-object v0, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    :goto_e
    return-void

    .line 98
    :cond_f
    iput-object p4, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSelectedEpisodeId:Ljava/lang/String;

    .line 99
    iput-object p3, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSelectedSeasonId:Ljava/lang/String;

    .line 100
    iput-object p7, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSeasonListUrl:Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 104
    invoke-direct {p0}, Lcom/google/android/finsky/activities/SeasonListViewBinder;->detachListeners()V

    .line 105
    new-instance v0, Lcom/google/android/finsky/api/model/DfeList;

    iget-object v1, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-direct {v0, v1, p7, v2}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSeasonsListRequest:Lcom/google/android/finsky/api/model/DfeList;

    .line 106
    iget-object v0, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSeasonsListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 107
    iget-object v0, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSeasonsListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 108
    iget-object v0, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSeasonsListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    .line 109
    iput-object p9, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mReferrerUrl:Ljava/lang/String;

    .line 110
    iput-object p10, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mReferrerCookie:Ljava/lang/String;

    goto :goto_e
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
    .registers 6
    .parameter "context"
    .parameter "api"
    .parameter "navManager"

    .prologue
    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this version of init is not supported by this binder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/fragments/PageFragment;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/library/Libraries;)V
    .registers 8
    .parameter "context"
    .parameter "api"
    .parameter "navManager"
    .parameter "pageFragment"
    .parameter "bitmapLoader"
    .parameter "libraries"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 66
    iput-object p3, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 67
    iget-object v0, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mInflater:Landroid/view/LayoutInflater;

    .line 68
    const v0, 0x7f0800a8

    iput v0, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mHeaderLayoutId:I

    .line 69
    iput-object p4, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mPageFragment:Lcom/google/android/finsky/fragments/PageFragment;

    .line 70
    iput-object p5, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 71
    iput-object p6, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    .line 72
    return-void
.end method

.method public onDataChanged()V
    .registers 18

    .prologue
    .line 115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSeasonsListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeList;->getBucketCount()I

    move-result v2

    if-eqz v2, :cond_5d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSeasonsListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeList;->getBucketList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Bucket;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v15

    .line 117
    .local v15, listCookie:Ljava/lang/String;
    :goto_1d
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mReferrerUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mReferrerCookie:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSeasonListUrl:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5, v15}, Lcom/google/android/finsky/analytics/Analytics;->logListViewOnPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 121
    .local v8, seasons:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v14

    .line 122
    .local v14, library:Lcom/google/android/finsky/library/Library;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_41
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSeasonsListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeList;->getCount()I

    move-result v2

    if-ge v13, v2, :cond_5f

    .line 123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSeasonsListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v2, v13}, Lcom/google/android/finsky/api/model/DfeList;->getItem(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/android/finsky/api/model/Document;

    .line 124
    .local v16, season:Lcom/google/android/finsky/api/model/Document;
    move-object/from16 v0, v16

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    add-int/lit8 v13, v13, 0x1

    goto :goto_41

    .line 115
    .end local v8           #seasons:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    .end local v13           #i:I
    .end local v14           #library:Lcom/google/android/finsky/library/Library;
    .end local v15           #listCookie:Ljava/lang/String;
    .end local v16           #season:Lcom/google/android/finsky/api/model/Document;
    :cond_5d
    const/4 v15, 0x0

    goto :goto_1d

    .line 127
    .restart local v8       #seasons:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    .restart local v13       #i:I
    .restart local v14       #library:Lcom/google/android/finsky/library/Library;
    .restart local v15       #listCookie:Ljava/lang/String;
    :cond_5f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mLayout:Landroid/view/View;

    check-cast v1, Lcom/google/android/finsky/layout/EpisodeList;

    .line 130
    .local v1, episodeList:Lcom/google/android/finsky/layout/EpisodeList;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mRestoreBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/EpisodeList;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mPageFragment:Lcom/google/android/finsky/fragments/PageFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mRestoreBundle:Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSelectedSeasonId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSelectedEpisodeId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mReferrerUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mReferrerCookie:Ljava/lang/String;

    invoke-virtual/range {v1 .. v12}, Lcom/google/android/finsky/layout/EpisodeList;->setSeasonList(Lcom/google/android/finsky/fragments/PageFragment;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public onDestroyView()V
    .registers 1

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/google/android/finsky/activities/SeasonListViewBinder;->detachListeners()V

    .line 145
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .parameter "error"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 140
    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mRestoreBundle:Landroid/os/Bundle;

    .line 149
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mLayout:Landroid/view/View;

    check-cast v0, Lcom/google/android/finsky/layout/EpisodeList;

    .line 153
    .local v0, episodeList:Lcom/google/android/finsky/layout/EpisodeList;
    if-eqz v0, :cond_9

    .line 154
    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/EpisodeList;->saveInstanceState(Landroid/os/Bundle;)V

    .line 156
    :cond_9
    return-void
.end method
