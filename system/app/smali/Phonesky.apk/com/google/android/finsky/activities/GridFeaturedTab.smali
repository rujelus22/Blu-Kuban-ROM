.class public Lcom/google/android/finsky/activities/GridFeaturedTab;
.super Ljava/lang/Object;
.source "GridFeaturedTab.java"

# interfaces
.implements Lcom/google/android/finsky/activities/ViewPagerTab;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# static fields
.field private static final GRID_LAYOUT_SEQUENCE_4xN_6xN:[Lcom/google/android/finsky/adapters/GridSlotSize;

.field private static final GRID_LAYOUT_SEQUENCE_8xN:[Lcom/google/android/finsky/adapters/GridSlotSize;

.field private static final GRID_LAYOUT_SEQUENCE_APPS_4xN_6xN:[Lcom/google/android/finsky/adapters/GridSlotSize;

.field private static final GRID_LAYOUT_SEQUENCE_MUSIC_4xN_6xN:[Lcom/google/android/finsky/adapters/GridSlotSize;


# instance fields
.field private mCachedView:Landroid/view/ViewGroup;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentBrowseUrl:Ljava/lang/String;

.field private mIsCurrentlySelected:Z

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mLayoutSequencer:Lcom/google/android/finsky/layout/GridSequencer;

.field private mPromoList:Lcom/google/android/finsky/api/model/DfeList;

.field private final mReferrerBrowseUrl:Ljava/lang/String;

.field private final mSequence:[Lcom/google/android/finsky/adapters/GridSlotSize;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/android/finsky/adapters/GridSlotSize;

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_4x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x1:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x1:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_4x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x1:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x1:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_4x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/activities/GridFeaturedTab;->GRID_LAYOUT_SEQUENCE_4xN_6xN:[Lcom/google/android/finsky/adapters/GridSlotSize;

    .line 65
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/android/finsky/adapters/GridSlotSize;

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_4x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x1:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x1:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x1:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x1:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_4x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_4x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/activities/GridFeaturedTab;->GRID_LAYOUT_SEQUENCE_APPS_4xN_6xN:[Lcom/google/android/finsky/adapters/GridSlotSize;

    .line 77
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/google/android/finsky/adapters/GridSlotSize;

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_4x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x1:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x1:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x1:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x1:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_4x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x1:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x1:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x1:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x1:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_4x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/activities/GridFeaturedTab;->GRID_LAYOUT_SEQUENCE_MUSIC_4xN_6xN:[Lcom/google/android/finsky/adapters/GridSlotSize;

    .line 91
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/google/android/finsky/adapters/GridSlotSize;

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_4x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_4x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x1:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x1:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x1:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x1:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x1:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x1:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x1:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x1:Lcom/google/android/finsky/adapters/GridSlotSize;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/activities/GridFeaturedTab;->GRID_LAYOUT_SEQUENCE_8xN:[Lcom/google/android/finsky/adapters/GridSlotSize;

    return-void
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

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mContext:Landroid/content/Context;

    .line 117
    iput-object p2, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 118
    iput-object p5, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mPromoList:Lcom/google/android/finsky/api/model/DfeList;

    .line 119
    iput-object p6, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mReferrerBrowseUrl:Ljava/lang/String;

    .line 120
    iput-object p7, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mCurrentBrowseUrl:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4c

    .line 122
    sget-object v0, Lcom/google/android/finsky/activities/GridFeaturedTab;->GRID_LAYOUT_SEQUENCE_8xN:[Lcom/google/android/finsky/adapters/GridSlotSize;

    iput-object v0, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mSequence:[Lcom/google/android/finsky/adapters/GridSlotSize;

    .line 135
    :goto_22
    new-instance v0, Lcom/google/android/finsky/layout/GridSequencer;

    iget-object v1, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mSequence:[Lcom/google/android/finsky/adapters/GridSlotSize;

    move-object v2, p4

    move-object v3, p3

    move-object v5, p8

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/layout/GridSequencer;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;[Lcom/google/android/finsky/adapters/GridSlotSize;Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mLayoutSequencer:Lcom/google/android/finsky/layout/GridSequencer;

    .line 139
    iget-object v0, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mPromoList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->isMoreAvailable()Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mPromoList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->isReady()Z

    move-result v0

    if-nez v0, :cond_83

    .line 140
    :cond_41
    iget-object v0, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mPromoList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    .line 141
    iget-object v0, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mPromoList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 145
    :goto_4b
    return-void

    .line 125
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

    .line 127
    sget-object v0, Lcom/google/android/finsky/activities/GridFeaturedTab;->GRID_LAYOUT_SEQUENCE_MUSIC_4xN_6xN:[Lcom/google/android/finsky/adapters/GridSlotSize;

    iput-object v0, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mSequence:[Lcom/google/android/finsky/adapters/GridSlotSize;

    goto :goto_22

    .line 128
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

    .line 130
    sget-object v0, Lcom/google/android/finsky/activities/GridFeaturedTab;->GRID_LAYOUT_SEQUENCE_APPS_4xN_6xN:[Lcom/google/android/finsky/adapters/GridSlotSize;

    iput-object v0, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mSequence:[Lcom/google/android/finsky/adapters/GridSlotSize;

    goto :goto_22

    .line 132
    :cond_7e
    sget-object v0, Lcom/google/android/finsky/activities/GridFeaturedTab;->GRID_LAYOUT_SEQUENCE_4xN_6xN:[Lcom/google/android/finsky/adapters/GridSlotSize;

    iput-object v0, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mSequence:[Lcom/google/android/finsky/adapters/GridSlotSize;

    goto :goto_22

    .line 143
    :cond_83
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/GridFeaturedTab;->onDataChanged()V

    goto :goto_4b
.end method

.method private logClickForCurrentPage()V
    .registers 7

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mPromoList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->isReady()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mPromoList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->getBucketCount()I

    move-result v0

    if-lez v0, :cond_31

    .line 189
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

    check-cast v0, Lcom/google/android/finsky/model/Bucket;

    invoke-virtual {v0}, Lcom/google/android/finsky/model/Bucket;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/google/android/finsky/analytics/Analytics;->logListViewOnPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_31
    return-void
.end method


# virtual methods
.method public getView(I)Landroid/view/View;
    .registers 7
    .parameter "backendId"

    .prologue
    .line 149
    iget-object v2, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mCachedView:Landroid/view/ViewGroup;

    if-nez v2, :cond_2a

    .line 150
    iget-object v2, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040094

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 151
    .local v1, group:Landroid/view/ViewGroup;
    iput-object v1, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mCachedView:Landroid/view/ViewGroup;

    .line 152
    iget-object v2, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mCachedView:Landroid/view/ViewGroup;

    const v3, 0x7f080146

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/UnevenGrid;

    .line 153
    .local v0, grid:Lcom/google/android/finsky/layout/UnevenGrid;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/UnevenGrid;->setHasTopGutter(Z)V

    .line 154
    iget-object v2, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mLayoutSequencer:Lcom/google/android/finsky/layout/GridSequencer;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/GridSequencer;->getAdapter()Lcom/google/android/finsky/adapters/UnevenGridAdapter;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/UnevenGrid;->setAdapter(Lcom/google/android/finsky/adapters/UnevenGridAdapter;)V

    .line 156
    .end local v0           #grid:Lcom/google/android/finsky/layout/UnevenGrid;
    .end local v1           #group:Landroid/view/ViewGroup;
    :cond_2a
    iget-object v2, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mCachedView:Landroid/view/ViewGroup;

    return-object v2
.end method

.method public onDataChanged()V
    .registers 4

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mIsCurrentlySelected:Z

    if-eqz v0, :cond_7

    .line 173
    invoke-direct {p0}, Lcom/google/android/finsky/activities/GridFeaturedTab;->logClickForCurrentPage()V

    .line 175
    :cond_7
    iget-object v1, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mLayoutSequencer:Lcom/google/android/finsky/layout/GridSequencer;

    iget-object v0, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mPromoList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->getBucketList()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/model/Bucket;

    invoke-virtual {v0}, Lcom/google/android/finsky/model/Bucket;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/layout/GridSequencer;->setPromoData(Ljava/util/List;)V

    .line 176
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mCachedView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_12

    .line 162
    iget-object v0, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mCachedView:Landroid/view/ViewGroup;

    const v1, 0x7f080146

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/UnevenGrid;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/UnevenGrid;->onDestroyView()V

    .line 164
    :cond_12
    iget-object v0, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mPromoList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 165
    iget-object v0, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mLayoutSequencer:Lcom/google/android/finsky/layout/GridSequencer;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/GridSequencer;->onDestroy()V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mCachedView:Landroid/view/ViewGroup;

    .line 167
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "state"

    .prologue
    .line 202
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 198
    const/4 v0, 0x0

    return-object v0
.end method

.method public setTabSelected(Z)V
    .registers 3
    .parameter "isSelected"

    .prologue
    .line 180
    if-eqz p1, :cond_9

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mIsCurrentlySelected:Z

    if-nez v0, :cond_9

    .line 182
    invoke-direct {p0}, Lcom/google/android/finsky/activities/GridFeaturedTab;->logClickForCurrentPage()V

    .line 184
    :cond_9
    iput-boolean p1, p0, Lcom/google/android/finsky/activities/GridFeaturedTab;->mIsCurrentlySelected:Z

    .line 185
    return-void
.end method
