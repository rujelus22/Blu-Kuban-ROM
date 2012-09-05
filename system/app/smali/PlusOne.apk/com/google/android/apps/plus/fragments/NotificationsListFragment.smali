.class public Lcom/google/android/apps/plus/fragments/NotificationsListFragment;
.super Lcom/google/android/apps/plus/fragments/EsListFragment;
.source "NotificationsListFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/NotificationsListFragment$1;,
        Lcom/google/android/apps/plus/fragments/NotificationsListFragment$ServiceListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/EsListFragment",
        "<",
        "Landroid/widget/ListView;",
        "Lcom/google/android/apps/plus/phone/NotificationsAdapter;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mFirstTime:Z

.field private mProgressView:Landroid/widget/ProgressBar;

.field private final mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->mFirstTime:Z

    .line 45
    new-instance v0, Lcom/google/android/apps/plus/fragments/NotificationsListFragment$ServiceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/NotificationsListFragment$ServiceListener;-><init>(Lcom/google/android/apps/plus/fragments/NotificationsListFragment;Lcom/google/android/apps/plus/fragments/NotificationsListFragment$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 49
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/NotificationsListFragment;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->mProgressView:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->setHasOptionsMenu(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 87
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

    .line 152
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->NOTIFICATIONS_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    .line 153
    .local v2, uri:Landroid/net/Uri;
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/google/android/apps/plus/content/EsNotificationData$NotificationQuery;->PROJECTION:[Ljava/lang/String;

    const-string v6, "timestamp DESC"

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
    .line 106
    const v1, 0x7f03003b

    invoke-super {p0, p1, p2, p3, v1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v0

    .line 109
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/google/android/apps/plus/phone/NotificationsAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/plus/phone/NotificationsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    .line 110
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 116
    const v1, 0x7f07011b

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->setupEmptyView(Landroid/view/View;I)V

    .line 119
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->showEmptyViewProgress(Landroid/view/View;)V

    .line 121
    return-object v0
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 37
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onDestroyView()V
    .registers 1

    .prologue
    .line 37
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onDestroyView()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v2, Lcom/google/android/apps/plus/phone/NotificationsAdapter;

    invoke-virtual {v2, p3}, Lcom/google/android/apps/plus/phone/NotificationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 192
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_d

    .line 206
    :cond_c
    :goto_c
    return-void

    .line 196
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v2, v3, v0}, Lcom/google/android/apps/plus/service/AndroidNotification;->newViewNotificationIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/Cursor;)Landroid/content/Intent;

    move-result-object v1

    .line 198
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_c

    .line 200
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v2, Lcom/google/android/apps/plus/phone/NotificationsAdapter;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/phone/NotificationsAdapter;->isRead()Z

    move-result v2

    if-nez v2, :cond_34

    .line 201
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v2, Lcom/google/android/apps/plus/phone/NotificationsAdapter;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/phone/NotificationsAdapter;->getNotificationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/google/android/apps/plus/service/EsService;->markNotificationAsRead(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Ljava/lang/Integer;

    .line 204
    :cond_34
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_c
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
    .line 162
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/NotificationsAdapter;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/phone/NotificationsAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 164
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->restoreScrollPosition()V

    .line 166
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1e

    .line 167
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->showContent(Landroid/view/View;)V

    .line 174
    :goto_17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->mFirstTime:Z

    .line 176
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->onAsyncData()V

    .line 177
    return-void

    .line 168
    :cond_1e
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->mFirstTime:Z

    if-eqz v0, :cond_26

    .line 169
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->refreshNotifications()V

    goto :goto_17

    .line 171
    :cond_26
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->showEmptyView(Landroid/view/View;)V

    goto :goto_17
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 184
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 5
    .parameter "newIntent"

    .prologue
    .line 95
    const-string v0, "account"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 97
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 98
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 138
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onPause()V

    .line 139
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 141
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 143
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/service/EsService;->tellServerNotificationsWereRead(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/Integer;

    .line 145
    :cond_1b
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 129
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onResume()V

    .line 130
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 131
    return-void
.end method

.method public bridge synthetic onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
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
    .line 37
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onScroll(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method public bridge synthetic onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method public refreshNotifications()V
    .registers 3

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/service/EsService;->syncNotifications(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 214
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->updateSpinner(Landroid/widget/ProgressBar;)V

    .line 215
    return-void
.end method

.method public setProgressBar(Landroid/widget/ProgressBar;)V
    .registers 3
    .parameter "progressView"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->mProgressView:Landroid/widget/ProgressBar;

    .line 72
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->updateSpinner(Landroid/widget/ProgressBar;)V

    .line 73
    return-void
.end method
