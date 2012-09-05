.class public Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;
.super Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;
.source "BlockedPeopleFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Lcom/google/android/apps/plus/fragments/UnblockPersonDialog$PersonUnblocker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment$BlockedPeopleCursorAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/google/android/apps/plus/fragments/UnblockPersonDialog$PersonUnblocker;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment$BlockedPeopleCursorAdapter;

.field private mDataLoaded:Z

.field private final mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

.field private mSetBlockedRequestId:Ljava/lang/Integer;

.field private mShownPersonIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->mShownPersonIds:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 71
    return-void
.end method


# virtual methods
.method protected addCircleMembership(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 5
    .parameter "personId"
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p3, selectedCircleIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->mShownPersonIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 305
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->addCircleMembership(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 306
    return-void
.end method

.method protected getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment$BlockedPeopleCursorAdapter;

    return-object v0
.end method

.method protected getEmptyText()I
    .registers 2

    .prologue
    .line 247
    const v0, 0x7f070245

    return v0
.end method

.method protected handleSetBlockedCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 7
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 328
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->mSetBlockedRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->mSetBlockedRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p1, :cond_d

    .line 344
    :cond_c
    :goto_c
    return-void

    .line 332
    :cond_d
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->mSetBlockedRequestId:Ljava/lang/Integer;

    .line 334
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "req_pending"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 336
    .local v0, frag:Landroid/support/v4/app/DialogFragment;
    if-eqz v0, :cond_21

    .line 337
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 340
    :cond_21
    if-eqz p2, :cond_c

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 341
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f070163

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_c
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 169
    const v0, 0x7f03005b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected isEmpty()Z
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment$BlockedPeopleCursorAdapter;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment$BlockedPeopleCursorAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment$BlockedPeopleCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment$BlockedPeopleCursorAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment$BlockedPeopleCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method protected isError()Z
    .registers 2

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->mDataLoaded:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment$BlockedPeopleCursorAdapter;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment$BlockedPeopleCursorAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment$BlockedPeopleCursorAdapter;->getCursor()Landroid/database/Cursor;

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
    .line 231
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->mDataLoaded:Z

    return v0
.end method

.method public onAddToCircles(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "personId"
    .parameter "name"

    .prologue
    .line 295
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->showCircleMembershipDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->onAttach(Landroid/app/Activity;)V

    .line 135
    new-instance v0, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment$BlockedPeopleCursorAdapter;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment$BlockedPeopleCursorAdapter;-><init>(Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment$BlockedPeopleCursorAdapter;

    .line 136
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 144
    if-eqz p1, :cond_21

    .line 145
    const-string v0, "shown_person_ids"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->mShownPersonIds:Ljava/util/ArrayList;

    .line 146
    const-string v0, "set_blocked_req_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 147
    const-string v0, "set_blocked_req_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->mSetBlockedRequestId:Ljava/lang/Integer;

    .line 150
    :cond_21
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
    .line 193
    new-instance v0, Lcom/google/android/apps/plus/fragments/BlockedPeopleListLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    const/4 v3, 0x6

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

    const-string v5, "blocked"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "profile_type"

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->mShownPersonIds:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/fragments/BlockedPeopleListLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method protected onInitLoaders(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 186
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
    .line 264
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    check-cast p2, Lcom/google/android/apps/plus/views/PeopleListItemView;

    .end local p2
    invoke-virtual {p2}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getPersonId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->startActivity(Landroid/content/Intent;)V

    .line 266
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 6
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
    const/4 v2, 0x1

    .line 204
    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->mDataLoaded:Z

    .line 205
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment$BlockedPeopleCursorAdapter;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment$BlockedPeopleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 209
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->mShownPersonIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 210
    if-eqz p2, :cond_24

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 212
    :cond_15
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->mShownPersonIds:Ljava/util/ArrayList;

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_15

    .line 216
    :cond_24
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->updateView(Landroid/view/View;)V

    .line 217
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 224
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 290
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->onPause()V

    .line 291
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 292
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 273
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->onResume()V

    .line 274
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 276
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->mSetBlockedRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_2e

    .line 277
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->mSetBlockedRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 278
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->mSetBlockedRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v0

    .line 279
    .local v0, result:Lcom/google/android/apps/plus/service/ServiceResult;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->mSetBlockedRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->handleSetBlockedCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 280
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->mSetBlockedRequestId:Ljava/lang/Integer;

    .line 283
    .end local v0           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_2e
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 158
    const-string v0, "shown_person_ids"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->mShownPersonIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 159
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->mSetBlockedRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_19

    .line 160
    const-string v0, "set_blocked_req_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->mSetBlockedRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 162
    :cond_19
    return-void
.end method

.method public onUnblockPerson(Ljava/lang/String;Z)V
    .registers 6
    .parameter "personId"
    .parameter "plusPage"

    .prologue
    .line 309
    new-instance v0, Lcom/google/android/apps/plus/fragments/UnblockPersonDialog;

    invoke-direct {v0, p1, p2}, Lcom/google/android/apps/plus/fragments/UnblockPersonDialog;-><init>(Ljava/lang/String;Z)V

    .line 310
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/UnblockPersonDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/UnblockPersonDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 311
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "unblock_person"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/UnblockPersonDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method public unblockPerson(Ljava/lang/String;)V
    .registers 5
    .parameter "personId"

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/apps/plus/service/EsService;->setPersonBlocked(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->mSetBlockedRequestId:Ljava/lang/Integer;

    .line 321
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f07020f

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->showProgressDialog(Ljava/lang/String;)V

    .line 322
    return-void
.end method
