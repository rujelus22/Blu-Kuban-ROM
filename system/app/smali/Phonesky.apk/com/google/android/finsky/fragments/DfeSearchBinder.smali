.class public Lcom/google/android/finsky/fragments/DfeSearchBinder;
.super Lcom/google/android/finsky/fragments/ViewBinder;
.source "DfeSearchBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/fragments/ViewBinder",
        "<",
        "Lcom/google/android/finsky/api/model/DfeSearch;",
        ">;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/finsky/adapters/SearchAdapter;

.field private final mCellLayoutId:I

.field private mListView:Landroid/widget/ListView;

.field private mToc:Lcom/google/android/finsky/api/model/DfeToc;


# direct methods
.method public constructor <init>(ILcom/google/android/finsky/api/model/DfeToc;)V
    .registers 3
    .parameter "cellLayoutId"
    .parameter "toc"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/ViewBinder;-><init>()V

    .line 24
    iput p1, p0, Lcom/google/android/finsky/fragments/DfeSearchBinder;->mCellLayoutId:I

    .line 25
    iput-object p2, p0, Lcom/google/android/finsky/fragments/DfeSearchBinder;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    .line 26
    return-void
.end method


# virtual methods
.method public bind(Landroid/view/ViewGroup;IILjava/lang/String;)V
    .registers 15
    .parameter "root"
    .parameter "columnCount"
    .parameter "rowCount"
    .parameter "currentPageUrl"

    .prologue
    .line 29
    const v0, 0x7f08005d

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/finsky/fragments/DfeSearchBinder;->mListView:Landroid/widget/ListView;

    .line 30
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DfeSearchBinder;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 32
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DfeSearchBinder;->mAdapter:Lcom/google/android/finsky/adapters/SearchAdapter;

    if-eqz v0, :cond_1a

    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DfeSearchBinder;->mAdapter:Lcom/google/android/finsky/adapters/SearchAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/SearchAdapter;->onDestroyView()V

    .line 35
    :cond_1a
    new-instance v0, Lcom/google/android/finsky/adapters/SearchAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DfeSearchBinder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/DfeSearchBinder;->mNavManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/DfeSearchBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v4, p0, Lcom/google/android/finsky/fragments/DfeSearchBinder;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    iget-object v5, p0, Lcom/google/android/finsky/fragments/DfeSearchBinder;->mData:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/finsky/api/model/DfeSearch;

    iget v8, p0, Lcom/google/android/finsky/fragments/DfeSearchBinder;->mCellLayoutId:I

    move v6, p2

    move v7, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/google/android/finsky/adapters/SearchAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/model/DfeSearch;IIILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/fragments/DfeSearchBinder;->mAdapter:Lcom/google/android/finsky/adapters/SearchAdapter;

    .line 37
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DfeSearchBinder;->mListView:Landroid/widget/ListView;

    const v1, 0x7f08010f

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 38
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DfeSearchBinder;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DfeSearchBinder;->mAdapter:Lcom/google/android/finsky/adapters/SearchAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 39
    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 42
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DfeSearchBinder;->mAdapter:Lcom/google/android/finsky/adapters/SearchAdapter;

    if-eqz v0, :cond_c

    .line 43
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DfeSearchBinder;->mAdapter:Lcom/google/android/finsky/adapters/SearchAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/SearchAdapter;->onDestroyView()V

    .line 44
    iput-object v1, p0, Lcom/google/android/finsky/fragments/DfeSearchBinder;->mAdapter:Lcom/google/android/finsky/adapters/SearchAdapter;

    .line 46
    :cond_c
    iput-object v1, p0, Lcom/google/android/finsky/fragments/DfeSearchBinder;->mListView:Landroid/widget/ListView;

    .line 47
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/fragments/DfeSearchBinder;->setData(Ljava/lang/Object;)V

    .line 48
    return-void
.end method
