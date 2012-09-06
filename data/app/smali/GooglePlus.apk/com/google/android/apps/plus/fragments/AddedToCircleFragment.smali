.class public Lcom/google/android/apps/plus/fragments/AddedToCircleFragment;
.super Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;
.source "AddedToCircleFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/AddedToCircleFragment$AddedToCircleQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;

.field private mDataLoaded:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/AddedToCircleFragment;->mDataLoaded:Z

    return-void
.end method


# virtual methods
.method protected getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AddedToCircleFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;

    return-object v0
.end method

.method protected getEmptyText()I
    .registers 2

    .prologue
    .line 167
    const v0, 0x7f0801f9

    return v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 151
    const v0, 0x7f030083

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected isEmpty()Z
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AddedToCircleFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AddedToCircleFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AddedToCircleFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AddedToCircleFragment;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

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
    .line 159
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/AddedToCircleFragment;->mDataLoaded:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AddedToCircleFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AddedToCircleFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;

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
    .line 143
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/AddedToCircleFragment;->mDataLoaded:Z

    return v0
.end method

.method public onActionButtonClick(Lcom/google/android/apps/plus/views/PeopleListItemView;I)V
    .registers 5
    .parameter "view"
    .parameter "action"

    .prologue
    .line 200
    if-nez p2, :cond_a

    .line 201
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getPersonId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/AddedToCircleFragment;->showCircleMembershipDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_a
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 9
    .parameter "activity"

    .prologue
    const/4 v2, 0x1

    .line 57
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->onAttach(Landroid/app/Activity;)V

    .line 58
    new-instance v0, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/AddedToCircleFragment;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;-><init>(Landroid/content/Context;IIIILcom/google/android/apps/plus/fragments/CircleNameResolver;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/AddedToCircleFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;

    .line 61
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AddedToCircleFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->setShowAddButtonIfNeeded(Z)V

    .line 62
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AddedToCircleFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->setOnActionButtonClickListener(Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;)V

    .line 63
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

    .line 90
    packed-switch p1, :pswitch_data_32

    .line 105
    :cond_4
    :goto_4
    return-object v4

    .line 92
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AddedToCircleFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 96
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AddedToCircleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 97
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 98
    .local v2, extras:Landroid/os/Bundle;
    const-string v4, "notif_id"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, notificationId:Ljava/lang/String;
    const-string v4, "circle_action_data"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 100
    .local v1, data:[B
    new-instance v4, Lcom/google/android/apps/plus/phone/AddedToCircleLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AddedToCircleFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v5

    invoke-static {v1}, Lcom/google/android/apps/plus/content/DbCircleActionData;->deserialize([B)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v6

    invoke-direct {v4, v0, v5, v3, v6}, Lcom/google/android/apps/plus/phone/AddedToCircleLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)V

    goto :goto_4

    .line 90
    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 79
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, view:Landroid/view/View;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AddedToCircleFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->setAlwaysHideLetterSections(Z)V

    .line 81
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AddedToCircleFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 82
    return-object v0
.end method

.method protected onInitLoaders(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AddedToCircleFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 114
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
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
    .line 184
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/AddedToCircleFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;

    invoke-virtual {v3, p3}, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 185
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_b

    .line 193
    :goto_a
    return-void

    .line 189
    :cond_b
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, personId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AddedToCircleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AddedToCircleFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 192
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/AddedToCircleFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_a
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
    .line 121
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    .line 128
    :goto_7
    return-void

    .line 123
    :pswitch_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/AddedToCircleFragment;->mDataLoaded:Z

    .line 124
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AddedToCircleFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 125
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AddedToCircleFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/AddedToCircleFragment;->updateView(Landroid/view/View;)V

    goto :goto_7

    .line 121
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/AddedToCircleFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 136
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
