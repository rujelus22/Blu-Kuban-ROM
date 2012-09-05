.class public Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;
.super Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;
.source "SuggestedPeopleFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$ActionModeCallback;,
        Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$SuggestedPeopleCursorAdapter;
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
.field private mActionCallback:Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$ActionModeCallback;

.field private mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

.field private mAdapter:Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$SuggestedPeopleCursorAdapter;

.field private mDataLoaded:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;-><init>()V

    .line 115
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;)Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$SuggestedPeopleCursorAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$SuggestedPeopleCursorAdapter;

    return-object v0
.end method


# virtual methods
.method protected getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$SuggestedPeopleCursorAdapter;

    return-object v0
.end method

.method protected getEmptyText()I
    .registers 2

    .prologue
    .line 351
    const v0, 0x7f070244

    return v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "inflater"
    .parameter "container"

    .prologue
    const/4 v4, 0x0

    .line 271
    const v3, 0x7f03005b

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 272
    .local v2, view:Landroid/view/View;
    const v3, 0x7f030090

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/SectionHeaderView;

    .line 274
    .local v0, header:Lcom/google/android/apps/plus/views/SectionHeaderView;
    const v3, 0x7f070243

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/views/SectionHeaderView;->setText(I)V

    .line 275
    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 276
    .local v1, list:Landroid/widget/ListView;
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 277
    return-object v2
.end method

.method protected isEmpty()Z
    .registers 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$SuggestedPeopleCursorAdapter;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$SuggestedPeopleCursorAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$SuggestedPeopleCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$SuggestedPeopleCursorAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$SuggestedPeopleCursorAdapter;->getCursor()Landroid/database/Cursor;

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
    .line 343
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->mDataLoaded:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$SuggestedPeopleCursorAdapter;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$SuggestedPeopleCursorAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$SuggestedPeopleCursorAdapter;->getCursor()Landroid/database/Cursor;

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
    .line 335
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->mDataLoaded:Z

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 243
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->onAttach(Landroid/app/Activity;)V

    .line 244
    new-instance v0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$SuggestedPeopleCursorAdapter;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$SuggestedPeopleCursorAdapter;-><init>(Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$SuggestedPeopleCursorAdapter;

    .line 245
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 10
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 389
    :try_start_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_8} :catch_14

    .line 394
    .local v2, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_36

    .line 410
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    .end local v2           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_13
    :goto_13
    return v5

    .line 390
    :catch_14
    move-exception v1

    .line 391
    .local v1, e:Ljava/lang/ClassCastException;
    goto :goto_13

    .line 396
    .end local v1           #e:Ljava/lang/ClassCastException;
    .restart local v2       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :pswitch_16
    iget v4, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 397
    .local v4, position:I
    if-eqz v4, :cond_13

    .line 401
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .local v3, personIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$SuggestedPeopleCursorAdapter;

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v5, v7}, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$SuggestedPeopleCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 403
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->onDismissSuggestedPeople(Ljava/util/ArrayList;)V

    move v5, v6

    .line 406
    goto :goto_13

    .line 394
    nop

    :pswitch_data_36
    .packed-switch 0x7f0d01f6
        :pswitch_16
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 231
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 233
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_10

    .line 234
    new-instance v0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$ActionModeCallback;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$ActionModeCallback;-><init>(Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->mActionCallback:Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$ActionModeCallback;

    .line 236
    :cond_10
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 6
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 378
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f100022

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 379
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
    .line 301
    new-instance v0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleListLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    const/4 v3, 0x4

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

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/plus/fragments/SuggestedPeopleListLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 253
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 255
    .local v0, view:Landroid/view/View;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_10

    .line 257
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 263
    :goto_f
    return-object v0

    .line 259
    :cond_10
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 260
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->mActionCallback:Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$ActionModeCallback;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$ActionModeCallback;->getCallback()Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    goto :goto_f
.end method

.method public onDismissSuggestedPeople(Ljava/util/ArrayList;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 418
    .local p1, personIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 428
    :cond_8
    :goto_8
    return-void

    .line 423
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->deleteFromSuggestedPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;)V

    .line 427
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/plus/service/EsService;->dismissSuggestedPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;)Ljava/lang/Integer;

    goto :goto_8
.end method

.method protected onInitLoaders(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 294
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
    .line 368
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    check-cast p2, Lcom/google/android/apps/plus/views/PeopleListItemView;

    .end local p2
    invoke-virtual {p2}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getPersonId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->startActivity(Landroid/content/Intent;)V

    .line 370
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
    .line 311
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->mDataLoaded:Z

    .line 312
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$SuggestedPeopleCursorAdapter;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$SuggestedPeopleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 313
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->updateView(Landroid/view/View;)V

    .line 315
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1e

    .line 316
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    if-eqz v0, :cond_1e

    .line 318
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->invalidate()V

    .line 321
    :cond_1e
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 328
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
