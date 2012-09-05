.class public Lcom/google/android/apps/books/app/HomeMenuFragment;
.super Landroid/app/Fragment;
.source "HomeMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/app/HomeMenuFragment$CollectionVolumesQuery;,
        Lcom/google/android/apps/books/app/HomeMenuFragment$LocalSearchAdapter;
    }
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mIcsApis:Lcom/google/android/apps/books/app/IcsApis;

.field private mLastQuery:Ljava/lang/String;

.field private mSearchMenu:Landroid/view/MenuItem;

.field private mSearchView:Landroid/widget/SearchView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 295
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/app/HomeMenuFragment;)Landroid/accounts/Account;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/apps/books/app/HomeMenuFragment;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/books/app/HomeMenuFragment;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/apps/books/app/HomeMenuFragment;->mLastQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/apps/books/app/HomeMenuFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/android/apps/books/app/HomeMenuFragment;->mLastQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/apps/books/app/HomeMenuFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/android/apps/books/app/HomeMenuFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    return-object v0
.end method

.method private configureSearchView(Landroid/content/Context;Landroid/widget/SearchView;)V
    .registers 7
    .parameter "context"
    .parameter "searchView"

    .prologue
    .line 88
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 89
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/HomeMenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00ac

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 97
    new-instance v0, Lcom/google/android/apps/books/app/HomeMenuFragment$LocalSearchAdapter;

    invoke-direct {v0, p1}, Lcom/google/android/apps/books/app/HomeMenuFragment$LocalSearchAdapter;-><init>(Landroid/content/Context;)V

    .line 98
    .local v0, adapter:Lcom/google/android/apps/books/app/HomeMenuFragment$LocalSearchAdapter;
    new-instance v2, Lcom/google/android/apps/books/app/HomeMenuFragment$1;

    invoke-direct {v2, p0, p1}, Lcom/google/android/apps/books/app/HomeMenuFragment$1;-><init>(Lcom/google/android/apps/books/app/HomeMenuFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/google/android/apps/books/app/HomeMenuFragment$LocalSearchAdapter;->setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V

    .line 108
    invoke-virtual {p2, v0}, Landroid/widget/SearchView;->setSuggestionsAdapter(Landroid/widget/CursorAdapter;)V

    .line 109
    new-instance v2, Lcom/google/android/apps/books/app/HomeMenuFragment$2;

    invoke-direct {v2, p0, v0, p2}, Lcom/google/android/apps/books/app/HomeMenuFragment$2;-><init>(Lcom/google/android/apps/books/app/HomeMenuFragment;Lcom/google/android/apps/books/app/HomeMenuFragment$LocalSearchAdapter;Landroid/widget/SearchView;)V

    invoke-virtual {p2, v2}, Landroid/widget/SearchView;->setOnSuggestionListener(Landroid/widget/SearchView$OnSuggestionListener;)V

    .line 141
    new-instance v2, Lcom/google/android/apps/books/app/HomeMenuFragment$3;

    invoke-direct {v2, p0, p2}, Lcom/google/android/apps/books/app/HomeMenuFragment$3;-><init>(Lcom/google/android/apps/books/app/HomeMenuFragment;Landroid/widget/SearchView;)V

    invoke-virtual {p2, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 165
    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Landroid/app/ActionBar$LayoutParams;-><init>(I)V

    .line 166
    .local v1, params:Landroid/app/ActionBar$LayoutParams;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/app/ActionBar$LayoutParams;->width:I

    .line 167
    invoke-virtual {p2, v1}, Landroid/widget/SearchView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    return-void
.end method

.method private getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;
    .registers 2

    .prologue
    .line 312
    invoke-static {p0}, Lcom/google/android/apps/books/app/BooksActivity;->getScene(Landroid/app/Fragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    return-object v0
.end method

.method private setSearchViewExpanded(Z)V
    .registers 4
    .parameter "expanded"

    .prologue
    .line 208
    invoke-static {}, Lcom/google/android/apps/books/app/BooksApplication;->runningOnIcsOrLater()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 209
    iget-object v0, p0, Lcom/google/android/apps/books/app/HomeMenuFragment;->mSearchMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_13

    .line 210
    if-eqz p1, :cond_14

    .line 211
    iget-object v0, p0, Lcom/google/android/apps/books/app/HomeMenuFragment;->mIcsApis:Lcom/google/android/apps/books/app/IcsApis;

    iget-object v1, p0, Lcom/google/android/apps/books/app/HomeMenuFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/app/IcsApis;->expandActionView(Landroid/view/MenuItem;)V

    .line 219
    :cond_13
    :goto_13
    return-void

    .line 213
    :cond_14
    iget-object v0, p0, Lcom/google/android/apps/books/app/HomeMenuFragment;->mIcsApis:Lcom/google/android/apps/books/app/IcsApis;

    iget-object v1, p0, Lcom/google/android/apps/books/app/HomeMenuFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/app/IcsApis;->collapseActionView(Landroid/view/MenuItem;)V

    goto :goto_13

    .line 216
    :cond_1c
    iget-object v0, p0, Lcom/google/android/apps/books/app/HomeMenuFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_13

    .line 217
    iget-object v1, p0, Lcom/google/android/apps/books/app/HomeMenuFragment;->mSearchView:Landroid/widget/SearchView;

    if-nez p1, :cond_29

    const/4 v0, 0x1

    :goto_25
    invoke-virtual {v1, v0}, Landroid/widget/SearchView;->setIconified(Z)V

    goto :goto_13

    :cond_29
    const/4 v0, 0x0

    goto :goto_25
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/HomeMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 63
    .local v1, context:Landroid/content/Context;
    invoke-direct {p0}, Lcom/google/android/apps/books/app/HomeMenuFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->setActionBarDisplayOptions(I)V

    .line 66
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/HomeMenuFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 67
    .local v0, args:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/google/android/apps/books/util/LoaderParams;->getAccount(Landroid/os/Bundle;)Landroid/accounts/Account;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/books/app/HomeMenuFragment;->mAccount:Landroid/accounts/Account;

    .line 68
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/app/HomeMenuFragment;->setHasOptionsMenu(Z)V

    .line 51
    invoke-static {}, Lcom/google/android/apps/books/app/BooksApplication;->runningOnIcsOrLater()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 52
    new-instance v0, Lcom/google/android/apps/books/app/IcsApis;

    invoke-direct {v0}, Lcom/google/android/apps/books/app/IcsApis;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/app/HomeMenuFragment;->mIcsApis:Lcom/google/android/apps/books/app/IcsApis;

    .line 54
    :cond_14
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 5
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 73
    const v0, 0x7f110004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 75
    const v0, 0x7f0f0083

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/app/HomeMenuFragment;->mSearchMenu:Landroid/view/MenuItem;

    .line 76
    iget-object v0, p0, Lcom/google/android/apps/books/app/HomeMenuFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/google/android/apps/books/app/HomeMenuFragment;->mSearchView:Landroid/widget/SearchView;

    .line 77
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/HomeMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/app/HomeMenuFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/books/app/HomeMenuFragment;->configureSearchView(Landroid/content/Context;Landroid/widget/SearchView;)V

    .line 78
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/books/app/HomeMenuFragment;->setSearchViewExpanded(Z)V

    .line 84
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 172
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_30

    .line 195
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 174
    :sswitch_a
    invoke-direct {p0}, Lcom/google/android/apps/books/app/HomeMenuFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->startShop()V

    goto :goto_9

    .line 178
    :sswitch_12
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/HomeMenuFragment;->onSearchRequested()Z

    goto :goto_9

    .line 182
    :sswitch_16
    invoke-direct {p0}, Lcom/google/android/apps/books/app/HomeMenuFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->pickAccount()V

    goto :goto_9

    .line 187
    :sswitch_1e
    invoke-direct {p0}, Lcom/google/android/apps/books/app/HomeMenuFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->startForcedSync()V

    goto :goto_9

    .line 191
    :sswitch_26
    invoke-direct {p0}, Lcom/google/android/apps/books/app/HomeMenuFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->showHelp(ZLandroid/os/Bundle;)V

    goto :goto_9

    .line 172
    nop

    :sswitch_data_30
    .sparse-switch
        0x7f0f0083 -> :sswitch_12
        0x7f0f008d -> :sswitch_26
        0x7f0f0090 -> :sswitch_a
        0x7f0f0091 -> :sswitch_1e
        0x7f0f0092 -> :sswitch_16
    .end sparse-switch
.end method

.method protected onSearchRequested()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 203
    invoke-direct {p0, v0}, Lcom/google/android/apps/books/app/HomeMenuFragment;->setSearchViewExpanded(Z)V

    .line 204
    return v0
.end method
