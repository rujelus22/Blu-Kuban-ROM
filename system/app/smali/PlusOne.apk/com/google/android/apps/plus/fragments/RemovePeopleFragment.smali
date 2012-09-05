.class public Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;
.super Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;
.source "RemovePeopleFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Lcom/google/android/apps/plus/views/CheckableListItemView$OnItemCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/RemovePeopleFragment$RemovePeopleCursorAdapter;,
        Lcom/google/android/apps/plus/fragments/RemovePeopleFragment$OnSelectionChangedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/google/android/apps/plus/views/CheckableListItemView$OnItemCheckedChangeListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/apps/plus/fragments/RemovePeopleFragment$RemovePeopleCursorAdapter;

.field private mCircleId:Ljava/lang/String;

.field private mDataLoaded:Z

.field private mSelectedPersonIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionListener:Lcom/google/android/apps/plus/fragments/RemovePeopleFragment$OnSelectionChangedListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->mSelectedPersonIds:Ljava/util/ArrayList;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->mSelectedPersonIds:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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
    .line 123
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/RemovePeopleFragment$RemovePeopleCursorAdapter;

    return-object v0
.end method

.method protected getEmptyText()I
    .registers 2

    .prologue
    .line 250
    const v0, 0x7f070162

    return v0
.end method

.method public getSelectedPersonIds()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->mSelectedPersonIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 187
    const v0, 0x7f03005b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected isEmpty()Z
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/RemovePeopleFragment$RemovePeopleCursorAdapter;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/RemovePeopleFragment$RemovePeopleCursorAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment$RemovePeopleCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/RemovePeopleFragment$RemovePeopleCursorAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment$RemovePeopleCursorAdapter;->getCursor()Landroid/database/Cursor;

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
    .line 242
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->mDataLoaded:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/RemovePeopleFragment$RemovePeopleCursorAdapter;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/RemovePeopleFragment$RemovePeopleCursorAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment$RemovePeopleCursorAdapter;->getCursor()Landroid/database/Cursor;

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
    .line 131
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->mDataLoaded:Z

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->onAttach(Landroid/app/Activity;)V

    .line 140
    new-instance v0, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment$RemovePeopleCursorAdapter;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment$RemovePeopleCursorAdapter;-><init>(Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/RemovePeopleFragment$RemovePeopleCursorAdapter;

    .line 141
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 148
    if-eqz p1, :cond_26

    .line 149
    const-string v0, "circleId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->mCircleId:Ljava/lang/String;

    .line 150
    const-string v0, "selected_ids"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->mSelectedPersonIds:Ljava/util/ArrayList;

    .line 151
    const-string v0, "request_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 152
    const-string v0, "request_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 156
    :cond_26
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 158
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->setHasOptionsMenu(Z)V

    .line 159
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
    .line 195
    packed-switch p1, :pswitch_data_32

    .line 203
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 197
    :pswitch_5
    new-instance v0, Lcom/google/android/apps/plus/fragments/PeopleListLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

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

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->mCircleId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/fragments/PeopleListLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 195
    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method protected onInitLoaders(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 167
    return-void
.end method

.method public onItemCheckedChanged(Lcom/google/android/apps/plus/views/CheckableListItemView;Z)V
    .registers 5
    .parameter "view"
    .parameter "checked"

    .prologue
    .line 272
    check-cast p1, Lcom/google/android/apps/plus/views/PeopleListItemView;

    .end local p1
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getPersonId()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, personId:Ljava/lang/String;
    if-eqz p2, :cond_1b

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->mSelectedPersonIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 274
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->mSelectedPersonIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->mSelectionListener:Lcom/google/android/apps/plus/fragments/RemovePeopleFragment$OnSelectionChangedListener;

    invoke-interface {v1}, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment$OnSelectionChangedListener;->onSelectionChange()V

    .line 280
    :cond_1a
    :goto_1a
    return-void

    .line 276
    :cond_1b
    if-nez p2, :cond_1a

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->mSelectedPersonIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 277
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->mSelectedPersonIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 278
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->mSelectionListener:Lcom/google/android/apps/plus/fragments/RemovePeopleFragment$OnSelectionChangedListener;

    invoke-interface {v1}, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment$OnSelectionChangedListener;->onSelectionChange()V

    goto :goto_1a
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
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
    .line 258
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/RemovePeopleFragment$RemovePeopleCursorAdapter;

    invoke-virtual {v1, p3}, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment$RemovePeopleCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 259
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_b

    .line 266
    .end local p2
    :cond_a
    :goto_a
    return-void

    .line 263
    .restart local p2
    :cond_b
    instance-of v1, p2, Lcom/google/android/apps/plus/views/PeopleListItemView;

    if-eqz v1, :cond_a

    .line 264
    check-cast p2, Lcom/google/android/apps/plus/views/PeopleListItemView;

    .end local p2
    invoke-virtual {p2}, Lcom/google/android/apps/plus/views/PeopleListItemView;->toggle()V

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
    .line 211
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    .line 218
    :goto_7
    return-void

    .line 213
    :pswitch_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->mDataLoaded:Z

    .line 214
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/RemovePeopleFragment$RemovePeopleCursorAdapter;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment$RemovePeopleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 215
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->updateView(Landroid/view/View;)V

    goto :goto_7

    .line 211
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 226
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 174
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 175
    const-string v0, "circleId"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->mCircleId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v0, "selected_ids"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->mSelectedPersonIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 177
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_20

    .line 178
    const-string v0, "request_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 180
    :cond_20
    return-void
.end method

.method public setCircleId(Ljava/lang/String;)V
    .registers 2
    .parameter "circleId"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->mCircleId:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setOnSelectionChangedListener(Lcom/google/android/apps/plus/fragments/RemovePeopleFragment$OnSelectionChangedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->mSelectionListener:Lcom/google/android/apps/plus/fragments/RemovePeopleFragment$OnSelectionChangedListener;

    .line 112
    return-void
.end method
