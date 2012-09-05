.class public Lcom/google/android/finsky/fragments/BucketedListBinder;
.super Lcom/google/android/finsky/fragments/ViewBinder;
.source "BucketedListBinder.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/fragments/ViewBinder",
        "<",
        "Lcom/google/android/finsky/api/model/BucketedList",
        "<*>;>;",
        "Lcom/android/volley/Response$ErrorListener;",
        "Lcom/google/android/finsky/api/model/OnDataChangedListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/finsky/adapters/BucketedListAdapter;

.field private final mCellLayoutId:I

.field private mContentLayout:Landroid/view/ViewGroup;

.field private mHasLoadedAtLeastOnce:Z

.field private mListView:Landroid/widget/ListView;

.field private mToc:Lcom/google/android/finsky/api/model/DfeToc;


# direct methods
.method public constructor <init>(ILcom/google/android/finsky/api/model/DfeToc;)V
    .registers 3
    .parameter "cellLayoutId"
    .parameter "toc"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/ViewBinder;-><init>()V

    .line 35
    iput p1, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mCellLayoutId:I

    .line 36
    iput-object p2, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    .line 37
    return-void
.end method

.method private detachFromData()V
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mData:Ljava/lang/Object;

    if-eqz v0, :cond_15

    .line 95
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/BucketedList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 96
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/BucketedList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mData:Ljava/lang/Object;

    .line 99
    :cond_15
    return-void
.end method

.method private getAdapterForBucketType(Lcom/google/android/finsky/model/Bucket;IILjava/lang/String;Landroid/os/Bundle;)Lcom/google/android/finsky/adapters/BucketedListAdapter;
    .registers 18
    .parameter "bucket"
    .parameter "columnCount"
    .parameter "rowCount"
    .parameter "currentPageUrl"
    .parameter "savedInstanceState"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_46

    invoke-virtual {p1}, Lcom/google/android/finsky/model/Bucket;->hasEditorialSeriesContainer()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 120
    invoke-virtual {p1}, Lcom/google/android/finsky/model/Bucket;->getEditorialSeriesContainer()Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;

    move-result-object v11

    .line 121
    .local v11, templateData:Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mContentLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0800f7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/google/android/finsky/layout/EditorialPageHeader;

    .line 123
    .local v10, pageHeaderPanel:Lcom/google/android/finsky/layout/EditorialPageHeader;
    invoke-virtual {v11}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->getSeriesTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->getSeriesSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->getColorThemeArgb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v0, v1, v2}, Lcom/google/android/finsky/layout/EditorialPageHeader;->showSeriesInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mNavManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v4, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    iget-object v6, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mData:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/finsky/api/model/BucketedList;

    move-object v5, p1

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/model/Bucket;Lcom/google/android/finsky/api/model/BucketedList;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 129
    .end local v10           #pageHeaderPanel:Lcom/google/android/finsky/layout/EditorialPageHeader;
    .end local v11           #templateData:Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;
    :goto_45
    return-object v0

    :cond_46
    new-instance v0, Lcom/google/android/finsky/adapters/BucketedListAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mNavManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v4, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    iget-object v5, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mData:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/finsky/api/model/BucketedList;

    iget v8, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mCellLayoutId:I

    move v6, p2

    move v7, p3

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/google/android/finsky/adapters/BucketedListAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/model/BucketedList;IIILjava/lang/String;)V

    goto :goto_45
.end method


# virtual methods
.method public bind(Landroid/view/ViewGroup;IILcom/google/android/finsky/model/Bucket;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 14
    .parameter "root"
    .parameter "columnCount"
    .parameter "rowCount"
    .parameter "bucket"
    .parameter "currentPageUrl"
    .parameter "savedInstanceState"

    .prologue
    const v6, 0x7f080144

    .line 52
    iput-object p1, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mContentLayout:Landroid/view/ViewGroup;

    .line 53
    const v0, 0x7f080059

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mListView:Landroid/widget/ListView;

    .line 54
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 56
    if-nez p4, :cond_24

    .line 57
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mContentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 75
    :goto_23
    return-void

    .line 61
    :cond_24
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mAdapter:Lcom/google/android/finsky/adapters/BucketedListAdapter;

    if-eqz v0, :cond_2d

    .line 62
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mAdapter:Lcom/google/android/finsky/adapters/BucketedListAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->onDestroyView()V

    :cond_2d
    move-object v0, p0

    move-object v1, p4

    move v2, p2

    move v3, p3

    move-object v4, p5

    move-object v5, p6

    .line 65
    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/fragments/BucketedListBinder;->getAdapterForBucketType(Lcom/google/android/finsky/model/Bucket;IILjava/lang/String;Landroid/os/Bundle;)Lcom/google/android/finsky/adapters/BucketedListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mAdapter:Lcom/google/android/finsky/adapters/BucketedListAdapter;

    .line 69
    iget-boolean v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mHasLoadedAtLeastOnce:Z

    if-eqz v0, :cond_4b

    .line 70
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 74
    :goto_43
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mAdapter:Lcom/google/android/finsky/adapters/BucketedListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_23

    .line 72
    :cond_4b
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mContentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_43
.end method

.method public onDataChanged()V
    .registers 4

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mHasLoadedAtLeastOnce:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_19

    .line 88
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mContentLayout:Landroid/view/ViewGroup;

    const v2, 0x7f080144

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mHasLoadedAtLeastOnce:Z

    .line 91
    :cond_19
    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/BucketedListBinder;->detachFromData()V

    .line 103
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mAdapter:Lcom/google/android/finsky/adapters/BucketedListAdapter;

    if-eqz v0, :cond_f

    .line 104
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mAdapter:Lcom/google/android/finsky/adapters/BucketedListAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->onDestroyView()V

    .line 105
    iput-object v1, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mAdapter:Lcom/google/android/finsky/adapters/BucketedListAdapter;

    .line 107
    :cond_f
    iput-object v1, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mListView:Landroid/widget/ListView;

    .line 108
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .parameter "error"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_9

    .line 80
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mAdapter:Lcom/google/android/finsky/adapters/BucketedListAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->triggerFooterErrorMode()V

    .line 82
    :cond_9
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mAdapter:Lcom/google/android/finsky/adapters/BucketedListAdapter;

    if-eqz v0, :cond_9

    .line 112
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mAdapter:Lcom/google/android/finsky/adapters/BucketedListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 114
    :cond_9
    return-void
.end method

.method public setData(Lcom/google/android/finsky/api/model/BucketedList;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/api/model/BucketedList",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, data:Lcom/google/android/finsky/api/model/BucketedList;,"Lcom/google/android/finsky/api/model/BucketedList<*>;"
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/BucketedListBinder;->detachFromData()V

    .line 42
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/ViewBinder;->setData(Ljava/lang/Object;)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mHasLoadedAtLeastOnce:Z

    .line 44
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mData:Ljava/lang/Object;

    if-eqz v0, :cond_1b

    .line 45
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/BucketedList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 46
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/BucketedList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 48
    :cond_1b
    return-void
.end method

.method public bridge synthetic setData(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    check-cast p1, Lcom/google/android/finsky/api/model/BucketedList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/fragments/BucketedListBinder;->setData(Lcom/google/android/finsky/api/model/BucketedList;)V

    return-void
.end method
