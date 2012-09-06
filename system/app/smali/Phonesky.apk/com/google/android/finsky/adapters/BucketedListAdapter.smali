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

.field private final mHeaderImageMaxHeight:I

.field protected final mLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field protected final mLoadingForeground:I

.field private final mRowCount:I

.field private final mSmallestWidth:I

.field private mSwitchToCustomLayoutIfNecessary:Z

.field protected final mTitleForeground:I

.field protected final mToc:Lcom/google/android/finsky/api/model/DfeToc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/model/BucketedList;IIILjava/lang/String;)V
    .registers 13
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
    .line 108
    .local p5, bucketedList:Lcom/google/android/finsky/api/model/BucketedList;,"Lcom/google/android/finsky/api/model/BucketedList<*>;"
    invoke-virtual {p5}, Lcom/google/android/finsky/api/model/BucketedList;->inErrorState()Z

    move-result v1

    invoke-virtual {p5}, Lcom/google/android/finsky/api/model/BucketedList;->isMoreAvailable()Z

    move-result v2

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/google/android/finsky/adapters/PaginatedListAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;ZZ)V

    .line 91
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mSwitchToCustomLayoutIfNecessary:Z

    .line 109
    iput-object p3, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 110
    iput-object p9, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mCurrentPageUrl:Ljava/lang/String;

    .line 111
    iput-object p5, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    .line 112
    iget-object v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/api/model/BucketedList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 113
    iput p6, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mColumnCount:I

    .line 114
    iput p7, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mRowCount:I

    .line 115
    iput p8, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mCellLayoutId:I

    .line 116
    iput-object p4, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 120
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0a0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mLoadingForeground:I

    .line 121
    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mTitleForeground:I

    .line 122
    const v1, 0x7f0b000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mHeaderImageMaxHeight:I

    .line 123
    invoke-static {p1}, Lcom/google/android/finsky/utils/VendingUtils;->getScreenDimensions(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mSmallestWidth:I

    .line 124
    return-void
.end method

.method private bindArtistPromoLayer(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;)V
    .registers 7
    .parameter "doc"
    .parameter "holder"

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x1

    .line 513
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_14

    .line 514
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/ArtistBucketEntry;

    iput-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistLayer:Lcom/google/android/finsky/layout/ArtistBucketEntry;

    .line 515
    const/4 v0, 0x0

    iput-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistStub:Landroid/view/ViewStub;

    .line 517
    :cond_14
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistLayer:Lcom/google/android/finsky/layout/ArtistBucketEntry;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/ArtistBucketEntry;->setVisibility(I)V

    .line 519
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    if-eqz v0, :cond_23

    .line 520
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setVisibility(I)V

    .line 522
    :cond_23
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->magazineLayer:Lcom/google/android/finsky/layout/MagazineBucketEntry;

    if-eqz v0, :cond_2c

    .line 523
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->magazineLayer:Lcom/google/android/finsky/layout/MagazineBucketEntry;

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->setVisibility(I)V

    .line 526
    :cond_2c
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistLayer:Lcom/google/android/finsky/layout/ArtistBucketEntry;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/layout/ArtistBucketEntry;->setDocument(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;)V

    .line 527
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistLayer:Lcom/google/android/finsky/layout/ArtistBucketEntry;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v2, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mCurrentPageUrl:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getClickListener(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/ArtistBucketEntry;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistLayer:Lcom/google/android/finsky/layout/ArtistBucketEntry;

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/layout/ArtistBucketEntry;->setClickable(Z)V

    .line 530
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistLayer:Lcom/google/android/finsky/layout/ArtistBucketEntry;

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/layout/ArtistBucketEntry;->setFocusable(Z)V

    .line 531
    return-void
.end method

.method private bindBucketEntries(Lcom/google/android/finsky/api/model/Bucket;Landroid/view/ViewGroup;)V
    .registers 13
    .parameter "bucket"
    .parameter "view"

    .prologue
    const/4 v9, 0x0

    .line 214
    const v7, 0x7f080060

    invoke-virtual {p2, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 215
    .local v0, bucketRowHolder:Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    .local v5, row:I
    :goto_b
    iget v7, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mRowCount:I

    if-ge v5, v7, :cond_55

    .line 216
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 217
    .local v6, rowOfDocuments:Landroid/widget/LinearLayout;
    invoke-direct {p0, p1}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getDisplayedRowsForBucket(Lcom/google/android/finsky/api/model/Bucket;)I

    move-result v7

    if-lt v5, v7, :cond_23

    .line 218
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 215
    :cond_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 220
    :cond_23
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 221
    invoke-direct {p0, p1, v5}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getDisplayedColumnsForBucket(Lcom/google/android/finsky/api/model/Bucket;I)I

    move-result v2

    .line 222
    .local v2, displayedColumns:I
    const/4 v1, 0x0

    .local v1, column:I
    :goto_2b
    iget v7, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mColumnCount:I

    if-ge v1, v7, :cond_20

    .line 223
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 224
    .local v3, docEntry:Landroid/view/View;
    if-ge v1, v2, :cond_50

    .line 225
    iget v7, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mColumnCount:I

    mul-int/2addr v7, v5

    add-int v4, v7, v1

    .line 226
    .local v4, itemIndex:I
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Bucket;->getChildren()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/api/model/Document;

    move-object v8, v3

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v7, v4, v8}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->bindRowEntry(Lcom/google/android/finsky/api/model/Bucket;Lcom/google/android/finsky/api/model/Document;ILandroid/view/ViewGroup;)V

    .line 228
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 222
    .end local v4           #itemIndex:I
    :goto_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 230
    :cond_50
    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4d

    .line 235
    .end local v1           #column:I
    .end local v2           #displayedColumns:I
    .end local v3           #docEntry:Landroid/view/View;
    .end local v6           #rowOfDocuments:Landroid/widget/LinearLayout;
    :cond_55
    return-void
.end method

.method private bindBucketHeader(Lcom/google/android/finsky/api/model/Bucket;Landroid/view/ViewGroup;)V
    .registers 13
    .parameter "bucket"
    .parameter "bucketView"

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 599
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3b

    .line 600
    new-instance v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;

    invoke-direct {v1, v9}, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;-><init>(Lcom/google/android/finsky/adapters/BucketedListAdapter$1;)V

    .line 601
    .local v1, holder:Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;
    const v4, 0x7f080057

    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->bucketHeader:Landroid/view/View;

    .line 602
    const v4, 0x7f08005b

    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->searchResultsView:Landroid/widget/TextView;

    .line 603
    const v4, 0x7f08005c

    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->corpusStrip:Landroid/view/View;

    .line 604
    const v4, 0x7f08005a

    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->sectionHeader:Landroid/widget/TextView;

    .line 605
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 607
    .end local v1           #holder:Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;
    :cond_3b
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;

    .line 609
    .restart local v1       #holder:Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Bucket;->getChildCount()I

    move-result v4

    if-nez v4, :cond_4d

    .line 610
    iget-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->bucketHeader:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 644
    :cond_4c
    :goto_4c
    return-void

    .line 613
    :cond_4d
    iget-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->bucketHeader:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 614
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->makeHeaderClickListener(Lcom/google/android/finsky/api/model/Bucket;)Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 616
    .local v0, headerClickHandler:Landroid/view/View$OnClickListener;
    iget-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->sectionHeader:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Bucket;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    iget-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->sectionHeader:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Bucket;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 619
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Bucket;->hasMoreItems()Z

    move-result v4

    if-eqz v4, :cond_cb

    .line 620
    iget-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->bucketHeader:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 621
    iget-object v7, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->bucketHeader:Landroid/view/View;

    if-eqz v0, :cond_c7

    move v4, v5

    :goto_7c
    invoke-virtual {v7, v4}, Landroid/view/View;->setClickable(Z)V

    .line 622
    iget-object v7, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->bucketHeader:Landroid/view/View;

    if-eqz v0, :cond_c9

    move v4, v5

    :goto_84
    invoke-virtual {v7, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 629
    :goto_87
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Bucket;->getEstimatedResults()I

    move-result v2

    .line 630
    .local v2, numMatchingAssets:I
    if-lez v2, :cond_db

    .line 631
    iget-object v4, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v7, 0x7f0d

    invoke-virtual {v4, v7, v2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 634
    .local v3, template:Ljava/lang/String;
    iget-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->searchResultsView:Landroid/widget/TextView;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
    iget-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->searchResultsView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 640
    .end local v3           #template:Ljava/lang/String;
    :goto_b3
    iget-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->corpusStrip:Landroid/view/View;

    if-eqz v4, :cond_4c

    .line 641
    iget-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->corpusStrip:Landroid/view/View;

    iget-object v5, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Bucket;->getBackend()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4c

    .end local v2           #numMatchingAssets:I
    :cond_c7
    move v4, v6

    .line 621
    goto :goto_7c

    :cond_c9
    move v4, v6

    .line 622
    goto :goto_84

    .line 624
    :cond_cb
    iget-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->bucketHeader:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 625
    iget-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->bucketHeader:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setClickable(Z)V

    .line 626
    iget-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->bucketHeader:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_87

    .line 637
    .restart local v2       #numMatchingAssets:I
    :cond_db
    iget-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->searchResultsView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b3
.end method

.method private bindDocument(Lcom/google/android/finsky/api/model/Document;Landroid/view/ViewGroup;ZI)V
    .registers 12
    .parameter "doc"
    .parameter "docEntry"
    .parameter "isOrdered"
    .parameter "itemIndex"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 472
    invoke-direct {p0, p2}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getConvertView(Landroid/view/ViewGroup;)Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;

    move-result-object v1

    .line 474
    .local v1, holder:Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v0

    .line 475
    .local v0, docType:I
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2b

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getArtistDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v5

    if-eqz v5, :cond_2b

    move v2, v4

    .line 477
    .local v2, isArtist:Z
    :goto_18
    const/16 v5, 0x10

    if-eq v0, v5, :cond_20

    const/16 v5, 0x11

    if-ne v0, v5, :cond_21

    :cond_20
    move v3, v4

    .line 479
    .local v3, isMagazine:Z
    :cond_21
    if-eqz v2, :cond_2d

    iget-boolean v4, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mSwitchToCustomLayoutIfNecessary:Z

    if-eqz v4, :cond_2d

    .line 480
    invoke-direct {p0, p1, v1}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->bindArtistPromoLayer(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;)V

    .line 486
    :goto_2a
    return-void

    .end local v2           #isArtist:Z
    .end local v3           #isMagazine:Z
    :cond_2b
    move v2, v3

    .line 475
    goto :goto_18

    .line 481
    .restart local v2       #isArtist:Z
    .restart local v3       #isMagazine:Z
    :cond_2d
    if-eqz v3, :cond_37

    iget-boolean v4, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mSwitchToCustomLayoutIfNecessary:Z

    if-eqz v4, :cond_37

    .line 482
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->bindMagazinePromoLayer(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;ZI)V

    goto :goto_2a

    .line 484
    :cond_37
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->bindGenericLayer(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;ZI)V

    goto :goto_2a
.end method

.method private bindGenericLayer(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;ZI)V
    .registers 10
    .parameter "doc"
    .parameter "holder"
    .parameter "isOrdered"
    .parameter "itemIndex"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 490
    iget-object v2, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    invoke-virtual {v2, v1}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setVisibility(I)V

    .line 491
    iget-object v2, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistLayer:Lcom/google/android/finsky/layout/ArtistBucketEntry;

    if-eqz v2, :cond_18

    .line 492
    iget-object v2, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistLayer:Lcom/google/android/finsky/layout/ArtistBucketEntry;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/ArtistBucketEntry;->setVisibility(I)V

    .line 493
    iget-object v2, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistLayer:Lcom/google/android/finsky/layout/ArtistBucketEntry;

    invoke-virtual {v2, v4}, Lcom/google/android/finsky/layout/ArtistBucketEntry;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    :cond_18
    iget-object v2, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->magazineLayer:Lcom/google/android/finsky/layout/MagazineBucketEntry;

    if-eqz v2, :cond_26

    .line 496
    iget-object v2, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->magazineLayer:Lcom/google/android/finsky/layout/MagazineBucketEntry;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->setVisibility(I)V

    .line 497
    iget-object v2, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->magazineLayer:Lcom/google/android/finsky/layout/MagazineBucketEntry;

    invoke-virtual {v2, v4}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    :cond_26
    iget-object v2, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    iget-object v3, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mCurrentPageUrl:Ljava/lang/String;

    invoke-virtual {v3, p1, v4}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getClickListener(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    iget-object v2, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    invoke-virtual {v2, v0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setClickable(Z)V

    .line 503
    iget-object v2, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    invoke-virtual {v2, v0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setFocusable(Z)V

    .line 505
    iget-object v2, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    iget-object v3, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v2, v3, p1, v1}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setDocument(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Z)V

    .line 506
    iget-object v2, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    invoke-direct {p0, p1, p3, p4}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getDisplayTitle(Lcom/google/android/finsky/api/model/Document;ZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setTitle(Ljava/lang/String;)V

    .line 507
    iget-object v2, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    iget v3, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mTitleForeground:I

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setTitleColor(I)V

    .line 508
    iget-object v2, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    iget v3, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mColumnCount:I

    rem-int v3, p4, v3

    iget v4, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mColumnCount:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_64

    :goto_60
    invoke-virtual {v2, v0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setRightSeparatorVisibility(Z)V

    .line 510
    return-void

    :cond_64
    move v0, v1

    .line 508
    goto :goto_60
.end method

.method private bindMagazinePromoLayer(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;ZI)V
    .registers 10
    .parameter "doc"
    .parameter "holder"
    .parameter "isOrdered"
    .parameter "itemIndex"

    .prologue
    const/4 v4, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x1

    .line 535
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->magazineStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_14

    .line 536
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->magazineStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/MagazineBucketEntry;

    iput-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->magazineLayer:Lcom/google/android/finsky/layout/MagazineBucketEntry;

    .line 537
    iput-object v4, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->magazineStub:Landroid/view/ViewStub;

    .line 539
    :cond_14
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->magazineLayer:Lcom/google/android/finsky/layout/MagazineBucketEntry;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->setVisibility(I)V

    .line 541
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    if-eqz v0, :cond_23

    .line 542
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setVisibility(I)V

    .line 544
    :cond_23
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistLayer:Lcom/google/android/finsky/layout/ArtistBucketEntry;

    if-eqz v0, :cond_2c

    .line 545
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistLayer:Lcom/google/android/finsky/layout/ArtistBucketEntry;

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/ArtistBucketEntry;->setVisibility(I)V

    .line 548
    :cond_2c
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->magazineLayer:Lcom/google/android/finsky/layout/MagazineBucketEntry;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v0, v1, v4, p1}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->setDocument(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;)V

    .line 549
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->magazineLayer:Lcom/google/android/finsky/layout/MagazineBucketEntry;

    invoke-direct {p0, p1, p3, p4}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getDisplayTitle(Lcom/google/android/finsky/api/model/Document;ZI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->setTitle(Ljava/lang/String;)V

    .line 550
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->magazineLayer:Lcom/google/android/finsky/layout/MagazineBucketEntry;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v2, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mCurrentPageUrl:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getClickListener(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 552
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->magazineLayer:Lcom/google/android/finsky/layout/MagazineBucketEntry;

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->setClickable(Z)V

    .line 553
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->magazineLayer:Lcom/google/android/finsky/layout/MagazineBucketEntry;

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->setFocusable(Z)V

    .line 554
    return-void
.end method

.method private bindMockDocument(Lcom/google/android/finsky/api/model/Bucket;Landroid/view/ViewGroup;)V
    .registers 7
    .parameter "bucket"
    .parameter "view"

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 647
    invoke-direct {p0, p2}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getConvertView(Landroid/view/ViewGroup;)Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;

    move-result-object v0

    .line 648
    .local v0, holder:Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;
    iget-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setVisibility(I)V

    .line 649
    iget-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistLayer:Lcom/google/android/finsky/layout/ArtistBucketEntry;

    if-eqz v1, :cond_15

    .line 650
    iget-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistLayer:Lcom/google/android/finsky/layout/ArtistBucketEntry;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/ArtistBucketEntry;->setVisibility(I)V

    .line 652
    :cond_15
    iget-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->magazineLayer:Lcom/google/android/finsky/layout/MagazineBucketEntry;

    if-eqz v1, :cond_1e

    .line 653
    iget-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->magazineLayer:Lcom/google/android/finsky/layout/MagazineBucketEntry;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->setVisibility(I)V

    .line 656
    :cond_1e
    iget-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Bucket;->getBackend()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setMockDocument(I)V

    .line 657
    iget-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    iget v2, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mLoadingForeground:I

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setTitleColor(I)V

    .line 659
    iget-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 660
    iget-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setClickable(Z)V

    .line 661
    return-void
.end method

.method private bindNoDocument(Lcom/google/android/finsky/api/model/Bucket;Landroid/view/ViewGroup;)V
    .registers 7
    .parameter "bucket"
    .parameter "view"

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 664
    invoke-direct {p0, p2}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getConvertView(Landroid/view/ViewGroup;)Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;

    move-result-object v0

    .line 665
    .local v0, holder:Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;
    iget-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setVisibility(I)V

    .line 666
    iget-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistLayer:Lcom/google/android/finsky/layout/ArtistBucketEntry;

    if-eqz v1, :cond_15

    .line 667
    iget-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistLayer:Lcom/google/android/finsky/layout/ArtistBucketEntry;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/ArtistBucketEntry;->setVisibility(I)V

    .line 669
    :cond_15
    iget-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->magazineLayer:Lcom/google/android/finsky/layout/MagazineBucketEntry;

    if-eqz v1, :cond_1e

    .line 670
    iget-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->magazineLayer:Lcom/google/android/finsky/layout/MagazineBucketEntry;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->setVisibility(I)V

    .line 673
    :cond_1e
    iget-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setNoDocument()V

    .line 675
    iget-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 676
    iget-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setClickable(Z)V

    .line 677
    return-void
.end method

.method private getBucketView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 283
    iget-object v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Bucket;

    .line 284
    .local v0, bucket:Lcom/google/android/finsky/api/model/Bucket;
    if-nez p2, :cond_12

    .line 285
    invoke-direct {p0, v0, p3}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->inflateViewForBucket(Lcom/google/android/finsky/api/model/Bucket;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_12
    move-object v1, p2

    .line 288
    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->bindBucketEntries(Lcom/google/android/finsky/api/model/Bucket;Landroid/view/ViewGroup;)V

    move-object v1, p2

    .line 289
    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->bindBucketHeader(Lcom/google/android/finsky/api/model/Bucket;Landroid/view/ViewGroup;)V

    .line 291
    return-object p2
.end method

.method private getBucketedListCount()I
    .registers 6

    .prologue
    .line 377
    iget-object v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_39

    .line 379
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

    .line 381
    .local v0, count:I
    iget-object v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Bucket;->hasContainerWithBannerTemplate()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 382
    add-int/lit8 v0, v0, 0x1

    .line 384
    :cond_2e
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getFooterMode()Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->NONE:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    if-eq v1, v2, :cond_38

    .line 385
    add-int/lit8 v0, v0, 0x1

    .line 390
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

    .line 399
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getBucketedListCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 401
    .local v0, lastRow:I
    if-ne p1, v0, :cond_40

    .line 402
    sget-object v3, Lcom/google/android/finsky/adapters/BucketedListAdapter$3;->$SwitchMap$com$google$android$finsky$adapters$PaginatedListAdapter$FooterMode:[I

    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getFooterMode()Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_60

    .line 415
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

    .line 404
    :pswitch_32
    const/4 v1, 0x2

    .line 428
    :cond_33
    :goto_33
    return v1

    .line 406
    :pswitch_34
    const/4 v1, 0x3

    goto :goto_33

    .line 409
    :pswitch_36
    iget-object v3, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketCount()I

    move-result v3

    if-ne v3, v2, :cond_33

    move v1, v2

    .line 410
    goto :goto_33

    .line 419
    :cond_40
    iget-object v3, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketCount()I

    move-result v3

    if-ne v3, v2, :cond_33

    .line 421
    iget-object v3, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Bucket;->hasContainerWithBannerTemplate()Z

    move-result v1

    if-eqz v1, :cond_5e

    if-nez p1, :cond_5e

    .line 423
    const/4 v1, 0x4

    goto :goto_33

    :cond_5e
    move v1, v2

    .line 425
    goto :goto_33

    .line 402
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
    .line 453
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_46

    .line 454
    new-instance v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;-><init>(Lcom/google/android/finsky/adapters/BucketedListAdapter$1;)V

    .line 455
    .local v0, holder:Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;
    const v1, 0x7f08001a

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/OverviewBucketEntry;

    iput-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    .line 457
    const v1, 0x7f08007b

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistStub:Landroid/view/ViewStub;

    .line 458
    const v1, 0x7f080011

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/ArtistBucketEntry;

    iput-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistLayer:Lcom/google/android/finsky/layout/ArtistBucketEntry;

    .line 460
    const v1, 0x7f08007c

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->magazineStub:Landroid/view/ViewStub;

    .line 461
    const v1, 0x7f080170

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/MagazineBucketEntry;

    iput-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->magazineLayer:Lcom/google/android/finsky/layout/MagazineBucketEntry;

    .line 463
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 465
    .end local v0           #holder:Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;
    :cond_46
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;

    return-object v1
.end method

.method private getDisplayTitle(Lcom/google/android/finsky/api/model/Document;ZI)Ljava/lang/String;
    .registers 10
    .parameter "doc"
    .parameter "isOrdered"
    .parameter "itemIndex"

    .prologue
    .line 557
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, title:Ljava/lang/String;
    if-eqz p2, :cond_22

    .line 559
    iget-object v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070256

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, p3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 562
    :cond_22
    return-object v0
.end method

.method private getDisplayedColumnsForBucket(Lcom/google/android/finsky/api/model/Bucket;I)I
    .registers 5
    .parameter "bucket"
    .parameter "row"

    .prologue
    .line 278
    invoke-direct {p0, p1}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getDisplayedRowsForBucket(Lcom/google/android/finsky/api/model/Bucket;)I

    move-result v0

    if-ge p2, v0, :cond_15

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Bucket;->getChildCount()I

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

.method private getDisplayedRowsForBucket(Lcom/google/android/finsky/api/model/Bucket;)I
    .registers 6
    .parameter "bucket"

    .prologue
    .line 271
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Bucket;->getChildCount()I

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
    const/4 v3, 0x0

    .line 321
    if-nez p1, :cond_a

    .line 322
    const v0, 0x7f040029

    invoke-virtual {p0, v0, p2, v3}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 325
    :cond_a
    const v0, 0x7f08007d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 326
    .local v6, background:Landroid/view/View;
    const v0, 0x7f08007e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 327
    .local v8, imageView:Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Bucket;->getContainerWithBannerTemplate()Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;

    move-result-object v10

    .line 329
    .local v10, template:Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;
    iget-object v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Bucket;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v7

    .line 330
    .local v7, bucketDoc:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual {v10}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;->getColorThemeArgb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 331
    invoke-virtual {v10}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;->getColorThemeArgb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 334
    :cond_4f
    iget v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mSmallestWidth:I

    iget v2, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mHeaderImageMaxHeight:I

    invoke-static {v7, v3, v0, v2}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getPageHeaderBannerUrlFromDocument(Lcom/google/android/finsky/api/model/Document;ZII)Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, imageUrl:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_74

    .line 337
    iget-object v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/finsky/adapters/BucketedListAdapter$1;

    invoke-direct {v3, p0, v8}, Lcom/google/android/finsky/adapters/BucketedListAdapter$1;-><init>(Lcom/google/android/finsky/adapters/BucketedListAdapter;Landroid/widget/ImageView;)V

    iget v4, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mSmallestWidth:I

    iget v5, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mHeaderImageMaxHeight:I

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v9

    .line 344
    .local v9, newContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    invoke-virtual {v9}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 347
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

    .line 354
    if-nez p2, :cond_21

    .line 357
    const v2, 0x7f04001f

    invoke-virtual {p0, v2, p3, v5}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 358
    const/4 v0, 0x0

    .local v0, column:I
    :goto_b
    iget v2, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mColumnCount:I

    if-ge v0, v2, :cond_21

    move-object v2, p2

    .line 359
    check-cast v2, Landroid/view/ViewGroup;

    iget v4, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mCellLayoutId:I

    move-object v3, p2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {p0, v4, v3, v5}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 363
    .end local v0           #column:I
    :cond_21
    const/4 v0, 0x0

    .restart local v0       #column:I
    :goto_22
    iget v2, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mColumnCount:I

    if-ge v0, v2, :cond_4c

    .line 364
    iget v2, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mColumnCount:I

    mul-int/2addr v2, p1

    add-int v1, v2, v0

    .line 365
    .local v1, itemIndex:I
    iget-object v2, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/api/model/Document;

    move-object v4, p2

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->bindRowEntry(Lcom/google/android/finsky/api/model/Bucket;Lcom/google/android/finsky/api/model/Document;ILandroid/view/ViewGroup;)V

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 369
    .end local v1           #itemIndex:I
    :cond_4c
    return-object p2
.end method

.method private getPaginatedRowIndex(I)I
    .registers 4
    .parameter "position"

    .prologue
    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, decrement:I
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->hasHeader()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 172
    add-int/lit8 v0, v0, 0x1

    .line 174
    :cond_9
    sub-int v1, p1, v0

    return v1
.end method

.method private hasHeader()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 181
    iget-object v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketCount()I

    move-result v0

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Bucket;->hasContainerWithBannerTemplate()Z

    move-result v0

    if-eqz v0, :cond_1e

    move v0, v1

    :goto_1d
    return v0

    :cond_1e
    move v0, v2

    goto :goto_1d
.end method

.method private inflateViewForBucket(Lcom/google/android/finsky/api/model/Bucket;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .parameter "bucket"
    .parameter "parent"

    .prologue
    const/4 v11, 0x0

    .line 298
    const v9, 0x7f040020

    invoke-virtual {p0, v9, p2, v11}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 300
    .local v8, view:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getBucketHeaderLayoutId(Lcom/google/android/finsky/api/model/Bucket;)I

    move-result v2

    .line 301
    .local v2, bucketHeaderLayoutId:I
    const v9, 0x7f08005f

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 302
    .local v1, bucketHeaderHolder:Landroid/view/ViewGroup;
    invoke-virtual {p0, v2, p2, v11}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 303
    .local v0, bucketHeader:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 305
    const v9, 0x7f080060

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 306
    .local v3, bucketItemHolder:Landroid/view/ViewGroup;
    const/4 v6, 0x0

    .local v6, row:I
    :goto_28
    iget v9, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mRowCount:I

    if-ge v6, v9, :cond_54

    .line 307
    const v9, 0x7f04001f

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10, v11}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 309
    .local v7, rowOfBucketEntries:Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_37
    iget v9, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mColumnCount:I

    if-ge v5, v9, :cond_4e

    .line 310
    iget v9, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mCellLayoutId:I

    invoke-virtual {p0, v9, v7, v11}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 312
    .local v4, emptyEntry:Landroid/view/ViewGroup;
    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 313
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 309
    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    .line 315
    .end local v4           #emptyEntry:Landroid/view/ViewGroup;
    :cond_4e
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 306
    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    .line 317
    .end local v5           #i:I
    .end local v7           #rowOfBucketEntries:Landroid/widget/LinearLayout;
    :cond_54
    return-object v8
.end method


# virtual methods
.method protected bindRowEntry(Lcom/google/android/finsky/api/model/Bucket;Lcom/google/android/finsky/api/model/Document;ILandroid/view/ViewGroup;)V
    .registers 8
    .parameter "bucket"
    .parameter "document"
    .parameter "itemIndex"
    .parameter "docEntry"

    .prologue
    const/4 v1, 0x0

    .line 247
    if-nez p2, :cond_2b

    .line 249
    iget-object v2, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/BucketedList;->getCount()I

    move-result v2

    if-ge p3, v2, :cond_12

    .line 250
    invoke-virtual {p4, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 251
    invoke-direct {p0, p1, p4}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->bindMockDocument(Lcom/google/android/finsky/api/model/Bucket;Landroid/view/ViewGroup;)V

    .line 265
    :goto_11
    return-void

    .line 253
    :cond_12
    iget-object v2, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/BucketedList;->getCount()I

    move-result v2

    if-ne p3, v2, :cond_24

    const/4 v0, 0x1

    .line 254
    .local v0, isAfterTheLastDocument:Z
    :goto_1b
    if-eqz v0, :cond_26

    .line 255
    invoke-virtual {p4, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 256
    invoke-direct {p0, p1, p4}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->bindNoDocument(Lcom/google/android/finsky/api/model/Bucket;Landroid/view/ViewGroup;)V

    goto :goto_11

    .end local v0           #isAfterTheLastDocument:Z
    :cond_24
    move v0, v1

    .line 253
    goto :goto_1b

    .line 258
    .restart local v0       #isAfterTheLastDocument:Z
    :cond_26
    const/4 v1, 0x4

    invoke-virtual {p4, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_11

    .line 262
    .end local v0           #isAfterTheLastDocument:Z
    :cond_2b
    invoke-virtual {p4, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 263
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Bucket;->isOrdered()Z

    move-result v1

    invoke-direct {p0, p2, p4, v1, p3}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->bindDocument(Lcom/google/android/finsky/api/model/Document;Landroid/view/ViewGroup;ZI)V

    goto :goto_11
.end method

.method protected getBucketHeaderLayoutId(Lcom/google/android/finsky/api/model/Bucket;)I
    .registers 3
    .parameter "bucket"

    .prologue
    .line 595
    const v0, 0x7f04001c

    return v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getBucketedListCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 4
    .parameter "position"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 153
    iget-object v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/api/model/BucketedList;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 156
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
    .line 187
    invoke-direct {p0, p1}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getBucketedListItemViewType(I)I

    move-result v0

    return v0
.end method

.method protected getLastRequestError()Ljava/lang/String;
    .registers 3

    .prologue
    .line 196
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
    .line 132
    invoke-direct {p0, p1}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getBucketedListItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_42

    .line 144
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

    .line 134
    :pswitch_24
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 142
    :goto_28
    return-object v0

    .line 136
    :pswitch_29
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getBucketView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_28

    .line 138
    :pswitch_2e
    invoke-direct {p0, p1}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getPaginatedRowIndex(I)I

    move-result v0

    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getPaginatedRow(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_28

    .line 140
    :pswitch_37
    invoke-virtual {p0, p2, p3}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getLoadingFooterView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_28

    .line 142
    :pswitch_3c
    invoke-virtual {p0, p2, p3}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getErrorFooterView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_28

    .line 132
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
    .line 435
    const/4 v0, 0x5

    return v0
.end method

.method protected ignoreCustomTiles()V
    .registers 2

    .prologue
    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mSwitchToCustomLayoutIfNecessary:Z

    .line 128
    return-void
.end method

.method protected isMoreDataAvailable()Z
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/BucketedList;->isMoreAvailable()Z

    move-result v0

    return v0
.end method

.method protected makeHeaderClickListener(Lcom/google/android/finsky/api/model/Bucket;)Landroid/view/View$OnClickListener;
    .registers 3
    .parameter "bucket"

    .prologue
    .line 570
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Bucket;->getBrowseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 571
    new-instance v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/adapters/BucketedListAdapter$2;-><init>(Lcom/google/android/finsky/adapters/BucketedListAdapter;Lcom/google/android/finsky/api/model/Bucket;)V

    .line 579
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/BucketedList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 192
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 440
    return-void
.end method

.method protected retryLoadingItems()V
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/BucketedList;->retryLoadItems()V

    .line 207
    return-void
.end method
