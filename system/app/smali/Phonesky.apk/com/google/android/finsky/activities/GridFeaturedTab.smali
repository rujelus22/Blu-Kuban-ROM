.class public Lcom/google/android/finsky/activities/GridFeaturedTab;
.super Ljava/lang/Object;
.source "GridFeaturedTab.java"

# interfaces
.implements Lcom/google/android/finsky/activities/ViewPagerTab;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# static fields
.field private static final GRID_LAYOUT_SEQUENCE_4xN_6xN:[I

.field private static final GRID_LAYOUT_SEQUENCE_8xN:[I

.field private static final GRID_LAYOUT_SEQUENCE_APPS_4xN_6xN:[I

.field private static final GRID_LAYOUT_SEQUENCE_MUSIC_4xN_6xN:[I


# instance fields
.field private mCachedView:Landroid/view/ViewGroup;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentBrowseUrl:Ljava/lang/String;

.field private mIsCurrentlySelected:Z

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mLayoutSequencer:Lcom/google/android/finsky/layout/GridSequencer;

.field private mPromoList:Lcom/google/android/finsky/api/model/DfeList;

.field private final mReferrerBrowseUrl:Ljava/lang/String;

.field private final mSequence:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0xb

    .line 55
    new-array v0, v1, [I

    fill-array-data v0, :array_22

    sput-object v0, Lcom/google/android/finsky/activities/GridFeaturedTab;->GRID_LAYOUT_SEQUENCE_4xN_6xN:[I

    .line 69
    new-array v0, v1, [I

    fill-array-data v0, :array_3c

    sput-object v0, Lcom/google/android/finsky/activities/GridFeaturedTab;->GRID_LAYOUT_SEQUENCE_APPS_4xN_6xN:[I

    .line 83
    new-array v0, v1, [I

    fill-array-data v0, :array_56

    sput-object v0, Lcom/google/android/finsky/activities/GridFeaturedTab;->GRID_LAYOUT_SEQUENCE_MUSIC_4xN_6xN:[I

    .line 97
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_70

    sput-object v0, Lcom/google/android/finsky/activities/GridFeaturedTab;->GRID_LAYOUT_SEQUENCE_8xN:[I

    return-void

    .line 55
    nop

    :array_22
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 69
    :array_3c
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 83
    :array_56
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 97
    :array_70
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/DfeList;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)V
    .registers 16
    .parameter "context"
    .parameter "inflater"
    .parameter "bitmapLoader"
    .parameter "navigationManager"
    .parameter "promoList"
    .parameter "referrerBrowseUrl"
    .parameter "currentPageUrl"
    .parameter "toc"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mContext:Landroid/content/Context;

    .line 125
    iput-object p2, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 126
    iput-object p5, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mPromoList:Lcom/google/android/finsky/api/model/DfeList;

    .line 127
    iput-object p6, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mReferrerBrowseUrl:Ljava/lang/String;

    .line 128
    iput-object p7, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mCurrentBrowseUrl:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4c

    .line 130
    sget-object v0, Lcom/google/android/finsky/activities/GridFeaturedTab;->GRID_LAYOUT_SEQUENCE_8xN:[I

    iput-object v0, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mSequence:[I

    .line 143
    :goto_22
    new-instance v0, Lcom/google/android/finsky/layout/GridSequencer;

    iget-object v1, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mSequence:[I

    move-object v2, p4

    move-object v3, p3

    move-object v5, p8

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/layout/GridSequencer;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;[ILcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mLayoutSequencer:Lcom/google/android/finsky/layout/GridSequencer;

    .line 147
    iget-object v0, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mPromoList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->isMoreAvailable()Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mPromoList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->isReady()Z

    move-result v0

    if-nez v0, :cond_83

    .line 148
    :cond_41
    iget-object v0, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mPromoList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    .line 149
    iget-object v0, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mPromoList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 153
    :goto_4b
    return-void

    .line 133
    :cond_4c
    invoke-virtual {p8, v2}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(I)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    move-result-object v0

    if-eqz v0, :cond_65

    invoke-virtual {p8, v2}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(I)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getLandingUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 135
    sget-object v0, Lcom/google/android/finsky/activities/GridFeaturedTab;->GRID_LAYOUT_SEQUENCE_MUSIC_4xN_6xN:[I

    iput-object v0, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mSequence:[I

    goto :goto_22

    .line 136
    :cond_65
    invoke-virtual {p8, v3}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(I)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    move-result-object v0

    if-eqz v0, :cond_7e

    invoke-virtual {p8, v3}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(I)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getLandingUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 138
    sget-object v0, Lcom/google/android/finsky/activities/GridFeaturedTab;->GRID_LAYOUT_SEQUENCE_APPS_4xN_6xN:[I

    iput-object v0, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mSequence:[I

    goto :goto_22

    .line 140
    :cond_7e
    sget-object v0, Lcom/google/android/finsky/activities/GridFeaturedTab;->GRID_LAYOUT_SEQUENCE_4xN_6xN:[I

    iput-object v0, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mSequence:[I

    goto :goto_22

    .line 151
    :cond_83
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/GridFeaturedTab;->onDataChanged()V

    goto :goto_4b
.end method

.method private logClickForCurrentPage()V
    .registers 7

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mPromoList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->isReady()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mPromoList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->getBucketCount()I

    move-result v0

    if-lez v0, :cond_31

    .line 197
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mReferrerBrowseUrl:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mCurrentBrowseUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mPromoList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->getBucketList()Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Bucket;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/google/android/finsky/analytics/Analytics;->logListViewOnPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_31
    return-void
.end method


# virtual methods
.method public getView(I)Landroid/view/View;
    .registers 7
    .parameter "backendId"

    .prologue
    .line 157
    iget-object v2, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mCachedView:Landroid/view/ViewGroup;

    if-nez v2, :cond_2a

    .line 158
    iget-object v2, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0400c2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 159
    .local v1, group:Landroid/view/ViewGroup;
    iput-object v1, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mCachedView:Landroid/view/ViewGroup;

    .line 160
    iget-object v2, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mCachedView:Landroid/view/ViewGroup;

    const v3, 0x7f08019e

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/UnevenGrid;

    .line 161
    .local v0, grid:Lcom/google/android/finsky/layout/UnevenGrid;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/UnevenGrid;->setHasTopGutter(Z)V

    .line 162
    iget-object v2, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mLayoutSequencer:Lcom/google/android/finsky/layout/GridSequencer;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/GridSequencer;->getAdapter()Lcom/google/android/finsky/adapters/UnevenGridAdapter;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/UnevenGrid;->setAdapter(Lcom/google/android/finsky/adapters/UnevenGridAdapter;)V

    .line 164
    .end local v0           #grid:Lcom/google/android/finsky/layout/UnevenGrid;
    .end local v1           #group:Landroid/view/ViewGroup;
    :cond_2a
    iget-object v2, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mCachedView:Landroid/view/ViewGroup;

    return-object v2
.end method

.method public onDataChanged()V
    .registers 4

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mIsCurrentlySelected:Z

    if-eqz v0, :cond_7

    .line 181
    invoke-direct {p0}, Lcom/google/android/finsky/activities/GridFeaturedTab;->logClickForCurrentPage()V

    .line 183
    :cond_7
    iget-object v1, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mLayoutSequencer:Lcom/google/android/finsky/layout/GridSequencer;

    iget-object v0, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mPromoList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->getBucketList()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Bucket;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/layout/GridSequencer;->setPromoData(Ljava/util/List;)V

    .line 184
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mCachedView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_12

    .line 170
    iget-object v0, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mCachedView:Landroid/view/ViewGroup;

    const v1, 0x7f08019e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/UnevenGrid;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/UnevenGrid;->onDestroyView()V

    .line 172
    :cond_12
    iget-object v0, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mPromoList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 173
    iget-object v0, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mLayoutSequencer:Lcom/google/android/finsky/layout/GridSequencer;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/GridSequencer;->onDestroy()V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mCachedView:Landroid/view/ViewGroup;

    .line 175
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "state"

    .prologue
    .line 210
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 206
    const/4 v0, 0x0

    return-object v0
.end method

.method public setTabSelected(Z)V
    .registers 3
    .parameter "isSelected"

    .prologue
    .line 188
    if-eqz p1, :cond_9

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mIsCurrentlySelected:Z

    if-nez v0, :cond_9

    .line 190
    invoke-direct {p0}, Lcom/google/android/finsky/activities/GridFeaturedTab;->logClickForCurrentPage()V

    .line 192
    :cond_9
    iput-boolean p1, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mIsCurrentlySelected:Z

    .line 193
    return-void
.end method
