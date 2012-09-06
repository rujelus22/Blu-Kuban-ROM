.class public Lcom/google/android/apps/plus/fragments/NetworkTransactionsListFragment;
.super Lcom/google/android/apps/plus/fragments/EsListFragment;
.source "NetworkTransactionsListFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/EsListFragment",
        "<",
        "Landroid/widget/ListView;",
        "Lcom/google/android/apps/plus/phone/NetworkTransactionsAdapter;",
        ">;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mProgressView:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NetworkTransactionsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/NetworkTransactionsListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/service/EsService;->clearNetworkTransactionsData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 123
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NetworkTransactionsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/NetworkTransactionsListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/NetworkTransactionsListFragment;->setHasOptionsMenu(Z)V

    .line 59
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NetworkTransactionsListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 60
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 10
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 88
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->NETWORK_DATA_TRANSACTIONS_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/NetworkTransactionsListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    .line 90
    .local v2, uri:Landroid/net/Uri;
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NetworkTransactionsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/google/android/apps/plus/phone/NetworkTransactionsAdapter$NetworkTransactionsQuery;->PROJECTION:[Ljava/lang/String;

    const-string v6, "time DESC"

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 68
    const v1, 0x7f030063

    invoke-super {p0, p1, p2, p3, v1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/google/android/apps/plus/phone/NetworkTransactionsAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NetworkTransactionsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/plus/phone/NetworkTransactionsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/NetworkTransactionsListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    .line 72
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/NetworkTransactionsListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/NetworkTransactionsListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    const v1, 0x7f0803c6

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/NetworkTransactionsListFragment;->setupEmptyView(Landroid/view/View;I)V

    .line 78
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/NetworkTransactionsListFragment;->showEmptyViewProgress(Landroid/view/View;)V

    .line 80
    return-object v0
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 31
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onDestroyView()V
    .registers 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onDestroyView()V

    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 4
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/NetworkTransactionsListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/NetworkTransactionsAdapter;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/phone/NetworkTransactionsAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 102
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NetworkTransactionsListFragment;->restoreScrollPosition()V

    .line 104
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_18

    .line 105
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NetworkTransactionsListFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/NetworkTransactionsListFragment;->showContent(Landroid/view/View;)V

    .line 109
    :goto_17
    return-void

    .line 107
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NetworkTransactionsListFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/NetworkTransactionsListFragment;->showEmptyView(Landroid/view/View;)V

    goto :goto_17
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/NetworkTransactionsListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public bridge synthetic onPause()V
    .registers 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onPause()V

    return-void
.end method

.method public bridge synthetic onResume()V
    .registers 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onResume()V

    return-void
.end method

.method public bridge synthetic onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 31
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onScroll(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method public bridge synthetic onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method public setProgressBar(Landroid/widget/ProgressBar;)V
    .registers 3
    .parameter "progressView"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/NetworkTransactionsListFragment;->mProgressView:Landroid/widget/ProgressBar;

    .line 45
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/NetworkTransactionsListFragment;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/NetworkTransactionsListFragment;->updateSpinner(Landroid/widget/ProgressBar;)V

    .line 46
    return-void
.end method
