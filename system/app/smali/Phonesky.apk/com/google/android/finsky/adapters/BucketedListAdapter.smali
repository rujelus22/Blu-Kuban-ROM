.class public Lcom/google/android/finsky/adapters/BucketedListAdapter;
.super Lcom/google/android/finsky/adapters/PaginatedListAdapter;
.source "BucketedListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/adapters/BucketedListAdapter$3;,
        Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;,
        Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;
    }
.end annotation


# instance fields
.field private final mArtistImageHeight:I

.field protected final mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/api/model/BucketedList",
            "<*>;"
        }
    .end annotation
.end field

.field private final mCellLayoutId:I

.field protected final mColumnCount:I

.field protected mCurrentPageUrl:Ljava/lang/String;

.field protected final mLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field protected final mLoadingForeground:I

.field private final mRowCount:I

.field private mSwitchToArtistLayoutIfNecessary:Z

.field protected final mTitleForeground:Landroid/content/res/ColorStateList;

.field protected final mToc:Lcom/google/android/finsky/api/model/DfeToc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/model/BucketedList;IIILjava/lang/String;)V
    .registers 12
    .parameter "context"
    .parameter "navManager"
    .parameter "loader"
    .parameter "toc"
    .parameter
    .parameter "columnCount"
    .parameter "rowCount"
    .parameter "cellLayoutId"
    .parameter "currentPageUrl"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/finsky/navigationmanager/NavigationManager;",
            "Lcom/google/android/finsky/utils/BitmapLoader;",
            "Lcom/google/android/finsky/api/model/DfeToc;",
            "Lcom/google/android/finsky/api/model/BucketedList",
            "<*>;III",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 103
    .local p5, bucketedList:Lcom/google/android/finsky/api/model/BucketedList;,"Lcom/google/android/finsky/api/model/BucketedList<*>;"
    invoke-virtual {p5}, Lcom/google/android/finsky/api/model/BucketedList;->inErrorState()Z

    move-result v0

    invoke-virtual {p5}, Lcom/google/android/finsky/api/model/BucketedList;->isMoreAvailable()Z

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/finsky/adapters/PaginatedListAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;ZZ)V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mSwitchToArtistLayoutIfNecessary:Z

    .line 104
    iput-object p3, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 105
    iput-object p9, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mCurrentPageUrl:Ljava/lang/String;

    .line 106
    iput-object p5, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    .line 107
    iget-object v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/BucketedList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 108
    iput p6, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mColumnCount:I

    .line 109
    iput p7, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mRowCount:I

    .line 110
    iput p8, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mCellLayoutId:I

    .line 111
    iput-object p4, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mLoadingForeground:I

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mTitleForeground:Landroid/content/res/ColorStateList;

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mArtistImageHeight:I

    .line 117
    return-void
.end method

