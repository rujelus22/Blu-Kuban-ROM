.class public Lcom/android/contacts/list/ContactPickerFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "ContactPickerFragment.java"

# interfaces
.implements Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">;",
        "Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;"
    }
.end annotation


# instance fields
.field private OnlyPhoneNumberProjection:Z

.field public mAttachPhotoMode:Z

.field private mCreateContactEnabled:Z

.field private mEditMode:Z

.field private mEmptyView:Landroid/view/View;

.field private mFinishActivityonCreateComplete:Z

.field protected mHasGalSearchData:Z

.field protected mHasPhoneData:Z

.field protected mHasPhoneSearchData:Z

.field private mListContainer:Landroid/view/View;

.field private mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

.field public mRingtoneMode:Z

.field protected mSearchView:Landroid/widget/SearchView;

.field private mShortcutRequested:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 60
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mAttachPhotoMode:Z

    .line 61
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mRingtoneMode:Z

    .line 70
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasPhoneData:Z

    .line 71
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasPhoneSearchData:Z

    .line 72
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasGalSearchData:Z

    .line 75
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setPhotoLoaderEnabled(Z)V

    .line 76
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 78
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setVisibleScrollbarEnabled(Z)V

    .line 79
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 81
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setQuickContactEnabled(Z)V

    .line 82
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactPickerFragment;->setDirectorySearchMode(I)V

    .line 84
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setSweepActionEnabled(Z)V

    .line 86
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setFinishActivityonCreateComplete(Z)V

    .line 88
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setFakeQueryModeEnabled(Z)V

    .line 90
    return-void
.end method

.method private configureEmptyView(Z)V
    .registers 6
    .parameter "isEmpty"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 193
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_c

    .line 199
    :cond_b
    :goto_b
    return-void

    .line 197
    :cond_c
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_1c

    move v0, v1

    :goto_11
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_1e

    :goto_18
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    :cond_1c
    move v0, v2

    .line 197
    goto :goto_11

    :cond_1e
    move v2, v1

    .line 198
    goto :goto_18
.end method


# virtual methods
.method protected configureAdapter()V
    .registers 3

    .prologue
    .line 272
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 274
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    .line 277
    .local v0, adapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->isCreateContactEnabled()Z

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x1

    :goto_e
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setEmptyListEnabled(Z)V

    .line 278
    return-void

    .line 277
    :cond_12
    const/4 v1, 0x0

    goto :goto_e
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 215
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_32

    .line 216
    new-instance v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 217
    .local v0, adapter:Lcom/android/contacts/list/DefaultContactListAdapter;
    const/4 v1, -0x2

    invoke-static {v1}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 219
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/DefaultContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 220
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/DefaultContactListAdapter;->setDisplayPhotos(Z)V

    .line 221
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/DefaultContactListAdapter;->setQuickContactEnabled(Z)V

    .line 223
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->OnlyPhoneNumberProjection:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setPhoneNumbersOnly(Z)V

    .line 225
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mRingtoneMode:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setRingToneMode(Z)V

    .line 226
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mAttachPhotoMode:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setAttachPhotoMode(Z)V

    .line 232
    .end local v0           #adapter:Lcom/android/contacts/list/DefaultContactListAdapter;
    :goto_31
    return-object v0

    .line 229
    :cond_32
    new-instance v0, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 230
    .local v0, adapter:Lcom/android/contacts/list/LegacyContactListAdapter;
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 231
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setDisplayPhotos(Z)V

    goto :goto_31
.end method

.method public createNewContact()V
    .registers 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFinishActivityonCreateComplete:Z

    invoke-interface {v0, v1}, Lcom/android/contacts/list/OnContactPickerActionListener;->onCreateNewContactAction(Z)V

    .line 203
    return-void
.end method

