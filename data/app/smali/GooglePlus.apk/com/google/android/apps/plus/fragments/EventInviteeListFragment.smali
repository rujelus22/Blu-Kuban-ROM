.class public Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;
.super Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;
.source "EventInviteeListFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter$OnActionListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter$OnActionListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter;

.field private mDataLoaded:Z

.field private mDataPresent:Z

.field private mEventId:Ljava/lang/String;

.field private final mEventServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

.field private mOwnerId:Ljava/lang/String;

.field private mRefreshNeeded:Z

.field private mRefreshRequestId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;-><init>()V

    .line 48
    new-instance v0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mEventServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    return-void
.end method

.method private configureAdapter()V
    .registers 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter;->setViewerGaiaId(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mOwnerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter;->setEventOwnerId(Ljava/lang/String;)V

    .line 151
    return-void
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter;

    return-object v0
.end method

.method protected getEmptyText()I
    .registers 2

    .prologue
    .line 224
    const v0, 0x7f0801fa

    return v0
.end method

.method protected handleRefreshCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 56
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mRefreshRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mRefreshRequestId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_f

    .line 63
    :cond_e
    :goto_e
    return-void

    .line 60
    :cond_f
    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mRefreshNeeded:Z

    .line 61
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 62
    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mRefreshRequestId:Ljava/lang/Integer;

    goto :goto_e
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 166
    const v0, 0x7f030083

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected isEmpty()Z
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method protected isError()Z
    .registers 2

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mDataLoaded:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mRefreshRequestId:Ljava/lang/Integer;

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method protected isLoaded()Z
    .registers 2

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mDataPresent:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mRefreshRequestId:Ljava/lang/Integer;

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 4
    .parameter "activity"

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->onAttach(Landroid/app/Activity;)V

    .line 144
    new-instance v0, Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-direct {v0, p1, v1}, Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/fragments/CircleNameResolver;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter;

    .line 145
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter;->setOnActionListener(Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter$OnActionListener;)V

    .line 146
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mRefreshNeeded:Z

    .line 107
    if-eqz p1, :cond_2c

    .line 108
    const-string v0, "event_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mEventId:Ljava/lang/String;

    .line 109
    const-string v0, "owner_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mOwnerId:Ljava/lang/String;

    .line 110
    const-string v0, "refresh_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mRefreshRequestId:Ljava/lang/Integer;

    .line 111
    const-string v0, "refresh_needed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mRefreshNeeded:Z

    .line 114
    :cond_2c
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->configureAdapter()V

    .line 115
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 116
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 8
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
    .line 171
    new-instance v0, Lcom/google/android/apps/plus/fragments/EventInviteeListLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mEventId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mOwnerId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/fragments/EventInviteeListLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onInitLoaders(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 156
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
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
    .line 229
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    instance-of v1, p2, Lcom/google/android/apps/plus/views/PeopleListItemView;

    if-eqz v1, :cond_1c

    .line 230
    check-cast p2, Lcom/google/android/apps/plus/views/PeopleListItemView;

    .end local p2
    invoke-virtual {p2}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getGaiaId()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, gaiaId:Ljava/lang/String;
    if-eqz v0, :cond_1c

    .line 232
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityByGaiaIdIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->startActivity(Landroid/content/Intent;)V

    .line 236
    .end local v0           #gaiaId:Ljava/lang/String;
    :cond_1c
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 5
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
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v0, 0x1

    .line 177
    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mDataLoaded:Z

    .line 178
    if-eqz p2, :cond_1e

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1e

    :goto_b
    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mDataPresent:Z

    .line 179
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/fragments/EventInviteeListAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 180
    const/4 v0, 0x3

    invoke-virtual {p0, p2, v0}, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->preloadAvatars(Landroid/database/Cursor;I)V

    .line 181
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->updateView(Landroid/view/View;)V

    .line 182
    return-void

    .line 178
    :cond_1e
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 198
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 97
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->onPause()V

    .line 98
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mEventServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 99
    return-void
.end method

.method public onReInviteInvitee(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "gaiaId"
    .parameter "email"

    .prologue
    .line 247
    const v0, 0x7f08041c

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->showProgressDialog(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mEventId:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->manageEventGuest(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 250
    return-void
.end method

.method public onRemoveInvitee(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "gaiaId"
    .parameter "email"

    .prologue
    .line 240
    const v0, 0x7f08041b

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->showProgressDialog(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mEventId:Ljava/lang/String;

    const/4 v3, 0x1

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->manageEventGuest(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 243
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 79
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->onResume()V

    .line 80
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mEventServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 82
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mRefreshRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_2e

    .line 83
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mRefreshRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 84
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mRefreshRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v0

    .line 85
    .local v0, result:Lcom/google/android/apps/plus/service/ServiceResult;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mRefreshRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->handleRefreshCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 86
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mRefreshRequestId:Ljava/lang/Integer;

    .line 90
    .end local v0           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_2e
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mRefreshNeeded:Z

    if-eqz v1, :cond_35

    .line 91
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->refreshInviteeList()V

    .line 93
    :cond_35
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 121
    const-string v0, "event_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mEventId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v0, "owner_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mOwnerId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mRefreshRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_20

    .line 125
    const-string v0, "refresh_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mRefreshRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 128
    :cond_20
    const-string v0, "refresh_needed"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mRefreshNeeded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 129
    return-void
.end method

.method public refreshInviteeList()V
    .registers 5

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mRefreshRequestId:Ljava/lang/Integer;

    if-nez v0, :cond_19

    .line 205
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mEventId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/service/EsService;->getEventInvitees(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mRefreshRequestId:Ljava/lang/Integer;

    .line 208
    :cond_19
    return-void
.end method

.method public setEventId(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "eventId"
    .parameter "ownerId"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mEventId:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mOwnerId:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 67
    :cond_10
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mEventId:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mOwnerId:Ljava/lang/String;

    .line 70
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->configureAdapter()V

    .line 72
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 74
    :cond_20
    return-void
.end method

.method protected updateView(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 186
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->updateView(Landroid/view/View;)V

    .line 190
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 191
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->onAsyncData()V

    .line 193
    :cond_14
    return-void
.end method