.method private bindArtistPromoLayer(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;)V
    .registers 6
    .parameter "doc"
    .parameter "holder"

    .prologue
    .line 488
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_11

    .line 489
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/ArtistBucketEntry;

    iput-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistLayer:Lcom/google/android/finsky/layout/ArtistBucketEntry;

    .line 490
    const/4 v0, 0x0

    iput-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistStub:Landroid/view/ViewStub;

    .line 493
    :cond_11
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    if-eqz v0, :cond_1c

    .line 494
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setVisibility(I)V

    .line 497
    :cond_1c
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistLayer:Lcom/google/android/finsky/layout/ArtistBucketEntry;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget v2, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mArtistImageHeight:I

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/finsky/layout/ArtistBucketEntry;->setDocument(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;I)V

    .line 498
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistLayer:Lcom/google/android/finsky/layout/ArtistBucketEntry;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v2, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mCurrentPageUrl:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getClickListener(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/ArtistBucketEntry;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v2, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mCurrentPageUrl:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getClickListener(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    return-void
.end method

.method private bindBucketEntries(Lcom/google/android/finsky/model/Bucket;Landroid/view/ViewGroup;)V
    .registers 13
    .parameter "bucket"
    .parameter "view"

    .prologue
    const/4 v9, 0x0

    .line 203
    const v7, 0x7f08005c

    invoke-virtual {p2, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 204
    .local v0, bucketRowHolder:Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    .local v5, row:I
    :goto_b
    iget v7, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mRowCount:I

    if-ge v5, v7, :cond_55

    .line 205
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 206
    .local v6, rowOfDocuments:Landroid/widget/LinearLayout;
    invoke-direct {p0, p1}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getDisplayedRowsForBucket(Lcom/google/android/finsky/model/Bucket;)I

    move-result v7

    if-lt v5, v7, :cond_23

    .line 207
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 204
    :cond_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 209
    :cond_23
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 210
    invoke-direct {p0, p1, v5}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getDisplayedColumnsForBucket(Lcom/google/android/finsky/model/Bucket;I)I

    move-result v2

    .line 211
    .local v2, displayedColumns:I
    const/4 v1, 0x0

    .local v1, column:I
    :goto_2b
    iget v7, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mColumnCount:I

    if-ge v1, v7, :cond_20

    .line 212
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 213
    .local v3, docEntry:Landroid/view/View;
    if-ge v1, v2, :cond_50

    .line 214
    iget v7, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mColumnCount:I

    mul-int/2addr v7, v5

    add-int v4, v7, v1

    .line 215
    .local v4, itemIndex:I
    invoke-virtual {p1}, Lcom/google/android/finsky/model/Bucket;->getChildren()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/api/model/Document;

    move-object v8, v3

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v7, v4, v8}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->bindRowEntry(Lcom/google/android/finsky/model/Bucket;Lcom/google/android/finsky/api/model/Document;ILandroid/view/ViewGroup;)V

    .line 217
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 211
    .end local v4           #itemIndex:I
    :goto_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 219
    :cond_50
    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4d

    .line 224
    .end local v1           #column:I
    .end local v2           #displayedColumns:I
    .end local v3           #docEntry:Landroid/view/View;
    .end local v6           #rowOfDocuments:Landroid/widget/LinearLayout;
    :cond_55
    return-void
.end method

.method private bindBucketHeader(Lcom/google/android/finsky/model/Bucket;Landroid/view/ViewGroup;)V
    .registers 13
    .parameter "bucket"
    .parameter "bucketView"

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 539
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3b

    .line 540
    new-instance v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;

    invoke-direct {v1, v9}, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;-><init>(Lcom/google/android/finsky/adapters/BucketedListAdapter$1;)V

    .line 541
    .local v1, holder:Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;
    const v4, 0x7f080053

    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->bucketHeader:Landroid/view/View;

    .line 542
    const v4, 0x7f080057

    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->searchResultsView:Landroid/widget/TextView;

    .line 543
    const v4, 0x7f080058

    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->corpusStrip:Landroid/view/View;

    .line 544
    const v4, 0x7f080056

    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->sectionHeader:Landroid/widget/TextView;

    .line 545
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 547
    .end local v1           #holder:Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;
    :cond_3b
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;

    .line 549
    .restart local v1       #holder:Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;
    invoke-virtual {p1}, Lcom/google/android/finsky/model/Bucket;->getChildCount()I

    move-result v4

    if-nez v4, :cond_4d

    .line 550
    iget-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->bucketHeader:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 584
    :cond_4c
    :goto_4c
    return-void

    .line 553
    :cond_4d
    iget-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->bucketHeader:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 554
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->makeHeaderClickListener(Lcom/google/android/finsky/model/Bucket;)Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 556
    .local v0, headerClickHandler:Landroid/view/View$OnClickListener;
    iget-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->sectionHeader:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/finsky/model/Bucket;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    iget-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->sectionHeader:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/finsky/model/Bucket;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 559
    invoke-virtual {p1}, Lcom/google/android/finsky/model/Bucket;->hasMoreItems()Z

    move-result v4

    if-eqz v4, :cond_cb

    .line 560
    iget-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->bucketHeader:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 561
    iget-object v7, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->bucketHeader:Landroid/view/View;

    if-eqz v0, :cond_c7

    move v4, v5

    :goto_7c
    invoke-virtual {v7, v4}, Landroid/view/View;->setClickable(Z)V

    .line 562
    iget-object v7, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->bucketHeader:Landroid/view/View;

    if-eqz v0, :cond_c9

    move v4, v5

    :goto_84
    invoke-virtual {v7, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 569
    :goto_87
    invoke-virtual {p1}, Lcom/google/android/finsky/model/Bucket;->getEstimatedResults()I

    move-result v2

    .line 570
    .local v2, numMatchingAssets:I
    if-lez v2, :cond_db

    .line 571
    iget-object v4, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v7, 0x7f0d

    invoke-virtual {v4, v7, v2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 574
    .local v3, template:Ljava/lang/String;
    iget-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->searchResultsView:Landroid/widget/TextView;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    iget-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->searchResultsView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 580
    .end local v3           #template:Ljava/lang/String;
    :goto_b3
    iget-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->corpusStrip:Landroid/view/View;

    if-eqz v4, :cond_4c

    .line 581
    iget-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->corpusStrip:Landroid/view/View;

    iget-object v5, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/finsky/model/Bucket;->getBackend()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4c

    .end local v2           #numMatchingAssets:I
    :cond_c7
    move v4, v6

    .line 561
    goto :goto_7c

    :cond_c9
    move v4, v6

    .line 562
    goto :goto_84

    .line 564
    :cond_cb
    iget-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->bucketHeader:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    iget-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->bucketHeader:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setClickable(Z)V

    .line 566
    iget-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->bucketHeader:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_87

    .line 577
    .restart local v2       #numMatchingAssets:I
    :cond_db
    iget-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->searchResultsView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b3
.end method

.method private bindDocument(Lcom/google/android/finsky/api/model/Document;Landroid/view/ViewGroup;IIZI)V
    .registers 11
    .parameter "doc"
    .parameter "docEntry"
    .parameter "imageWidth"
    .parameter "imageHeight"
    .parameter "isOrdered"
    .parameter "itemIndex"

    .prologue
    .line 453
    invoke-direct {p0, p2}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getConvertView(Landroid/view/ViewGroup;)Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;

    move-result-object v0

    .line 455
    .local v0, holder:Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1c

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getArtistDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v2

    if-eqz v2, :cond_1c

    const/4 v1, 0x1

    .line 457
    .local v1, isArtist:Z
    :goto_12
    if-eqz v1, :cond_1e

    iget-boolean v2, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mSwitchToArtistLayoutIfNecessary:Z

    if-eqz v2, :cond_1e

    .line 458
    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->bindArtistPromoLayer(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;)V

    .line 462
    :goto_1b
    return-void

    .line 455
    .end local v1           #isArtist:Z
    :cond_1c
    const/4 v1, 0x0

    goto :goto_12

    .line 460
    .restart local v1       #isArtist:Z
    :cond_1e
    invoke-direct {p0, p1, v0, p5, p6}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->bindGenericLayer(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;ZI)V

    goto :goto_1b
.end method

.method private bindGenericLayer(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;ZI)V
    .registers 10
    .parameter "doc"
    .parameter "holder"
    .parameter "isOrdered"
    .parameter "itemIndex"

    .prologue
    const/4 v4, 0x0

    .line 467
    iget-object v1, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    invoke-virtual {v1, v4}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setVisibility(I)V

    .line 468
    iget-object v1, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistLayer:Lcom/google/android/finsky/layout/ArtistBucketEntry;

    if-eqz v1, :cond_11

    .line 469
    iget-object v1, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistLayer:Lcom/google/android/finsky/layout/ArtistBucketEntry;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/ArtistBucketEntry;->setVisibility(I)V

    .line 472
    :cond_11
    iget-object v1, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    iget-object v2, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v3, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mCurrentPageUrl:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getClickListener(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    iget-object v1, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    iget-object v2, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v1, v2, p1, v4}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setDocument(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Z)V

    .line 478
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, title:Ljava/lang/String;
    if-eqz p3, :cond_44

    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p4, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".\u00a0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 482
    :cond_44
    iget-object v1, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setTitle(Ljava/lang/String;)V

    .line 483
    iget-object v1, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    iget-object v2, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mTitleForeground:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setTitleColor(Landroid/content/res/ColorStateList;)V

    .line 484
    iget-object v1, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setLeftSeparatorVisibility(Z)V

    .line 485
    return-void
.end method

.method private bindMockDocument(Lcom/google/android/finsky/model/Bucket;Landroid/view/ViewGroup;II)V
    .registers 8
    .parameter "bucket"
    .parameter "view"
    .parameter "imageWidth"
    .parameter "imageHeight"

    .prologue
    .line 587
    invoke-direct {p0, p2}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getConvertView(Landroid/view/ViewGroup;)Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;

    move-result-object v0

    .line 588
    .local v0, holder:Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;
    iget-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setVisibility(I)V

    .line 589
    iget-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistLayer:Lcom/google/android/finsky/layout/ArtistBucketEntry;

    if-eqz v1, :cond_15

    .line 590
    iget-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistLayer:Lcom/google/android/finsky/layout/ArtistBucketEntry;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/ArtistBucketEntry;->setVisibility(I)V

    .line 593
    :cond_15
    iget-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    invoke-virtual {p1}, Lcom/google/android/finsky/model/Bucket;->getBackend()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setMockDocument(I)V

    .line 594
    iget-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    iget v2, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mLoadingForeground:I

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setTitleColor(I)V

    .line 595
    return-void
.end method

.method private getBucketView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 271
    iget-object v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/model/Bucket;

    .line 272
    .local v0, bucket:Lcom/google/android/finsky/model/Bucket;
    if-nez p2, :cond_12

    .line 273
    invoke-direct {p0, v0, p3}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->inflateViewForBucket(Lcom/google/android/finsky/model/Bucket;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_12
    move-object v1, p2

    .line 276
    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->bindBucketEntries(Lcom/google/android/finsky/model/Bucket;Landroid/view/ViewGroup;)V

    move-object v1, p2

    .line 277
    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->bindBucketHeader(Lcom/google/android/finsky/model/Bucket;Landroid/view/ViewGroup;)V

    .line 279
    return-object p2
.end method

.method private getBucketedListCount()I
    .registers 6

    .prologue
    .line 363
    iget-object v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_39

    .line 365
    iget-object v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/BucketedList;->getCount()I

    move-result v1

    int-to-double v1, v1

    iget v3, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mColumnCount:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    .line 367
    .local v0, count:I
    iget-object v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/model/Bucket;

    invoke-virtual {v1}, Lcom/google/android/finsky/model/Bucket;->hasContainerWithBannerTemplate()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 368
    add-int/lit8 v0, v0, 0x1

    .line 370
    :cond_2e
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getFooterMode()Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->NONE:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    if-eq v1, v2, :cond_38

    .line 371
    add-int/lit8 v0, v0, 0x1

    .line 376
    .end local v0           #count:I
    :cond_38
    :goto_38
    return v0

    :cond_39
    iget-object v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketCount()I

    move-result v0

    goto :goto_38
.end method

.method private getBucketedListItemViewType(I)I
    .registers 7
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 385
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getBucketedListCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 387
    .local v0, lastRow:I
    if-ne p1, v0, :cond_40

    .line 388
    sget-object v3, Lcom/google/android/finsky/adapters/BucketedListAdapter$3;->$SwitchMap$com$google$android$finsky$adapters$PaginatedListAdapter$FooterMode:[I

    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getFooterMode()Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_60

    .line 401
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No footer or item at row "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 390
    :pswitch_32
    const/4 v1, 0x2

    .line 414
    :cond_33
    :goto_33
    return v1

    .line 392
    :pswitch_34
    const/4 v1, 0x3

    goto :goto_33

    .line 395
    :pswitch_36
    iget-object v3, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketCount()I

    move-result v3

    if-ne v3, v2, :cond_33

    move v1, v2

    .line 396
    goto :goto_33

    .line 405
    :cond_40
    iget-object v3, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketCount()I

    move-result v3

    if-ne v3, v2, :cond_33

    .line 407
    iget-object v3, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/model/Bucket;

    invoke-virtual {v1}, Lcom/google/android/finsky/model/Bucket;->hasContainerWithBannerTemplate()Z

    move-result v1

    if-eqz v1, :cond_5e

    if-nez p1, :cond_5e

    .line 409
    const/4 v1, 0x4

    goto :goto_33

    :cond_5e
    move v1, v2

    .line 411
    goto :goto_33

    .line 388
    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_32
        :pswitch_34
        :pswitch_36
    .end packed-switch
.end method

.method private getConvertView(Landroid/view/ViewGroup;)Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;
    .registers 4
    .parameter "docEntry"

    .prologue
    .line 436
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_30

    .line 437
    new-instance v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;-><init>(Lcom/google/android/finsky/adapters/BucketedListAdapter$1;)V

    .line 438
    .local v0, holder:Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;
    const v1, 0x7f080029

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/OverviewBucketEntry;

    iput-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    .line 440
    const v1, 0x7f080078

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistStub:Landroid/view/ViewStub;

    .line 441
    const v1, 0x7f08000e

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/ArtistBucketEntry;

    iput-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistLayer:Lcom/google/android/finsky/layout/ArtistBucketEntry;

    .line 443
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 445
    .end local v0           #holder:Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;
    :cond_30
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;

    return-object v1
.end method

.method private getDisplayedColumnsForBucket(Lcom/google/android/finsky/model/Bucket;I)I
    .registers 5
    .parameter "bucket"
    .parameter "row"

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getDisplayedRowsForBucket(Lcom/google/android/finsky/model/Bucket;)I

    move-result v0

    if-ge p2, v0, :cond_15

    invoke-virtual {p1}, Lcom/google/android/finsky/model/Bucket;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mColumnCount:I

    mul-int/2addr v1, p2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mColumnCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private getDisplayedRowsForBucket(Lcom/google/android/finsky/model/Bucket;)I
    .registers 6
    .parameter "bucket"

    .prologue
    .line 259
    invoke-virtual {p1}, Lcom/google/android/finsky/model/Bucket;->getChildCount()I

    move-result v0

    int-to-double v0, v0

    iget v2, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mColumnCount:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mRowCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 309
    if-nez p1, :cond_a

    .line 310
    const v0, 0x7f040024

    invoke-virtual {p0, v0, p2, v4}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 313
    :cond_a
    const v0, 0x7f080079

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 314
    .local v6, background:Landroid/view/View;
    const v0, 0x7f08007a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 315
    .local v8, imageView:Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/model/Bucket;

    invoke-virtual {v0}, Lcom/google/android/finsky/model/Bucket;->getContainerWithBannerTemplate()Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;

    move-result-object v10

    .line 317
    .local v10, template:Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;
    iget-object v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/model/Bucket;

    invoke-virtual {v0}, Lcom/google/android/finsky/model/Bucket;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v7

    .line 318
    .local v7, bucketDoc:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual {v10}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;->getColorThemeArgb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 319
    invoke-virtual {v10}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;->getColorThemeArgb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 321
    :cond_4f
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {v7, v4, v4, v0}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getPageHeaderBannerUrlFromDocument(Lcom/google/android/finsky/api/model/Document;ZII)Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, imageUrl:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_74

    .line 324
    iget-object v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/finsky/adapters/BucketedListAdapter$1;

    invoke-direct {v3, p0, v8}, Lcom/google/android/finsky/adapters/BucketedListAdapter$1;-><init>(Lcom/google/android/finsky/adapters/BucketedListAdapter;Landroid/widget/ImageView;)V

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v9

    .line 331
    .local v9, newContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    invoke-virtual {v9}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 334
    .end local v9           #newContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    :cond_74
    return-object p1
.end method

.method private getPaginatedRow(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 340
    if-nez p2, :cond_21

    .line 343
    const v2, 0x7f04001a

    invoke-virtual {p0, v2, p3, v5}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 344
    const/4 v0, 0x0

    .local v0, column:I
    :goto_b
    iget v2, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mColumnCount:I

    if-ge v0, v2, :cond_21

    move-object v2, p2

    .line 345
    check-cast v2, Landroid/view/ViewGroup;

    iget v4, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mCellLayoutId:I

    move-object v3, p2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {p0, v4, v3, v5}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 344
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 349
    .end local v0           #column:I
    :cond_21
    const/4 v0, 0x0

    .restart local v0       #column:I
    :goto_22
    iget v2, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mColumnCount:I

    if-ge v0, v2, :cond_4c

    .line 350
    iget v2, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mColumnCount:I

    mul-int/2addr v2, p1

    add-int v1, v2, v0

    .line 351
    .local v1, itemIndex:I
    iget-object v2, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/model/Bucket;

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/api/model/Document;

    move-object v4, p2

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->bindRowEntry(Lcom/google/android/finsky/model/Bucket;Lcom/google/android/finsky/api/model/Document;ILandroid/view/ViewGroup;)V

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 355
    .end local v1           #itemIndex:I
    :cond_4c
    return-object p2
.end method

.method private getPaginatedRowIndex(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_8

    add-int/lit8 p1, p1, -0x1

    .end local p1
    :cond_8
    return p1
.end method

.method private hasHeader()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 170
    iget-object v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketCount()I

    move-result v0

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/model/Bucket;

    invoke-virtual {v0}, Lcom/google/android/finsky/model/Bucket;->hasContainerWithBannerTemplate()Z

    move-result v0

    if-eqz v0, :cond_1e

    move v0, v1

    :goto_1d
    return v0

    :cond_1e
    move v0, v2

    goto :goto_1d
.end method

.method private inflateViewForBucket(Lcom/google/android/finsky/model/Bucket;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .parameter "bucket"
    .parameter "parent"

    .prologue
    const/4 v11, 0x0

    .line 286
    const v9, 0x7f04001b

    invoke-virtual {p0, v9, p2, v11}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 288
    .local v8, view:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getBucketHeaderLayoutId(Lcom/google/android/finsky/model/Bucket;)I

    move-result v2

    .line 289
    .local v2, bucketHeaderLayoutId:I
    const v9, 0x7f08005b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 290
    .local v1, bucketHeaderHolder:Landroid/view/ViewGroup;
    invoke-virtual {p0, v2, p2, v11}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 291
    .local v0, bucketHeader:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 293
    const v9, 0x7f08005c

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 294
    .local v3, bucketItemHolder:Landroid/view/ViewGroup;
    const/4 v6, 0x0

    .local v6, row:I
    :goto_28
    iget v9, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mRowCount:I

    if-ge v6, v9, :cond_54

    .line 295
    const v9, 0x7f04001a

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10, v11}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 297
    .local v7, rowOfBucketEntries:Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_37
    iget v9, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mColumnCount:I

    if-ge v5, v9, :cond_4e

    .line 298
    iget v9, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mCellLayoutId:I

    invoke-virtual {p0, v9, v7, v11}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 300
    .local v4, emptyEntry:Landroid/view/ViewGroup;
    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 301
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 297
    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    .line 303
    .end local v4           #emptyEntry:Landroid/view/ViewGroup;
    :cond_4e
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 294
    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    .line 305
    .end local v5           #i:I
    .end local v7           #rowOfBucketEntries:Landroid/widget/LinearLayout;
    :cond_54
    return-object v8
.end method


# virtual methods
.method protected bindRowEntry(Lcom/google/android/finsky/model/Bucket;Lcom/google/android/finsky/api/model/Document;ILandroid/view/ViewGroup;)V
    .registers 12
    .parameter "bucket"
    .parameter "document"
    .parameter "itemIndex"
    .parameter "docEntry"

    .prologue
    const/4 v2, 0x0

    .line 236
    iget-object v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/finsky/model/Bucket;->getBackend()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getIconWidth(Landroid/content/Context;I)I

    move-result v3

    .line 237
    .local v3, entryIconWidth:I
    iget-object v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 240
    .local v4, entryIconHeight:I
    if-nez p2, :cond_2e

    .line 242
    iget-object v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/BucketedList;->getCount()I

    move-result v0

    if-ge p3, v0, :cond_29

    .line 243
    invoke-virtual {p4, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 244
    invoke-direct {p0, p1, p4, v3, v4}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->bindMockDocument(Lcom/google/android/finsky/model/Bucket;Landroid/view/ViewGroup;II)V

    .line 253
    :goto_28
    return-void

    .line 246
    :cond_29
    const/4 v0, 0x4

    invoke-virtual {p4, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_28

    .line 249
    :cond_2e
    invoke-virtual {p4, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 250
    invoke-virtual {p1}, Lcom/google/android/finsky/model/Bucket;->isOrdered()Z

    move-result v5

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->bindDocument(Lcom/google/android/finsky/api/model/Document;Landroid/view/ViewGroup;IIZI)V

    goto :goto_28
.end method

.method protected getBucketHeaderLayoutId(Lcom/google/android/finsky/model/Bucket;)I
    .registers 3
    .parameter "bucket"

    .prologue
    .line 535
    const v0, 0x7f040017

    return v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getBucketedListCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 4
    .parameter "position"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 146
    iget-object v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/api/model/BucketedList;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 149
    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_f
.end method

.method public getItemViewType(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getBucketedListItemViewType(I)I

    move-result v0

    return v0
.end method

.method protected getLastRequestError()Ljava/lang/String;
    .registers 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/BucketedList;->getVolleyError()Lcom/android/volley/VolleyError;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getBucketedListItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_42

    .line 137
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type for getView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getBucketedListItemViewType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :pswitch_24
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 135
    :goto_28
    return-object v0

    .line 129
    :pswitch_29
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getBucketView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_28

    .line 131
    :pswitch_2e
    invoke-direct {p0, p1}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getPaginatedRowIndex(I)I

    move-result v0

    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getPaginatedRow(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_28

    .line 133
    :pswitch_37
    invoke-virtual {p0, p2, p3}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getLoadingFooterView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_28

    .line 135
    :pswitch_3c
    invoke-virtual {p0, p2, p3}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getErrorFooterView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_28

    .line 125
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_29
        :pswitch_2e
        :pswitch_37
        :pswitch_3c
        :pswitch_24
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 421
    const/4 v0, 0x5

    return v0
.end method

.method protected ignorePromoArtistTiles()V
    .registers 2

    .prologue
    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mSwitchToArtistLayoutIfNecessary:Z

    .line 121
    return-void
.end method

.method protected isMoreDataAvailable()Z
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/BucketedList;->isMoreAvailable()Z

    move-result v0

    return v0
.end method

.method protected makeHeaderClickListener(Lcom/google/android/finsky/model/Bucket;)Landroid/view/View$OnClickListener;
    .registers 3
    .parameter "bucket"

    .prologue
    .line 510
    invoke-virtual {p1}, Lcom/google/android/finsky/model/Bucket;->getBrowseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 511
    new-instance v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/adapters/BucketedListAdapter$2;-><init>(Lcom/google/android/finsky/adapters/BucketedListAdapter;Lcom/google/android/finsky/model/Bucket;)V

    .line 519
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/BucketedList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 181
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 426
    return-void
.end method

.method protected retryLoadingItems()V
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/BucketedList;->retryLoadItems()V

    .line 196
    return-void
.end method
