.class public Lcom/google/android/finsky/adapters/RecommendationsListAdapter;
.super Lcom/google/android/finsky/adapters/BucketedListAdapter;
.source "RecommendationsListAdapter.java"

# interfaces
.implements Lcom/google/android/finsky/layout/RecommendationsBucketEntry$OnDismissalListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/adapters/RecommendationsListAdapter$1;,
        Lcom/google/android/finsky/adapters/RecommendationsListAdapter$RecommendationViewHolder;
    }
.end annotation


# instance fields
.field private mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mDismissedDocIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/model/BucketedList;Ljava/lang/String;Landroid/widget/ListView;)V
    .registers 20
    .parameter "context"
    .parameter "navManager"
    .parameter "dfeApi"
    .parameter "loader"
    .parameter "toc"
    .parameter
    .parameter "currentPageUrl"
    .parameter "listView"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/finsky/navigationmanager/NavigationManager;",
            "Lcom/google/android/finsky/api/DfeApi;",
            "Lcom/google/android/finsky/utils/BitmapLoader;",
            "Lcom/google/android/finsky/api/model/DfeToc;",
            "Lcom/google/android/finsky/api/model/BucketedList",
            "<*>;",
            "Ljava/lang/String;",
            "Landroid/widget/ListView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p6, bucketedList:Lcom/google/android/finsky/api/model/BucketedList;,"Lcom/google/android/finsky/api/model/BucketedList<*>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    const/4 v8, 0x1

    const v9, 0x7f0400ef

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/google/android/finsky/adapters/BucketedListAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/model/BucketedList;IIILjava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/adapters/RecommendationsListAdapter;->mDismissedDocIds:Ljava/util/Set;

    .line 36
    iput-object p3, p0, Lcom/google/android/finsky/adapters/RecommendationsListAdapter;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 37
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/google/android/finsky/adapters/RecommendationsListAdapter;->mListView:Landroid/widget/ListView;

    .line 38
    return-void
.end method

