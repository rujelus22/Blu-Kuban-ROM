.class public Lcom/google/android/apps/plus/fragments/AccountsListFragment;
.super Lcom/google/android/apps/plus/fragments/EsFragment;
.source "AccountsListFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/AccountsListFragment$AccountsLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/EsFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/accounts/Account;",
        ">;>;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private mAccountsAdder:Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$AccountsAdder;

.field private mAdapter:Lcom/google/android/apps/plus/phone/AccountsAdapter;

.field private mAddAccountShown:Z

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method protected isEmpty()Z
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AccountsListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/AccountsAdapter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AccountsListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/AccountsAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/AccountsAdapter;->isEmpty()Z

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

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    if-eqz p1, :cond_d

    .line 87
    const-string v0, "add_account_shown"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/AccountsListFragment;->mAddAccountShown:Z

    .line 89
    :cond_d
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 5
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, Lcom/google/android/apps/plus/fragments/AccountsListFragment$AccountsLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AccountsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/fragments/AccountsListFragment$AccountsLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 97
    const v1, 0x7f030063

    invoke-super {p0, p1, p2, p3, v1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v0

    .line 101
    .local v0, view:Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/AccountsListFragment;->mListView:Landroid/widget/ListView;

    .line 102
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AccountsListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 105
    new-instance v1, Lcom/google/android/apps/plus/phone/AccountsAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AccountsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/apps/plus/phone/AccountsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/AccountsListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/AccountsAdapter;

    .line 106
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AccountsListFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/AccountsListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/AccountsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    return-object v0
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
    .line 175
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p3, v1, :cond_10

    .line 177
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AccountsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/util/AccountsUtil;->addAccount(Landroid/app/Activity;)V

    .line 185
    :cond_f
    :goto_f
    return-void

    .line 180
    :cond_10
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AccountsListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 181
    .local v0, account:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AccountsListFragment;->mAccountsAdder:Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$AccountsAdder;

    if-eqz v1, :cond_f

    .line 182
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AccountsListFragment;->mAccountsAdder:Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$AccountsAdder;

    invoke-interface {v1, v0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$AccountsAdder;->addAccount(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/AccountsListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Ljava/util/List<Landroid/accounts/Account;>;>;"
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/AccountsListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/AccountsAdapter;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/phone/AccountsAdapter;->clear()V

    .line 146
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 147
    .local v0, account:Landroid/accounts/Account;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/AccountsListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/AccountsAdapter;

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/phone/AccountsAdapter;->add(Ljava/lang/Object;)V

    goto :goto_9

    .line 151
    .end local v0           #account:Landroid/accounts/Account;
    :cond_1d
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/AccountsListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/AccountsAdapter;

    const v3, 0x7f08004a

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/AccountsListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/phone/AccountsAdapter;->add(Ljava/lang/Object;)V

    .line 154
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/AccountsListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/AccountsAdapter;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/phone/AccountsAdapter;->notifyDataSetChanged()V

    .line 156
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_42

    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/AccountsListFragment;->mAddAccountShown:Z

    if-nez v2, :cond_42

    .line 158
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AccountsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/util/AccountsUtil;->addAccount(Landroid/app/Activity;)V

    .line 159
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/AccountsListFragment;->mAddAccountShown:Z

    .line 161
    :cond_42
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
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Ljava/util/List<Landroid/accounts/Account;>;>;"
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 116
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->onResume()V

    .line 119
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AccountsListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 120
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 128
    const-string v0, "add_account_shown"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/AccountsListFragment;->mAddAccountShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 129
    return-void
.end method

.method public setAccountsAdder(Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$AccountsAdder;)V
    .registers 2
    .parameter "accountsAdder"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/AccountsListFragment;->mAccountsAdder:Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$AccountsAdder;

    .line 209
    return-void
.end method

.method public showList()V
    .registers 5

    .prologue
    const v2, 0x1020004

    const/4 v3, 0x0

    .line 191
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AccountsListFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 193
    .local v0, view:Landroid/view/View;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AccountsListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_23

    .line 194
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 199
    :goto_1d
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AccountsListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 200
    return-void

    .line 196
    :cond_23
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1d
.end method
