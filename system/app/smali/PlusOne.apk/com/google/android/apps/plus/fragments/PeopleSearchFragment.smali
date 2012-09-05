.class public Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;
.super Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;
.source "PeopleSearchFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;
.implements Lcom/google/android/apps/plus/fragments/Refreshable;
.implements Lcom/google/android/apps/plus/phone/FragmentSearchable;
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

.field private mSearchEditText:Landroid/widget/EditText;

.field private mSearchEditTextVisible:Z

.field private mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mSearchEditTextVisible:Z

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mCircleUsageType:I

    .line 61
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 367
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 374
    return-void
.end method

.method protected getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    return-object v0
.end method

.method protected getEmptyText()I
    .registers 2

    .prologue
    .line 404
    const/4 v0, 0x0

    return v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 235
    const v0, 0x7f03005d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected isEmpty()Z
    .registers 2

    .prologue
    .line 412
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
    .line 420
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->isError()Z

    move-result v0

    return v0
.end method

.method protected isLoaded()Z
    .registers 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->isLoaded()Z

    move-result v0

    return v0
.end method

.method public onAddPersonActionButtonClick(Lcom/google/android/apps/plus/views/PeopleListItemView;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 447
    return-void
.end method

.method public onAddPersonToCirclesAction(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V
    .registers 4
    .parameter "personId"
    .parameter "person"

    .prologue
    .line 484
    if-nez p2, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->showCircleMembershipDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    return-void

    .line 484
    :cond_7
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 6
    .parameter "activity"

    .prologue
    .line 178
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->onAttach(Landroid/app/Activity;)V

    .line 179
    new-instance v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/LoaderManager;Lcom/google/android/apps/plus/content/EsAccount;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    .line 181
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAddToCirclesActionEnabled:Z

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setAddToCirclesActionEnabled(Z)V

    .line 182
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mPublicProfileSearchEnabled:Z

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setPublicProfileSearchEnabled(Z)V

    .line 183
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mPhoneOnlyContactsEnabled:Z

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setIncludePhoneNumberContacts(Z)V

    .line 184
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    iget v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mCircleUsageType:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setCircleUsageType(I)V

    .line 185
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mPlusPagesEnabled:Z

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setIncludePlusPages(Z)V

    .line 186
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mPeopleInCirclesEnabled:Z

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setIncludePeopleInCircles(Z)V

    .line 187
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setShowProgressWhenEmpty(Z)V

    .line 188
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setListener(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;)V

    .line 189
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setQueryString(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public onCircleSelected(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Circle;)V
    .registers 4
    .parameter "circleId"
    .parameter "build"

    .prologue
    .line 468
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchFragment$OnSelectionChangeListener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment$OnSelectionChangeListener;->onCircleSelected(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Circle;)V

    .line 469
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 197
    if-eqz p1, :cond_a

    .line 198
    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mQuery:Ljava/lang/String;

    .line 200
    :cond_a
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 201
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 221
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 223
    .local v0, view:Landroid/view/View;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_e

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mSearchEditTextVisible:Z

    if-nez v1, :cond_1e

    .line 224
    :cond_e
    const v1, 0x7f0d0163

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 229
    :goto_1a
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->updateView(Landroid/view/View;)V

    .line 230
    return-object v0

    .line 226
    :cond_1e
    const v1, 0x7f0d0164

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mSearchEditText:Landroid/widget/EditText;

    .line 227
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_1a
.end method

.method protected onInitLoaders(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onCreate(Landroid/os/Bundle;)V

    .line 336
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
    .line 428
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0, p3}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onItemClick(I)V

    .line 429
    return-void
.end method

.method public onPersonSelected(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V
    .registers 5
    .parameter "personId"
    .parameter "contactLookupKey"
    .parameter "person"

    .prologue
    .line 476
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchFragment$OnSelectionChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment$OnSelectionChangeListener;->onPersonSelected(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V

    .line 477
    return-void
.end method

.method public onQueryClose()V
    .registers 1

    .prologue
    .line 381
    return-void
.end method

.method public onQueryTextChanged(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "query"

    .prologue
    .line 284
    if-nez p1, :cond_11

    const/4 v0, 0x0

    :goto_3
    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mQuery:Ljava/lang/String;

    .line 294
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v0, :cond_10

    .line 295
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setQueryString(Ljava/lang/String;)V

    .line 297
    :cond_10
    return-void

    .line 284
    :cond_11
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public onQueryTextSubmitted(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "query"

    .prologue
    .line 304
    return-void
.end method

.method public onRemovePersonActionButtonClick(Lcom/google/android/apps/plus/views/PeopleListItemView;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 454
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 208
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 209
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v0, :cond_c

    .line 210
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 212
    :cond_c
    const-string v0, "query"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mQuery:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method public onSearchListAdapterStateChange(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;)V
    .registers 3
    .parameter "adapter"

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 437
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_9

    .line 438
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->updateView(Landroid/view/View;)V

    .line 440
    :cond_9
    return-void
.end method

.method public onSearchQueryChanged(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "query"

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->onQueryTextChanged(Ljava/lang/CharSequence;)V

    .line 270
    return-void
.end method

.method public onSearchQueryEntered(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "query"

    .prologue
    .line 277
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 243
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->onStart()V

    .line 244
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onStart()V

    .line 245
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 252
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->onStart()V

    .line 253
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onStop()V

    .line 254
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "query"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 261
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->onQueryTextChanged(Ljava/lang/CharSequence;)V

    .line 262
    return-void
.end method

.method public onUnblockPersonActionButtonClick(Lcom/google/android/apps/plus/views/PeopleListItemView;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 461
    return-void
.end method

.method public refresh()V
    .registers 3

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_7

    .line 328
    :goto_6
    return-void

    .line 326
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setQueryString(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setQueryString(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public setAddToCirclesActionEnabled(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAddToCirclesActionEnabled:Z

    .line 104
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v0, :cond_b

    .line 105
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setAddToCirclesActionEnabled(Z)V

    .line 107
    :cond_b
    return-void
.end method

.method public setCircleUsageType(I)V
    .registers 3
    .parameter "usageType"

    .prologue
    .line 92
    iput p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mCircleUsageType:I

    .line 93
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v0, :cond_b

    .line 94
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setCircleUsageType(I)V

    .line 96
    :cond_b
    return-void
.end method

.method public setInitialQueryString(Ljava/lang/String;)V
    .registers 3
    .parameter "query"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mQuery:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 157
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mQuery:Ljava/lang/String;

    .line 159
    :cond_6
    return-void
.end method

.method public setOnSelectionChangeListener(Lcom/google/android/apps/plus/fragments/PeopleSearchFragment$OnSelectionChangeListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchFragment$OnSelectionChangeListener;

    .line 86
    return-void
.end method

.method public setPeopleInCirclesEnabled(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mPeopleInCirclesEnabled:Z

    .line 136
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v0, :cond_b

    .line 137
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setIncludePeopleInCircles(Z)V

    .line 139
    :cond_b
    return-void
.end method

.method public setPhoneOnlyContactsEnabled(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mPhoneOnlyContactsEnabled:Z

    .line 122
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v0, :cond_b

    .line 123
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setIncludePhoneNumberContacts(Z)V

    .line 125
    :cond_b
    return-void
.end method

.method public setPlusPagesEnabled(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mPlusPagesEnabled:Z

    .line 129
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v0, :cond_b

    .line 130
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setIncludePlusPages(Z)V

    .line 132
    :cond_b
    return-void
.end method

.method public setProgressBar(Landroid/widget/ProgressBar;)V
    .registers 3
    .parameter "progressView"

    .prologue
    .line 313
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mProgressView:Landroid/widget/ProgressBar;

    .line 314
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->updateSpinner(Landroid/widget/ProgressBar;)V

    .line 315
    return-void
.end method

.method public setPublicProfileSearchEnabled(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mPublicProfileSearchEnabled:Z

    .line 115
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v0, :cond_b

    .line 116
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setPublicProfileSearchEnabled(Z)V

    .line 118
    :cond_b
    return-void
.end method

.method public setSearchEditTextVisible(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mSearchEditTextVisible:Z

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_14

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mSearchEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_14

    .line 77
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mSearchEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_15

    const/4 v0, 0x0

    :goto_11
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 79
    :cond_14
    return-void

    .line 77
    :cond_15
    const/16 v0, 0x8

    goto :goto_11
.end method

.method public setSearchViewAdapter(Lcom/google/android/apps/plus/views/SearchViewAdapter;)V
    .registers 3
    .parameter "searchViewAdapter"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    .line 147
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    if-eqz v0, :cond_b

    .line 148
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/views/SearchViewAdapter;->addOnChangeListener(Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;)V

    .line 150
    :cond_b
    return-void
.end method

.method public startSearch()V
    .registers 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    if-eqz v0, :cond_c

    .line 166
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/SearchViewAdapter;->setQueryText(Ljava/lang/String;)V

    .line 171
    :cond_b
    :goto_b
    return-void

    .line 167
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mSearchEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_b

    .line 168
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mSearchEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_b
.end method

.method protected updateView(Landroid/view/View;)V
    .registers 7
    .parameter "view"

    .prologue
    const v4, 0x7f0d010e

    const v3, 0x102000a

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 343
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-nez v0, :cond_e

    .line 360
    :goto_d
    return-void

    .line 347
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->isSearchingForFirstResult()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 348
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 349
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 350
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->showEmptyViewProgress(Landroid/view/View;)V

    goto :goto_d

    .line 351
    :cond_28
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 352
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 353
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 354
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->showContent(Landroid/view/View;)V

    goto :goto_d

    .line 356
    :cond_42
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 357
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 358
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->showContent(Landroid/view/View;)V

    goto :goto_d
.end method