.method private bindDocument(Lcom/google/android/finsky/api/model/Document;Landroid/view/ViewGroup;I)V
    .registers 13
    .parameter "document"
    .parameter "view"
    .parameter "itemIndex"

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 100
    invoke-direct {p0, p2}, Lcom/google/android/finsky/adapters/RecommendationsListAdapter;->getConvertView(Landroid/view/ViewGroup;)Lcom/google/android/finsky/adapters/RecommendationsListAdapter$RecommendationViewHolder;

    move-result-object v7

    .line 101
    .local v7, holder:Lcom/google/android/finsky/adapters/RecommendationsListAdapter$RecommendationViewHolder;
    iget-object v0, v7, Lcom/google/android/finsky/adapters/RecommendationsListAdapter$RecommendationViewHolder;->overviewBucketEntry:Lcom/google/android/finsky/layout/RecommendationsBucketEntry;

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->setVisibility(I)V

    .line 103
    iget-object v0, v7, Lcom/google/android/finsky/adapters/RecommendationsListAdapter$RecommendationViewHolder;->overviewBucketEntry:Lcom/google/android/finsky/layout/RecommendationsBucketEntry;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/RecommendationsListAdapter;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/adapters/RecommendationsListAdapter;->mLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v3, p0, Lcom/google/android/finsky/adapters/RecommendationsListAdapter;->mDismissedDocIds:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    move-object v3, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->setRecommendationsDocument(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;ZLcom/google/android/finsky/layout/RecommendationsBucketEntry$OnDismissalListener;Z)V

    .line 105
    iget-object v0, v7, Lcom/google/android/finsky/adapters/RecommendationsListAdapter$RecommendationViewHolder;->overviewBucketEntry:Lcom/google/android/finsky/layout/RecommendationsBucketEntry;

    invoke-virtual {v0, v8}, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->setClickable(Z)V

    .line 106
    iget-object v0, v7, Lcom/google/android/finsky/adapters/RecommendationsListAdapter$RecommendationViewHolder;->overviewBucketEntry:Lcom/google/android/finsky/layout/RecommendationsBucketEntry;

    invoke-virtual {v0, v8}, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->setFocusable(Z)V

    .line 108
    iget-object v0, v7, Lcom/google/android/finsky/adapters/RecommendationsListAdapter$RecommendationViewHolder;->overviewBucketEntry:Lcom/google/android/finsky/layout/RecommendationsBucketEntry;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->setTitle(Ljava/lang/String;)V

    .line 109
    iget-object v0, v7, Lcom/google/android/finsky/adapters/RecommendationsListAdapter$RecommendationViewHolder;->overviewBucketEntry:Lcom/google/android/finsky/layout/RecommendationsBucketEntry;

    iget v1, p0, Lcom/google/android/finsky/adapters/RecommendationsListAdapter;->mTitleForeground:I

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->setTitleColor(I)V

    .line 110
    iget-object v0, v7, Lcom/google/android/finsky/adapters/RecommendationsListAdapter$RecommendationViewHolder;->overviewBucketEntry:Lcom/google/android/finsky/layout/RecommendationsBucketEntry;

    iget v1, p0, Lcom/google/android/finsky/adapters/RecommendationsListAdapter;->mColumnCount:I

    rem-int v1, p3, v1

    iget v2, p0, Lcom/google/android/finsky/adapters/RecommendationsListAdapter;->mColumnCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_47

    move v4, v8

    :cond_47
    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->setRightSeparatorVisibility(Z)V

    .line 112
    iget-object v0, v7, Lcom/google/android/finsky/adapters/RecommendationsListAdapter$RecommendationViewHolder;->overviewBucketEntry:Lcom/google/android/finsky/layout/RecommendationsBucketEntry;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/RecommendationsListAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v2, p0, Lcom/google/android/finsky/adapters/RecommendationsListAdapter;->mCurrentPageUrl:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getClickListener(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    return-void
.end method

.method private bindMockDocument(Lcom/google/android/finsky/api/model/Bucket;Landroid/view/ViewGroup;)V
    .registers 7
    .parameter "bucket"
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-direct {p0, p2}, Lcom/google/android/finsky/adapters/RecommendationsListAdapter;->getConvertView(Landroid/view/ViewGroup;)Lcom/google/android/finsky/adapters/RecommendationsListAdapter$RecommendationViewHolder;

    move-result-object v0

    .line 80
    .local v0, holder:Lcom/google/android/finsky/adapters/RecommendationsListAdapter$RecommendationViewHolder;
    iget-object v1, v0, Lcom/google/android/finsky/adapters/RecommendationsListAdapter$RecommendationViewHolder;->overviewBucketEntry:Lcom/google/android/finsky/layout/RecommendationsBucketEntry;

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->setVisibility(I)V

    .line 82
    iget-object v1, v0, Lcom/google/android/finsky/adapters/RecommendationsListAdapter$RecommendationViewHolder;->overviewBucketEntry:Lcom/google/android/finsky/layout/RecommendationsBucketEntry;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Bucket;->getBackend()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->setMockDocument(I)V

    .line 83
    iget-object v1, v0, Lcom/google/android/finsky/adapters/RecommendationsListAdapter$RecommendationViewHolder;->overviewBucketEntry:Lcom/google/android/finsky/layout/RecommendationsBucketEntry;

    iget v2, p0, Lcom/google/android/finsky/adapters/RecommendationsListAdapter;->mLoadingForeground:I

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->setTitleColor(I)V

    .line 85
    iget-object v1, v0, Lcom/google/android/finsky/adapters/RecommendationsListAdapter$RecommendationViewHolder;->overviewBucketEntry:Lcom/google/android/finsky/layout/RecommendationsBucketEntry;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v1, v0, Lcom/google/android/finsky/adapters/RecommendationsListAdapter$RecommendationViewHolder;->overviewBucketEntry:Lcom/google/android/finsky/layout/RecommendationsBucketEntry;

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->setClickable(Z)V

    .line 87
    return-void
.end method

.method private bindNoDocument(Lcom/google/android/finsky/api/model/Bucket;Landroid/view/ViewGroup;)V
    .registers 7
    .parameter "bucket"
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 90
    invoke-direct {p0, p2}, Lcom/google/android/finsky/adapters/RecommendationsListAdapter;->getConvertView(Landroid/view/ViewGroup;)Lcom/google/android/finsky/adapters/RecommendationsListAdapter$RecommendationViewHolder;

    move-result-object v0

    .line 91
    .local v0, holder:Lcom/google/android/finsky/adapters/RecommendationsListAdapter$RecommendationViewHolder;
    iget-object v1, v0, Lcom/google/android/finsky/adapters/RecommendationsListAdapter$RecommendationViewHolder;->overviewBucketEntry:Lcom/google/android/finsky/layout/RecommendationsBucketEntry;

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->setVisibility(I)V

    .line 93
    iget-object v1, v0, Lcom/google/android/finsky/adapters/RecommendationsListAdapter$RecommendationViewHolder;->overviewBucketEntry:Lcom/google/android/finsky/layout/RecommendationsBucketEntry;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->setNoDocument()V

    .line 95
    iget-object v1, v0, Lcom/google/android/finsky/adapters/RecommendationsListAdapter$RecommendationViewHolder;->overviewBucketEntry:Lcom/google/android/finsky/layout/RecommendationsBucketEntry;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v1, v0, Lcom/google/android/finsky/adapters/RecommendationsListAdapter$RecommendationViewHolder;->overviewBucketEntry:Lcom/google/android/finsky/layout/RecommendationsBucketEntry;

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->setClickable(Z)V

    .line 97
    return-void
.end method

.method private dismissRecommendationsBucketEntry(Landroid/view/View;Ljava/lang/String;)V
    .registers 5
    .parameter "child"
    .parameter "docId"

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, entry:Lcom/google/android/finsky/layout/RecommendationsBucketEntry;
    instance-of v1, p1, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;

    if-eqz v1, :cond_15

    move-object v0, p1

    .line 153
    check-cast v0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;

    .line 154
    invoke-virtual {v0}, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->getCurrentDocId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 155
    invoke-virtual {v0}, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->dismissCurrentEntry()V

    .line 158
    :cond_15
    return-void
.end method

.method private getConvertView(Landroid/view/ViewGroup;)Lcom/google/android/finsky/adapters/RecommendationsListAdapter$RecommendationViewHolder;
    .registers 4
    .parameter "docEntry"

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1a

    .line 118
    new-instance v0, Lcom/google/android/finsky/adapters/RecommendationsListAdapter$RecommendationViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/finsky/adapters/RecommendationsListAdapter$RecommendationViewHolder;-><init>(Lcom/google/android/finsky/adapters/RecommendationsListAdapter$1;)V

    .line 119
    .local v0, holder:Lcom/google/android/finsky/adapters/RecommendationsListAdapter$RecommendationViewHolder;
    const v1, 0x7f0801dc

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;

    iput-object v1, v0, Lcom/google/android/finsky/adapters/RecommendationsListAdapter$RecommendationViewHolder;->overviewBucketEntry:Lcom/google/android/finsky/layout/RecommendationsBucketEntry;

    .line 121
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 123
    .end local v0           #holder:Lcom/google/android/finsky/adapters/RecommendationsListAdapter$RecommendationViewHolder;
    :cond_1a
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/adapters/RecommendationsListAdapter$RecommendationViewHolder;

    return-object v1
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

    .line 43
    if-nez p2, :cond_2b

    .line 45
    iget-object v2, p0, Lcom/google/android/finsky/adapters/RecommendationsListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/BucketedList;->getCount()I

    move-result v2

    if-ge p3, v2, :cond_12

    .line 46
    invoke-virtual {p4, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 47
    invoke-direct {p0, p1, p4}, Lcom/google/android/finsky/adapters/RecommendationsListAdapter;->bindMockDocument(Lcom/google/android/finsky/api/model/Bucket;Landroid/view/ViewGroup;)V

    .line 61
    :goto_11
    return-void

    .line 49
    :cond_12
    iget-object v2, p0, Lcom/google/android/finsky/adapters/RecommendationsListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/BucketedList;->getCount()I

    move-result v2

    if-ne p3, v2, :cond_24

    const/4 v0, 0x1

    .line 50
    .local v0, isAfterTheLastDocument:Z
    :goto_1b
    if-eqz v0, :cond_26

    .line 51
    invoke-virtual {p4, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 52
    invoke-direct {p0, p1, p4}, Lcom/google/android/finsky/adapters/RecommendationsListAdapter;->bindNoDocument(Lcom/google/android/finsky/api/model/Bucket;Landroid/view/ViewGroup;)V

    goto :goto_11

    .end local v0           #isAfterTheLastDocument:Z
    :cond_24
    move v0, v1

    .line 49
    goto :goto_1b

    .line 54
    .restart local v0       #isAfterTheLastDocument:Z
    :cond_26
    const/4 v1, 0x4

    invoke-virtual {p4, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_11

    .line 58
    .end local v0           #isAfterTheLastDocument:Z
    :cond_2b
    invoke-virtual {p4, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 59
    invoke-direct {p0, p2, p4, p3}, Lcom/google/android/finsky/adapters/RecommendationsListAdapter;->bindDocument(Lcom/google/android/finsky/api/model/Document;Landroid/view/ViewGroup;I)V

    goto :goto_11
.end method

.method public onDestroyView()V
    .registers 5

    .prologue
    .line 66
    iget-object v2, p0, Lcom/google/android/finsky/adapters/RecommendationsListAdapter;->mDismissedDocIds:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 67
    iget-object v2, p0, Lcom/google/android/finsky/adapters/RecommendationsListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/BucketedList;->getListPageUrls()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 68
    .local v1, url:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/finsky/adapters/RecommendationsListAdapter;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lcom/google/android/finsky/api/DfeApi;->invalidateListCache(Ljava/lang/String;Z)V

    goto :goto_12

    .line 71
    .end local v1           #url:Ljava/lang/String;
    :cond_25
    iget-object v2, p0, Lcom/google/android/finsky/adapters/RecommendationsListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/BucketedList;->flushAllPages()V

    .line 74
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_2a
    invoke-super {p0}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->onDestroyView()V

    .line 75
    return-void
.end method

.method public onSuccessfulDismissal(Ljava/lang/String;)V
    .registers 10
    .parameter "docId"

    .prologue
    .line 133
    iget-object v7, p0, Lcom/google/android/finsky/adapters/RecommendationsListAdapter;->mDismissedDocIds:Ljava/util/Set;

    invoke-interface {v7, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v7, p0, Lcom/google/android/finsky/adapters/RecommendationsListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 135
    .local v2, firstPos:I
    iget-object v7, p0, Lcom/google/android/finsky/adapters/RecommendationsListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 136
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_12
    if-ge v3, v1, :cond_3a

    .line 137
    add-int v4, v3, v2

    .line 138
    .local v4, itemPos:I
    iget-object v7, p0, Lcom/google/android/finsky/adapters/RecommendationsListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 139
    .local v0, child:Landroid/view/View;
    instance-of v7, v0, Lcom/google/android/finsky/layout/BucketRow;

    if-eqz v7, :cond_34

    move-object v6, v0

    .line 140
    check-cast v6, Lcom/google/android/finsky/layout/BucketRow;

    .line 141
    .local v6, row:Lcom/google/android/finsky/layout/BucketRow;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_24
    invoke-virtual {v6}, Lcom/google/android/finsky/layout/BucketRow;->getChildCount()I

    move-result v7

    if-ge v5, v7, :cond_37

    .line 142
    invoke-virtual {v6, v5}, Lcom/google/android/finsky/layout/BucketRow;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-direct {p0, v7, p1}, Lcom/google/android/finsky/adapters/RecommendationsListAdapter;->dismissRecommendationsBucketEntry(Landroid/view/View;Ljava/lang/String;)V

    .line 141
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 145
    .end local v5           #j:I
    .end local v6           #row:Lcom/google/android/finsky/layout/BucketRow;
    :cond_34
    invoke-direct {p0, v0, p1}, Lcom/google/android/finsky/adapters/RecommendationsListAdapter;->dismissRecommendationsBucketEntry(Landroid/view/View;Ljava/lang/String;)V

    .line 136
    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 148
    .end local v0           #child:Landroid/view/View;
    .end local v4           #itemPos:I
    :cond_3a
    return-void
.end method
