.class public Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;
.super Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;
.source "PeopleSearchFragment.java"

# interfaces
.implements Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;
.implements Lcom/google/android/apps/plus/fragments/Refreshable;
.implements Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;
.implements Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/PeopleSearchFragment$OnSelectionChangeListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

.field private mAddToCirclesActionEnabled:Z

.field private mCircleUsageType:I

.field private mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchFragment$OnSelectionChangeListener;

.field private mPeopleInCirclesEnabled:Z

.field private mPhoneOnlyContactsEnabled:Z

.field private mPlusPagesEnabled:Z

.field private mProgressView:Landroid/widget/ProgressBar;

.field private mPublicProfileSearchEnabled:Z

.field private mQuery:Ljava/lang/String;

.field private mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mCircleUsageType:I

    .line 55
    return-void
.end method


# virtual methods
.method protected getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    return-object v0
.end method

.method protected getEmptyText()I
    .registers 2

    .prologue
    .line 342
    const/4 v0, 0x0

    return v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 209
    const v0, 0x7f030085

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected isEmpty()Z
    .registers 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->isSearchingForFirstResult()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected isError()Z
    .registers 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->isError()Z

    move-result v0

    return v0
.end method

.method protected isLoaded()Z
    .registers 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->isLoaded()Z

    move-result v0

    return v0
.end method

.method public onActionButtonClick(Lcom/google/android/apps/plus/views/PeopleListItemView;I)V
    .registers 3
    .parameter "view"
    .parameter "action"

    .prologue
    .line 385
    return-void
.end method

