.class public Lcom/google/android/apps/plus/fragments/PeopleListFragment;
.super Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;
.source "PeopleListFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/PeopleListFragment$OnPersonSelectedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;

.field private mDataLoaded:Z

.field private mSelectionListener:Lcom/google/android/apps/plus/fragments/PeopleListFragment$OnPersonSelectedListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method public activate()V
    .registers 4

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleListFragment;->isError()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 206
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 208
    :cond_f
    return-void
.end method

.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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
    .line 71
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;

    return-object v0
.end method

.method protected getEmptyText()I
    .registers 2

    .prologue
    .line 181
    const v0, 0x7f070160

    return v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 109
    const v2, 0x7f03005b

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 110
    .local v1, view:Landroid/view/View;
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 111
    .local v0, listView:Landroid/widget/ListView;
    const v2, 0x7f030028

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 112
    return-object v1
.end method

.method protected isEmpty()Z
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleListFragment;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

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
    .line 173
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleListFragment;->mDataLoaded:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected isLoaded()Z
    .registers 2

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleListFragment;->mDataLoaded:Z

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 9
    .parameter "activity"

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->onAttach(Landroid/app/Activity;)V

    .line 88
    new-instance v0, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PeopleListFragment;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;-><init>(Landroid/content/Context;IIIILcom/google/android/apps/plus/fragments/CircleNameResolver;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;

    .line 91
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 9
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
    .line 120
    new-instance v0, Lcom/google/android/apps/plus/fragments/PeopleListLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleListFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "person_id"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "gaia_id"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "name"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "packed_circle_ids"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/fragments/PeopleListLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onInitLoaders(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 99
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
    .line 189
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_12

    .line 190
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleListFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/phone/Intents;->getSuggestedPeopleActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/PeopleListFragment;->startActivity(Landroid/content/Intent;)V

    .line 202
    :cond_11
    :goto_11
    return-void

    .line 194
    :cond_12
    add-int/lit8 p3, p3, -0x1

    .line 195
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;

    invoke-virtual {v2, p3}, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 196
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_11

    .line 200
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, personId:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleListFragment;->mSelectionListener:Lcom/google/android/apps/plus/fragments/PeopleListFragment$OnPersonSelectedListener;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/google/android/apps/plus/fragments/PeopleListFragment$OnPersonSelectedListener;->onPersonSelected(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V

    goto :goto_11
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
    .line 131
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleListFragment;->mDataLoaded:Z

    .line 132
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 133
    const/4 v0, 0x2

    invoke-virtual {p0, p2, v0}, Lcom/google/android/apps/plus/fragments/PeopleListFragment;->preloadAvatars(Landroid/database/Cursor;I)V

    .line 134
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleListFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PeopleListFragment;->updateView(Landroid/view/View;)V

    .line 135
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/PeopleListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 157
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public setOnPersonSelectedListener(Lcom/google/android/apps/plus/fragments/PeopleListFragment$OnPersonSelectedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleListFragment;->mSelectionListener:Lcom/google/android/apps/plus/fragments/PeopleListFragment$OnPersonSelectedListener;

    .line 64
    return-void
.end method

.method protected updateView(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->updateView(Landroid/view/View;)V

    .line 146
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleListFragment;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleListFragment;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 147
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleListFragment;->onAsyncData()V

    .line 149
    :cond_14
    return-void
.end method
