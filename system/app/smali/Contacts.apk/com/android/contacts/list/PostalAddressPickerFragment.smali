.class public Lcom/android/contacts/list/PostalAddressPickerFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "PostalAddressPickerFragment.java"


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

.field private mListener:Lcom/android/contacts/list/OnPostalAddressPickerActionListener;

.field private mSearchView:Landroid/widget/SearchView;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 45
    iput-boolean v0, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mHasPhoneData:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mHasPhoneSearchData:Z

    .line 47
    iput-boolean v0, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mHasGalSearchData:Z

    .line 50
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->setQuickContactEnabled(Z)V

    .line 51
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/PostalAddressPickerFragment;->setPhotoLoaderEnabled(Z)V

    .line 52
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/PostalAddressPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 53
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->setDirectorySearchMode(I)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/PostalAddressPickerFragment;)Landroid/widget/SearchView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method private configureEmptyView(Z)V
    .registers 6
    .parameter "isEmpty"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 231
    iget-object v0, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_c

    .line 237
    :cond_b
    :goto_b
    return-void

    .line 235
    :cond_c
    iget-object v3, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_1c

    move v0, v1

    :goto_11
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_1e

    :goto_18
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    :cond_1c
    move v0, v2

    .line 235
    goto :goto_11

    :cond_1e
    move v2, v1

    .line 236
    goto :goto_18
.end method

.method private pickPostalAddress(Landroid/net/Uri;)V
    .registers 3
    .parameter "uri"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mListener:Lcom/android/contacts/list/OnPostalAddressPickerActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnPostalAddressPickerActionListener;->onPickPostalAddressAction(Landroid/net/Uri;)V

    .line 228
    return-void
.end method