.method public onAddPersonToCirclesAction(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V
    .registers 4
    .parameter "personId"
    .parameter "person"

    .prologue
    .line 408
    if-nez p2, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->showCircleMembershipDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    return-void

    .line 408
    :cond_7
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 7
    .parameter "activity"

    .prologue
    const/4 v4, 0x0

    .line 151
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->onAttach(Landroid/app/Activity;)V

    .line 152
    new-instance v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/LoaderManager;Lcom/google/android/apps/plus/content/EsAccount;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    .line 154
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAddToCirclesActionEnabled:Z

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setAddToCirclesActionEnabled(Z)V

    .line 155
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mPublicProfileSearchEnabled:Z

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setPublicProfileSearchEnabled(Z)V

    .line 156
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mPhoneOnlyContactsEnabled:Z

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setIncludePhoneNumberContacts(Z)V

    .line 157
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    iget v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mCircleUsageType:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setCircleUsageType(I)V

    .line 158
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mPlusPagesEnabled:Z

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setIncludePlusPages(Z)V

    .line 159
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mPeopleInCirclesEnabled:Z

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setIncludePeopleInCircles(Z)V

    .line 160
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setShowProgressWhenEmpty(Z)V

    .line 161
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "filter_null_gaia_ids"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setFilterNullGaiaIds(Z)V

    .line 163
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setListener(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;)V

    .line 164
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setQueryString(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public onCircleSelected(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Circle;)V
    .registers 4
    .parameter "circleId"
    .parameter "build"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchFragment$OnSelectionChangeListener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment$OnSelectionChangeListener;->onCircleSelected(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Circle;)V

    .line 393
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 172
    if-eqz p1, :cond_a

    .line 173
    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mQuery:Ljava/lang/String;

    .line 175
    :cond_a
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 176
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 196
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 198
    .local v0, view:Landroid/view/View;
    const v1, 0x7f09004c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/views/SearchViewAdapter;->createInstance(Landroid/view/View;)Lcom/google/android/apps/plus/views/SearchViewAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    .line 200
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    const v2, 0x7f080215

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/SearchViewAdapter;->setQueryHint(I)V

    .line 201
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/plus/views/SearchViewAdapter;->addOnChangeListener(Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;)V

    .line 203
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->updateView(Landroid/view/View;)V

    .line 204
    return-object v0
.end method

.method public onDismissSuggestionAction(Ljava/lang/String;)V
    .registers 2
    .parameter "personId"

    .prologue
    .line 423
    return-void
.end method

.method protected onInitLoaders(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onCreate(Landroid/os/Bundle;)V

    .line 287
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
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
    .line 366
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0, p3}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onItemClick(I)V

    .line 367
    return-void
.end method

.method public onPersonSelected(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V
    .registers 5
    .parameter "personId"
    .parameter "contactLookupKey"
    .parameter "person"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchFragment$OnSelectionChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment$OnSelectionChangeListener;->onPersonSelected(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V

    .line 401
    return-void
.end method

.method public onQueryClose()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 317
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/SearchViewAdapter;->setQueryText(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setQueryString(Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method public onQueryTextChanged(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "query"

    .prologue
    .line 235
    if-nez p1, :cond_2a

    const/4 v0, 0x0

    :goto_3
    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mQuery:Ljava/lang/String;

    .line 237
    sget-boolean v0, Lcom/google/android/apps/plus/util/EsLog;->ENABLE_DOGFOOD_FEATURES:Z

    if-eqz v0, :cond_1e

    if-eqz p1, :cond_1e

    .line 238
    const-string v0, "*#*#dumpdb*#*#"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 239
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/phone/DumpDatabase;->dumpNow(Landroid/content/Context;)V

    .line 245
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v0, :cond_29

    .line 246
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setQueryString(Ljava/lang/String;)V

    .line 248
    :cond_29
    return-void

    .line 235
    :cond_2a
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 240
    :cond_33
    const-string v0, "*#*#cleandb*#*#"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 241
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/phone/DumpDatabase;->cleanNow(Landroid/content/Context;)V

    goto :goto_1e
.end method

.method public onQueryTextSubmitted(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "query"

    .prologue
    .line 255
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 183
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 184
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v0, :cond_c

    .line 185
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 187
    :cond_c
    const-string v0, "query"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mQuery:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public onSearchListAdapterStateChange(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;)V
    .registers 3
    .parameter "adapter"

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 375
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_9

    .line 376
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->updateView(Landroid/view/View;)V

    .line 378
    :cond_9
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 217
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->onStart()V

    .line 218
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onStart()V

    .line 219
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 226
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->onStart()V

    .line 227
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onStop()V

    .line 228
    return-void
.end method

.method public onUnblockPersonAction(Ljava/lang/String;Z)V
    .registers 3
    .parameter "personId"
    .parameter "isPlusPage"

    .prologue
    .line 416
    return-void
.end method

.method public setAddToCirclesActionEnabled(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAddToCirclesActionEnabled:Z

    .line 91
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v0, :cond_b

    .line 92
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setAddToCirclesActionEnabled(Z)V

    .line 94
    :cond_b
    return-void
.end method

.method public setCircleUsageType(I)V
    .registers 3
    .parameter "usageType"

    .prologue
    .line 79
    iput p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mCircleUsageType:I

    .line 80
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v0, :cond_b

    .line 81
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setCircleUsageType(I)V

    .line 83
    :cond_b
    return-void
.end method

.method public setInitialQueryString(Ljava/lang/String;)V
    .registers 3
    .parameter "query"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mQuery:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 133
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mQuery:Ljava/lang/String;

    .line 135
    :cond_6
    return-void
.end method

.method public setOnSelectionChangeListener(Lcom/google/android/apps/plus/fragments/PeopleSearchFragment$OnSelectionChangeListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchFragment$OnSelectionChangeListener;

    .line 73
    return-void
.end method

.method public setPeopleInCirclesEnabled(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mPeopleInCirclesEnabled:Z

    .line 123
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v0, :cond_b

    .line 124
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setIncludePeopleInCircles(Z)V

    .line 126
    :cond_b
    return-void
.end method

.method public setPhoneOnlyContactsEnabled(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mPhoneOnlyContactsEnabled:Z

    .line 109
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v0, :cond_b

    .line 110
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setIncludePhoneNumberContacts(Z)V

    .line 112
    :cond_b
    return-void
.end method

.method public setPlusPagesEnabled(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mPlusPagesEnabled:Z

    .line 116
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v0, :cond_b

    .line 117
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setIncludePlusPages(Z)V

    .line 119
    :cond_b
    return-void
.end method

.method public setProgressBar(Landroid/widget/ProgressBar;)V
    .registers 3
    .parameter "progressView"

    .prologue
    .line 264
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mProgressView:Landroid/widget/ProgressBar;

    .line 265
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->updateSpinner(Landroid/widget/ProgressBar;)V

    .line 266
    return-void
.end method

.method public setPublicProfileSearchEnabled(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mPublicProfileSearchEnabled:Z

    .line 102
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v0, :cond_b

    .line 103
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setPublicProfileSearchEnabled(Z)V

    .line 105
    :cond_b
    return-void
.end method

.method public startSearch()V
    .registers 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    if-eqz v0, :cond_b

    .line 142
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/SearchViewAdapter;->setQueryText(Ljava/lang/String;)V

    .line 144
    :cond_b
    return-void
.end method

.method protected updateView(Landroid/view/View;)V
    .registers 7
    .parameter "view"

    .prologue
    const v4, 0x7f09018c

    const v3, 0x102000a

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 294
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-nez v0, :cond_e

    .line 311
    :goto_d
    return-void

    .line 298
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->isSearchingForFirstResult()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 299
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 300
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 301
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->showEmptyViewProgress(Landroid/view/View;)V

    goto :goto_d

    .line 302
    :cond_28
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 303
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 304
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 305
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->showContent(Landroid/view/View;)V

    goto :goto_d

    .line 307
    :cond_42
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 308
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 309
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->showContent(Landroid/view/View;)V

    goto :goto_d
.end method