.method public editContact(Landroid/net/Uri;)V
    .registers 3
    .parameter "contactUri"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnContactPickerActionListener;->onEditContactAction(Landroid/net/Uri;)V

    .line 207
    return-void
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 359
    const v3, 0x7f04003c

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 360
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0d00e7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 361
    const v3, 0x7f0d00e9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    iput-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    .line 362
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 363
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 364
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->clearFocus()V

    .line 365
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const v4, 0x7f0a01ad

    invoke-virtual {p0, v4}, Lcom/android/contacts/list/ContactPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v4, Lcom/android/contacts/list/ContactPickerFragment$1;

    invoke-direct {v4, p0}, Lcom/android/contacts/list/ContactPickerFragment$1;-><init>(Lcom/android/contacts/list/ContactPickerFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 401
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    .line 402
    .local v0, actionCode:I
    const/16 v3, 0x64

    if-ne v0, v3, :cond_50

    .line 403
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 418
    :cond_50
    sparse-switch v0, :sswitch_data_7a

    .line 441
    :cond_53
    :goto_53
    return-object v2

    .line 420
    :sswitch_54
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v3

    if-nez v3, :cond_53

    .line 426
    :sswitch_5c
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getHideCreateLabel()Z

    move-result v3

    if-nez v3, :cond_53

    .line 430
    const v3, 0x7f0d00e8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 431
    .local v1, newButton:Landroid/widget/ImageButton;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 432
    new-instance v3, Lcom/android/contacts/list/ContactPickerFragment$2;

    invoke-direct {v3, p0}, Lcom/android/contacts/list/ContactPickerFragment$2;-><init>(Lcom/android/contacts/list/ContactPickerFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_53

    .line 418
    :sswitch_data_7a
    .sparse-switch
        0x46 -> :sswitch_54
        0x50 -> :sswitch_5c
    .end sparse-switch
.end method

.method public isCreateContactEnabled()Z
    .registers 2

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mCreateContactEnabled:Z

    return v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .registers 10
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    const-string v4, "ContactPickerFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreateLoader(id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v4, -0x1

    if-ne p1, v4, :cond_2e

    .line 241
    new-instance v2, Lcom/android/contacts/list/DirectoryListLoader;

    iget-object v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/contacts/list/DirectoryListLoader;-><init>(Landroid/content/Context;)V

    .line 242
    .local v2, loader:Lcom/android/contacts/list/DirectoryListLoader;
    iget-object v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->configureDirectoryLoader(Lcom/android/contacts/list/DirectoryListLoader;)V

    .line 266
    .end local v2           #loader:Lcom/android/contacts/list/DirectoryListLoader;
    :cond_2d
    :goto_2d
    return-object v2

    .line 246
    :cond_2e
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->createCursorLoader()Landroid/content/CursorLoader;

    move-result-object v2

    .line 247
    .local v2, loader:Landroid/content/CursorLoader;
    if-eqz p2, :cond_85

    const-string v4, "directoryId"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_85

    const-string v4, "directoryId"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 250
    .local v0, directoryId:J
    :goto_42
    iget-object v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4, v2, v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->configureLoader(Landroid/content/CursorLoader;J)V

    .line 253
    iget-boolean v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFakeQueryModeEnabled:Z

    if-eqz v4, :cond_2d

    .line 254
    iget v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFakeQueryStatus:I

    if-nez v4, :cond_2d

    .line 255
    iget-object v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v4

    if-nez v4, :cond_2d

    .line 256
    const-string v4, "ContactPickerFragment"

    const-string v5, "onCreateLoader(), set fake mode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFakeQueryStatus:I

    .line 259
    invoke-virtual {v2}, Landroid/content/CursorLoader;->getSortOrder()Ljava/lang/String;

    move-result-object v3

    .line 260
    .local v3, sortOrder:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " LIMIT "

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LIMIT 30"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 261
    invoke-virtual {v2, v3}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    goto :goto_2d

    .line 247
    .end local v0           #directoryId:J
    .end local v3           #sortOrder:Ljava/lang/String;
    :cond_85
    const-wide/16 v0, 0x0

    goto :goto_42
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .registers 5
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 154
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d00ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListContainer:Landroid/view/View;

    .line 156
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d00ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEmptyView:Landroid/view/View;

    .line 162
    return-void
.end method

.method protected onItemClick(IJ)V
    .registers 7
    .parameter "position"
    .parameter "id"

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 178
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {v2, p1}, Lcom/android/contacts/list/LegacyContactListAdapter;->getPersonUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 182
    .local v1, uri:Landroid/net/Uri;
    :goto_10
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEditMode:Z

    if-eqz v2, :cond_23

    .line 183
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->editContact(Landroid/net/Uri;)V

    .line 190
    :goto_17
    return-void

    .line 180
    .end local v1           #uri:Landroid/net/Uri;
    :cond_18
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v2, p1}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #uri:Landroid/net/Uri;
    goto :goto_10

    .line 184
    :cond_23
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mShortcutRequested:Z

    if-eqz v2, :cond_34

    .line 185
    new-instance v0, Lcom/android/contacts/list/ShortcutIntentBuilder;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/contacts/list/ShortcutIntentBuilder;-><init>(Landroid/content/Context;Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;)V

    .line 186
    .local v0, builder:Lcom/android/contacts/list/ShortcutIntentBuilder;
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ShortcutIntentBuilder;->createContactShortcutIntent(Landroid/net/Uri;)V

    goto :goto_17

    .line 188
    .end local v0           #builder:Lcom/android/contacts/list/ShortcutIntentBuilder;
    :cond_34
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->pickContact(Landroid/net/Uri;)V

    goto :goto_17
.end method

.method public onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V
    .registers 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, parent:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/ContactEntryListFragment;->onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V

    .line 172
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

    .line 283
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEnabled:Z

    if-nez v2, :cond_9

    .line 354
    :cond_8
    :goto_8
    return-void

    .line 287
    :cond_9
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    .line 288
    .local v1, loaderId:I
    if-ne v1, v6, :cond_33

    .line 289
    iput v5, p0, Lcom/android/contacts/list/ContactPickerFragment;->mDirectoryListStatus:I

    .line 290
    iget-object v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeDirectories(Landroid/database/Cursor;)V

    .line 291
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->startLoading()V

    .line 344
    :cond_19
    :goto_19
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_8

    .line 345
    if-nez v1, :cond_2b

    .line 346
    if-eqz p2, :cond_9a

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_9a

    .line 348
    iput-boolean v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasPhoneData:Z

    .line 352
    :cond_2b
    :goto_2b
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasPhoneData:Z

    if-nez v2, :cond_9d

    :goto_2f
    invoke-direct {p0, v3}, Lcom/android/contacts/list/ContactPickerFragment;->configureEmptyView(Z)V

    goto :goto_8

    .line 295
    :cond_33
    invoke-virtual {p0, v1, p2}, Lcom/android/contacts/list/ContactPickerFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    .line 296
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 298
    if-eqz p2, :cond_6c

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_6c

    .line 299
    if-nez v1, :cond_69

    .line 301
    iput-boolean v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasPhoneSearchData:Z

    .line 316
    :goto_48
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getDirectorySearchMode()I

    move-result v0

    .line 317
    .local v0, directorySearchMode:I
    if-eqz v0, :cond_5c

    .line 318
    iget v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mDirectoryListStatus:I

    if-nez v2, :cond_74

    .line 319
    iput v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mDirectoryListStatus:I

    .line 320
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v6, v5, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 327
    :cond_5c
    :goto_5c
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasPhoneSearchData:Z

    if-nez v2, :cond_78

    iget-boolean v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasGalSearchData:Z

    if-nez v2, :cond_78

    move v2, v3

    :goto_65
    invoke-direct {p0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->configureEmptyView(Z)V

    goto :goto_19

    .line 303
    .end local v0           #directorySearchMode:I
    :cond_69
    iput-boolean v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasGalSearchData:Z

    goto :goto_48

    .line 307
    :cond_6c
    if-nez v1, :cond_71

    .line 308
    iput-boolean v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasPhoneSearchData:Z

    goto :goto_48

    .line 311
    :cond_71
    iput-boolean v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasGalSearchData:Z

    goto :goto_48

    .line 322
    .restart local v0       #directorySearchMode:I
    :cond_74
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->startLoading()V

    goto :goto_5c

    :cond_78
    move v2, v4

    .line 327
    goto :goto_65

    .line 329
    .end local v0           #directorySearchMode:I
    :cond_7a
    iput v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mDirectoryListStatus:I

    .line 330
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 333
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFakeQueryModeEnabled:Z

    if-eqz v2, :cond_19

    .line 334
    iget v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFakeQueryStatus:I

    if-ne v2, v3, :cond_91

    .line 335
    iput v5, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFakeQueryStatus:I

    .line 336
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->startFullQuery()V

    goto :goto_19

    .line 337
    :cond_91
    iget v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFakeQueryStatus:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_19

    .line 338
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFakeQueryStatus:I

    goto :goto_19

    .line 350
    :cond_9a
    iput-boolean v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasPhoneData:Z

    goto :goto_2b

    :cond_9d
    move v3, v4

    .line 352
    goto :goto_2f
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onPickerResult(Landroid/content/Intent;)V
    .registers 4
    .parameter "data"

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/contacts/list/OnContactPickerActionListener;->onPickContactAction(Landroid/net/Uri;)V

    .line 475
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 132
    const-string v0, "editMode"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEditMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 133
    const-string v0, "createContactEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mCreateContactEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 134
    const-string v0, "shortcutRequested"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mShortcutRequested:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 135
    const-string v0, "onlyphonnumberprojection"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->OnlyPhoneNumberProjection:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 136
    return-void
.end method

.method public onShortcutIntentCreated(Landroid/net/Uri;Landroid/content/Intent;)V
    .registers 4
    .parameter "uri"
    .parameter "shortcutIntent"

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    invoke-interface {v0, p2}, Lcom/android/contacts/list/OnContactPickerActionListener;->onShortcutIntentCreated(Landroid/content/Intent;)V

    .line 470
    return-void
.end method

.method public pickContact(Landroid/net/Uri;)V
    .registers 3
    .parameter "uri"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnContactPickerActionListener;->onPickContactAction(Landroid/net/Uri;)V

    .line 211
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedState"

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 142
    if-nez p1, :cond_6

    .line 150
    :goto_5
    return-void

    .line 146
    :cond_6
    const-string v0, "editMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEditMode:Z

    .line 147
    const-string v0, "createContactEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mCreateContactEnabled:Z

    .line 148
    const-string v0, "shortcutRequested"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mShortcutRequested:Z

    .line 149
    const-string v0, "onlyphonnumberprojection"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->OnlyPhoneNumberProjection:Z

    goto :goto_5
.end method

.method public setAttachPhotoMode(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 482
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mAttachPhotoMode:Z

    .line 483
    return-void
.end method

.method public setCreateContactEnabled(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mCreateContactEnabled:Z

    .line 102
    return-void
.end method

.method public setEditMode(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEditMode:Z

    .line 110
    return-void
.end method

.method public setFinishActivityonCreateComplete(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFinishActivityonCreateComplete:Z

    .line 122
    return-void
.end method

.method public setOnContactPickerActionListener(Lcom/android/contacts/list/OnContactPickerActionListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    .line 94
    return-void
.end method

.method public setOnlyPhoneNumberProjection(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->OnlyPhoneNumberProjection:Z

    .line 127
    return-void
.end method

.method public setRingToneMode(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 478
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mRingtoneMode:Z

    .line 479
    return-void
.end method

.method public setShortcutRequested(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mShortcutRequested:Z

    .line 118
    return-void
.end method
