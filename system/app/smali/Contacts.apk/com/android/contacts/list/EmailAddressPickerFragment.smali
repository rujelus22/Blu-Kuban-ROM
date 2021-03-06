.class public Lcom/android/contacts/list/EmailAddressPickerFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "EmailAddressPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private mEmptyView:Landroid/view/View;

.field protected mHasGalSearchData:Z

.field protected mHasPhoneData:Z

.field protected mHasPhoneSearchData:Z

.field private mListContainer:Landroid/view/View;

.field private mListener:Lcom/android/contacts/list/OnEmailAddressPickerActionListener;

.field private mSearchView:Landroid/widget/SearchView;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 44
    iput-boolean v1, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mHasPhoneData:Z

    .line 45
    iput-boolean v1, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mHasPhoneSearchData:Z

    .line 46
    iput-boolean v1, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mHasGalSearchData:Z

    .line 49
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/EmailAddressPickerFragment;->setQuickContactEnabled(Z)V

    .line 50
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/EmailAddressPickerFragment;->setPhotoLoaderEnabled(Z)V

    .line 51
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/EmailAddressPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 52
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->setDirectorySearchMode(I)V

    .line 54
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/EmailAddressPickerFragment;->setSweepActionEnabled(Z)V

    .line 57
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/EmailAddressPickerFragment;->setFakeQueryModeEnabled(Z)V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/EmailAddressPickerFragment;)Landroid/widget/SearchView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method private configureEmptyView(Z)V
    .registers 6
    .parameter "isEmpty"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 221
    iget-object v0, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_c

    .line 227
    :cond_b
    :goto_b
    return-void

    .line 225
    :cond_c
    iget-object v3, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_1c

    move v0, v1

    :goto_11
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_1e

    :goto_18
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    :cond_1c
    move v0, v2

    .line 225
    goto :goto_11

    :cond_1e
    move v2, v1

    .line 226
    goto :goto_18
.end method

.method private pickEmailAddress(Landroid/net/Uri;)V
    .registers 3
    .parameter "uri"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mListener:Lcom/android/contacts/list/OnEmailAddressPickerActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnEmailAddressPickerActionListener;->onPickEmailAddressAction(Landroid/net/Uri;)V

    .line 218
    return-void
.end method


