.class public Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;
.super Lcom/google/android/finsky/fragments/PageFragment;
.source "MyWishlistFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/finsky/library/Libraries$Listener;


# instance fields
.field private mAdapter:Lcom/google/android/finsky/activities/mywishlist/MyWishlistAdapter;

.field private mBreadcrumb:Ljava/lang/String;

.field private mDfeList:Lcom/google/android/finsky/api/model/DfeList;

.field private final mLibraries:Lcom/google/android/finsky/library/Libraries;

.field private mLibraryUrl:Ljava/lang/String;

.field private mMyWishlistListView:Landroid/widget/ListView;

.field private mNumCellsTall:I

.field private mNumCellsWide:I

.field private final mToc:Lcom/google/android/finsky/api/model/DfeToc;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/PageFragment;-><init>()V

    .line 43
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    .line 44
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/library/Libraries;->addListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    .line 45
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    .line 46
    return-void
.end method

.method private clearState()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 108
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_11

    .line 109
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 110
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 111
    iput-object v1, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    .line 113
    :cond_11
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mAdapter:Lcom/google/android/finsky/activities/mywishlist/MyWishlistAdapter;

    if-eqz v0, :cond_1c

    .line 114
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mAdapter:Lcom/google/android/finsky/activities/mywishlist/MyWishlistAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistAdapter;->onDestroyView()V

    .line 115
    iput-object v1, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mAdapter:Lcom/google/android/finsky/activities/mywishlist/MyWishlistAdapter;

    .line 117
    :cond_1c
    return-void
.end method

.method private getLibraryList()Lcom/google/android/finsky/api/model/DfeList;
    .registers 7

    .prologue
    .line 99
    iget-object v2, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v2

    const-string v3, "u-wl"

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/library/AccountLibrary;->getServerToken(Ljava/lang/String;)[B

    move-result-object v1

    .line 101
    .local v1, serverToken:[B
    iget-object v2, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    const/4 v3, 0x0

    const-string v4, "u-wl"

    const/4 v5, 0x7

    invoke-interface {v2, v3, v4, v5, v1}, Lcom/google/android/finsky/api/DfeApi;->getLibraryUrl(ILjava/lang/String;I[B)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, libraryUrl:Ljava/lang/String;
    iput-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mLibraryUrl:Ljava/lang/String;

    .line 104
    new-instance v2, Lcom/google/android/finsky/api/model/DfeList;

    iget-object v3, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v0, v4}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V

    return-object v2
.end method


# virtual methods
.method public bindAdapter()V
    .registers 11

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDataView:Landroid/view/ViewGroup;

    const v1, 0x7f08005d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mMyWishlistListView:Landroid/widget/ListView;

    .line 135
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mMyWishlistListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 136
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mMyWishlistListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->isReady()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 139
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mAdapter:Lcom/google/android/finsky/activities/mywishlist/MyWishlistAdapter;

    if-nez v0, :cond_43

    .line 140
    new-instance v0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v3, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v4, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    iget-object v5, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    iget v6, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mNumCellsWide:I

    iget v7, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mNumCellsTall:I

    const v8, 0x7f04007f

    iget-object v9, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mLibraryUrl:Ljava/lang/String;

    invoke-direct/range {v0 .. v9}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/model/BucketedList;IIILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mAdapter:Lcom/google/android/finsky/activities/mywishlist/MyWishlistAdapter;

    .line 144
    :cond_43
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mMyWishlistListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mAdapter:Lcom/google/android/finsky/activities/mywishlist/MyWishlistAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 146
    :cond_4a
    return-void
.end method

.method protected getLayoutRes()I
    .registers 2

    .prologue
    .line 73
    const v0, 0x7f04001e

    return v0
.end method

.method protected isDataReady()Z
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    if-nez v0, :cond_6

    .line 79
    const/4 v0, 0x0

    .line 81
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->isReady()Z

    move-result v0

    goto :goto_5
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 52
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f07025d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mBreadcrumb:Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mNumCellsWide:I

    .line 56
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mNumCellsTall:I

    .line 57
    return-void
.end method

.method public onAllLibrariesLoaded()V
    .registers 1

    .prologue
    .line 171
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 150
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mMyWishlistListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v6

    .line 151
    .local v6, position:I
    const/4 v0, -0x1

    if-eq v6, v0, :cond_1d

    .line 152
    const/4 v1, 0x0

    .line 153
    .local v1, document:Lcom/google/android/finsky/api/model/Document;
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mAdapter:Lcom/google/android/finsky/activities/mywishlist/MyWishlistAdapter;

    invoke-virtual {v0, v6}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #document:Lcom/google/android/finsky/api/model/Document;
    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    .line 154
    .restart local v1       #document:Lcom/google/android/finsky/api/model/Document;
    if-eqz v1, :cond_1d

    .line 156
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .end local v1           #document:Lcom/google/android/finsky/api/model/Document;
    :cond_1d
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 164
    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onDestroy()V

    .line 165
    invoke-direct {p0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->clearState()V

    .line 166
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/library/Libraries;->removeListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    .line 167
    return-void
.end method

.method protected onInitViewBinders()V
    .registers 1

    .prologue
    .line 86
    return-void
.end method

.method public onLibraryContentsChanged(Lcom/google/android/finsky/library/AccountLibrary;)V
    .registers 4
    .parameter "library"

    .prologue
    .line 175
    invoke-virtual {p1}, Lcom/google/android/finsky/library/AccountLibrary;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 176
    invoke-direct {p0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->clearState()V

    .line 177
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->requestData()V

    .line 179
    :cond_1a
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 61
    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onStart()V

    .line 63
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->isDataReady()Z

    move-result v0

    if-nez v0, :cond_f

    .line 64
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->switchToLoading()V

    .line 65
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->requestData()V

    .line 68
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->rebindViews()V

    .line 69
    return-void
.end method

.method public rebindActionBar()V
    .registers 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    iget-object v1, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mBreadcrumb:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateBreadcrumb(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateCurrentBackendId(I)V

    .line 130
    return-void
.end method

.method protected rebindViews()V
    .registers 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->rebindActionBar()V

    .line 122
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->bindAdapter()V

    .line 123
    return-void
.end method

.method protected requestData()V
    .registers 2

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->clearState()V

    .line 91
    invoke-direct {p0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->getLibraryList()Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v0

    .line 92
    .local v0, dfeList:Lcom/google/android/finsky/api/model/DfeList;
    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 93
    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 94
    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    .line 95
    iput-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    .line 96
    return-void
.end method