# virtual methods
.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_18

    .line 75
    new-instance v0, Lcom/android/contacts/list/PostalAddressListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/PostalAddressListAdapter;-><init>(Landroid/content/Context;)V

    .line 76
    .local v0, adapter:Lcom/android/contacts/list/PostalAddressListAdapter;
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/PostalAddressListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 77
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/PostalAddressListAdapter;->setDisplayPhotos(Z)V

    .line 84
    .end local v0           #adapter:Lcom/android/contacts/list/PostalAddressListAdapter;
    :goto_17
    return-object v0

    .line 80
    :cond_18
    new-instance v0, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;-><init>(Landroid/content/Context;)V

    .line 82
    .local v0, adapter:Lcom/android/contacts/list/LegacyPostalAddressListAdapter;
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 83
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;->setDisplayPhotos(Z)V

    goto :goto_17
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "inflater"
    .parameter "container"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 98
    const v3, 0x7f040045

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 99
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0d010d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 100
    const v3, 0x7f0d0233

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    const v3, 0x7f0d00e9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    iput-object v3, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    .line 102
    const v3, 0x7f0d00e8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 103
    .local v1, newButton:Landroid/widget/ImageButton;
    const v3, 0x7f0d01a3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 104
    .local v0, menuButton:Landroid/widget/ImageButton;
    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 105
    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 107
    iget-object v3, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 108
    iget-object v3, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 109
    iget-object v3, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, v5}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 110
    iget-object v3, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->clearFocus()V

    .line 111
    iget-object v3, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const v4, 0x7f0a01ad

    invoke-virtual {p0, v4}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v3, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v4, Lcom/android/contacts/list/PostalAddressPickerFragment$1;

    invoke-direct {v4, p0}, Lcom/android/contacts/list/PostalAddressPickerFragment$1;-><init>(Lcom/android/contacts/list/PostalAddressPickerFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 146
    return-object v2
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .registers 5
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 90
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d00ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mListContainer:Landroid/view/View;

    .line 93
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d00ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mEmptyView:Landroid/view/View;

    .line 94
    return-void
.end method

.method protected onItemClick(IJ)V
    .registers 6
    .parameter "position"
    .parameter "id"

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_14

    .line 64
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/PostalAddressListAdapter;

    .line 65
    .local v0, adapter:Lcom/android/contacts/list/PostalAddressListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/PostalAddressListAdapter;->getDataUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/contacts/list/PostalAddressPickerFragment;->pickPostalAddress(Landroid/net/Uri;)V

    .line 70
    .end local v0           #adapter:Lcom/android/contacts/list/PostalAddressListAdapter;
    :goto_13
    return-void

    .line 67
    :cond_14
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;

    .line 68
    .local v0, adapter:Lcom/android/contacts/list/LegacyPostalAddressListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;->getContactMethodUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/contacts/list/PostalAddressPickerFragment;->pickPostalAddress(Landroid/net/Uri;)V

    goto :goto_13
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

    .line 152
    iget-boolean v2, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mEnabled:Z

    if-nez v2, :cond_9

    .line 223
    :cond_8
    :goto_8
    return-void

    .line 156
    :cond_9
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    .line 157
    .local v1, loaderId:I
    if-ne v1, v6, :cond_33

    .line 158
    iput v5, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mDirectoryListStatus:I

    .line 159
    iget-object v2, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeDirectories(Landroid/database/Cursor;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->startLoading()V

    .line 213
    :cond_19
    :goto_19
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_8

    .line 214
    if-nez v1, :cond_2b

    .line 215
    if-eqz p2, :cond_9a

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_9a

    .line 217
    iput-boolean v3, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mHasPhoneData:Z

    .line 221
    :cond_2b
    :goto_2b
    iget-boolean v2, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mHasPhoneData:Z

    if-nez v2, :cond_9d

    :goto_2f
    invoke-direct {p0, v3}, Lcom/android/contacts/list/PostalAddressPickerFragment;->configureEmptyView(Z)V

    goto :goto_8

    .line 164
    :cond_33
    invoke-virtual {p0, v1, p2}, Lcom/android/contacts/list/PostalAddressPickerFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 167
    if-eqz p2, :cond_6c

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_6c

    .line 168
    if-nez v1, :cond_69

    .line 170
    iput-boolean v3, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mHasPhoneSearchData:Z

    .line 185
    :goto_48
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getDirectorySearchMode()I

    move-result v0

    .line 186
    .local v0, directorySearchMode:I
    if-eqz v0, :cond_5c

    .line 187
    iget v2, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mDirectoryListStatus:I

    if-nez v2, :cond_74

    .line 188
    iput v3, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mDirectoryListStatus:I

    .line 189
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v6, v5, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 196
    :cond_5c
    :goto_5c
    iget-boolean v2, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mHasPhoneSearchData:Z

    if-nez v2, :cond_78

    iget-boolean v2, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mHasGalSearchData:Z

    if-nez v2, :cond_78

    move v2, v3

    :goto_65
    invoke-direct {p0, v2}, Lcom/android/contacts/list/PostalAddressPickerFragment;->configureEmptyView(Z)V

    goto :goto_19

    .line 172
    .end local v0           #directorySearchMode:I
    :cond_69
    iput-boolean v3, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mHasGalSearchData:Z

    goto :goto_48

    .line 176
    :cond_6c
    if-nez v1, :cond_71

    .line 177
    iput-boolean v4, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mHasPhoneSearchData:Z

    goto :goto_48

    .line 180
    :cond_71
    iput-boolean v4, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mHasGalSearchData:Z

    goto :goto_48

    .line 191
    .restart local v0       #directorySearchMode:I
    :cond_74
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->startLoading()V

    goto :goto_5c

    :cond_78
    move v2, v4

    .line 196
    goto :goto_65

    .line 198
    .end local v0           #directorySearchMode:I
    :cond_7a
    iput v4, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mDirectoryListStatus:I

    .line 199
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 202
    iget-boolean v2, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mFakeQueryModeEnabled:Z

    if-eqz v2, :cond_19

    .line 203
    iget v2, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mFakeQueryStatus:I

    if-ne v2, v3, :cond_91

    .line 204
    iput v5, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mFakeQueryStatus:I

    .line 205
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->startFullQuery()V

    goto :goto_19

    .line 206
    :cond_91
    iget v2, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mFakeQueryStatus:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_19

    .line 207
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mFakeQueryStatus:I

    goto :goto_19

    .line 219
    :cond_9a
    iput-boolean v4, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mHasPhoneData:Z

    goto :goto_2b

    :cond_9d
    move v3, v4

    .line 221
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
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/PostalAddressPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public setOnPostalAddressPickerActionListener(Lcom/android/contacts/list/OnPostalAddressPickerActionListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mListener:Lcom/android/contacts/list/OnPostalAddressPickerActionListener;

    .line 59
    return-void
.end method