# virtual methods
.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 73
    new-instance v0, Lcom/android/contacts/list/EmailAddressListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/EmailAddressListAdapter;-><init>(Landroid/content/Context;)V

    .line 74
    .local v0, adapter:Lcom/android/contacts/list/EmailAddressListAdapter;
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/EmailAddressListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 75
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/EmailAddressListAdapter;->setDisplayPhotos(Z)V

    .line 76
    return-object v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "inflater"
    .parameter "container"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 89
    const v3, 0x7f040045

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 90
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0d010d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 91
    const v3, 0x7f0d0233

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    const v3, 0x7f0d00e9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    iput-object v3, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    .line 93
    const v3, 0x7f0d00e8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 94
    .local v1, newButton:Landroid/widget/ImageButton;
    const v3, 0x7f0d01a3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 95
    .local v0, menuButton:Landroid/widget/ImageButton;
    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 96
    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 98
    iget-object v3, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 99
    iget-object v3, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 100
    iget-object v3, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, v5}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 101
    iget-object v3, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->clearFocus()V

    .line 102
    iget-object v3, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const v4, 0x7f0a01ad

    invoke-virtual {p0, v4}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v3, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v4, Lcom/android/contacts/list/EmailAddressPickerFragment$1;

    invoke-direct {v4, p0}, Lcom/android/contacts/list/EmailAddressPickerFragment$1;-><init>(Lcom/android/contacts/list/EmailAddressPickerFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 137
    return-object v2
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .registers 5
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d00ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mListContainer:Landroid/view/View;

    .line 84
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d00ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mEmptyView:Landroid/view/View;

    .line 85
    return-void
.end method

.method protected onItemClick(IJ)V
    .registers 6
    .parameter "position"
    .parameter "id"

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/EmailAddressListAdapter;

    .line 68
    .local v0, adapter:Lcom/android/contacts/list/EmailAddressListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/EmailAddressListAdapter;->getDataUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/contacts/list/EmailAddressPickerFragment;->pickEmailAddress(Landroid/net/Uri;)V

    .line 69
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .registers 10
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v5, 0x2

    const/4 v6, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 143
    iget-boolean v2, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mEnabled:Z

    if-nez v2, :cond_9

    .line 214
    :cond_8
    :goto_8
    return-void

    .line 147
    :cond_9
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    .line 148
    .local v1, loaderId:I
    if-ne v1, v6, :cond_33

    .line 149
    iput v5, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mDirectoryListStatus:I

    .line 150
    iget-object v2, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeDirectories(Landroid/database/Cursor;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->startLoading()V

    .line 204
    :cond_19
    :goto_19
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_8

    .line 205
    if-nez v1, :cond_2b

    .line 206
    if-eqz p2, :cond_9a

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_9a

    .line 208
    iput-boolean v3, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mHasPhoneData:Z

    .line 212
    :cond_2b
    :goto_2b
    iget-boolean v2, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mHasPhoneData:Z

    if-nez v2, :cond_9d

    :goto_2f
    invoke-direct {p0, v3}, Lcom/android/contacts/list/EmailAddressPickerFragment;->configureEmptyView(Z)V

    goto :goto_8

    .line 155
    :cond_33
    invoke-virtual {p0, v1, p2}, Lcom/android/contacts/list/EmailAddressPickerFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 158
    if-eqz p2, :cond_6c

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_6c

    .line 159
    if-nez v1, :cond_69

    .line 161
    iput-boolean v3, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mHasPhoneSearchData:Z

    .line 176
    :goto_48
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getDirectorySearchMode()I

    move-result v0

    .line 177
    .local v0, directorySearchMode:I
    if-eqz v0, :cond_5c

    .line 178
    iget v2, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mDirectoryListStatus:I

    if-nez v2, :cond_74

    .line 179
    iput v3, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mDirectoryListStatus:I

    .line 180
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v6, v5, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 187
    :cond_5c
    :goto_5c
    iget-boolean v2, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mHasPhoneSearchData:Z

    if-nez v2, :cond_78

    iget-boolean v2, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mHasGalSearchData:Z

    if-nez v2, :cond_78

    move v2, v3

    :goto_65
    invoke-direct {p0, v2}, Lcom/android/contacts/list/EmailAddressPickerFragment;->configureEmptyView(Z)V

    goto :goto_19

    .line 163
    .end local v0           #directorySearchMode:I
    :cond_69
    iput-boolean v3, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mHasGalSearchData:Z

    goto :goto_48

    .line 167
    :cond_6c
    if-nez v1, :cond_71

    .line 168
    iput-boolean v4, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mHasPhoneSearchData:Z

    goto :goto_48

    .line 171
    :cond_71
    iput-boolean v4, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mHasGalSearchData:Z

    goto :goto_48

    .line 182
    .restart local v0       #directorySearchMode:I
    :cond_74
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->startLoading()V

    goto :goto_5c

    :cond_78
    move v2, v4

    .line 187
    goto :goto_65

    .line 189
    .end local v0           #directorySearchMode:I
    :cond_7a
    iput v4, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mDirectoryListStatus:I

    .line 190
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 193
    iget-boolean v2, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mFakeQueryModeEnabled:Z

    if-eqz v2, :cond_19

    .line 194
    iget v2, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mFakeQueryStatus:I

    if-ne v2, v3, :cond_91

    .line 195
    iput v5, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mFakeQueryStatus:I

    .line 196
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->startFullQuery()V

    goto :goto_19

    .line 197
    :cond_91
    iget v2, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mFakeQueryStatus:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_19

    .line 198
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mFakeQueryStatus:I

    goto :goto_19

    .line 210
    :cond_9a
    iput-boolean v4, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mHasPhoneData:Z

    goto :goto_2b

    :cond_9d
    move v3, v4

    .line 212
    goto :goto_2f
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/EmailAddressPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public setOnEmailAddressPickerActionListener(Lcom/android/contacts/list/OnEmailAddressPickerActionListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mListener:Lcom/android/contacts/list/OnEmailAddressPickerActionListener;

    .line 63
    return-void
.end method
